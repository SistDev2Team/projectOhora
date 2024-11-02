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
        
        // 로그인 url
        String mainUrl = httpRequest.getContextPath() + "/ohora/oho_main.jsp?error=logout";
                 
        
		/* String requestURI = httpRequest.getRequestURI(); */
        
        //세션,로그인 상태 확인
        HttpSession session = httpRequest.getSession(false);
        //로그인 했을때 
        boolean logon = (session != null) && (session.getAttribute("UserPk") != null);
        
        // 임시로 로그아웃 처리 할거  http://localhost:8011/projectOhora/ohora/oho_mypage.jsp?logout=true
        if ("true".equals(httpRequest.getParameter("logout"))) {
            if (session != null) {
                session.invalidate(); // 세션 버리기
                System.out.println("AuthenticationFilter - 로그아웃!");
            }
            httpResponse.sendRedirect(mainUrl);
            return;
        }
        
        
        // 확인용임       
        System.out.println("AuthenticationFilter - 세션에 저장된 UserPk: " + 
        		(session != null ? session.getAttribute("UserPk") : "세션 없음"));     

        //로그인 검사
        if (logon) {
            chain.doFilter(request, response);
        } else {
            httpResponse.sendRedirect(mainUrl);
        }
    }

    @Override
    public void destroy() {
    	System.out.println("> AuthenticationFilter.destroy()...");
    }
}