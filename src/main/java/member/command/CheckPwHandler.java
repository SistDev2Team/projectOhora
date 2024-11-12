package member.command;

 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class CheckPwHandler implements CommandHandler{

	@Override public String process(HttpServletRequest request,
	    
	    HttpServletResponse response) throws Exception { // 사용자 인증 관련 처리 String
		
		
		String userId = request.getParameter("userId");
		
		System.out.println("CheckPwHandler 핸들러로 userId : " + userId);

		request.setAttribute("userId", userId);

		return "/ohora/changePw.jsp"; 
	}  
}

