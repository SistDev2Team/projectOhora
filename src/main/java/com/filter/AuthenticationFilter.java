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
        
        // main url
        // String mainUrl = httpRequest.getContextPath() + "/ohora/oho_main.jsp";
        // login url
        String loginUrl = httpRequest.getContextPath() + "/ohora/login.jsp";
                       
        
        //세션,로그인 상태 확인
        HttpSession session = httpRequest.getSession(false);
        //로그인 했을때 
        boolean logon = (session != null) && (session.getAttribute("userPk") != null);             
        
        // 확인용임       
        System.out.println("AuthenticationFilter - 세션에 저장된 userPk: " + 
        		(session != null ? session.getAttribute("userPk") : "세션 없음"));     

        //로그인 검사
        if (logon) {
            chain.doFilter(request, response); // 로그인 되어있다면 문제 될께 없어
        } else {      	

        	// 안 되어있을 때       	
        	String referer = httpRequest.getRequestURI();
        	
        	// 그럼 세션에 원래 url을 저장 해 둬야 겠지?
            if (referer != null) {
                httpRequest.getSession(true).setAttribute("originalUrl", referer);
            }
            // 그럼 여기서 이제 세션을 가진채로 loginUrl로 보내주면 돼.
            httpResponse.sendRedirect(loginUrl);
        }
    }

    @Override
    public void destroy() {
    	System.out.println("> AuthenticationFilter.destroy()...");
    }
}




