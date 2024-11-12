package member.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.command.CommandHandler;

public class LoginHandlerstart implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		
		HttpSession session = httpRequest.getSession();
		
		String referer = httpRequest.getHeader("Referer"); // 보고있던 페이지를 요청

		System.out.println("Referer 확인! " + referer);

		// originalUrl이 세션에 없는 경우에만		
		if (session.getAttribute("originalUrl") == null) {
			if (referer != null 
					&& !referer.contains("login") 
					&& !referer.contains("changePw.jsp") 
					&& !referer.contains("findId") 
					&& !referer.contains("register")) {
				
				// originalUrl을 referer로 설정
				session.setAttribute("originalUrl", referer);
				System.out.println("LoginHandlerstart에서 생성된 originalUrl: " + session.getAttribute("originalUrl"));
				
			} else { // 인증필터에서 생성되었을 때랑 위의 contains 경로에 잡혔을 때
				
				session.setAttribute("originalUrl", request.getContextPath() + "/ohora/main.do");
			}
		}

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/login.jsp");
		dispatcher.forward(request, response);

		return null;
	}
}
