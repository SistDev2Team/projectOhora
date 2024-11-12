package com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("> AuthenticationFilter init()...");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        System.out.println("> AuthenticationFilter.doFilter()...");

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
       
        String loginUrl = httpRequest.getContextPath() + "/loginHandlerstart.do";

        // 세션과 로그인 상태 확인
        HttpSession session = httpRequest.getSession(false);
        boolean logon = (session != null) && (session.getAttribute("userPk") != null);

        System.out.println("AuthenticationFilter - 세션에 저장된 userPk: " + 
            (session != null ? session.getAttribute("userPk") : "세션 없음"));          
        if (logon) {
            chain.doFilter(request, response); 
        } else { // 로그인 안됐음                 
            String referer = httpRequest.getRequestURI(); // 접근 요청한 페이지 저장         
            System.out.println("인증필터 referer " + referer);
            if (referer != null) {               
                if (session != null) {                  	
                    session.setAttribute("originalUrl", referer);                   
                    System.out.println("AuthenticationFilter에서 생성된 originalUrl " + referer);                   
                } else { // 이렇게 까지 해줘야되나? 없으면 생성              	
                    httpRequest.getSession(true).setAttribute("originalUrl", referer);                   
                    System.out.println("AuthenticationFilter에서 생성된 originalUrl " + referer);                    
                }
            }
            // 로그인 페이지로 리다이렉트
            httpResponse.sendRedirect(loginUrl);
        }
    }

    @Override
    public void destroy() {
        System.out.println("> AuthenticationFilter.destroy()...");
    }
}




