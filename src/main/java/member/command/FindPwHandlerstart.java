package member.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class FindPwHandlerstart implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		 System.out.println("비밀번호 찾기 시작!");
		
		 RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/FindPw.jsp");
		 
         dispatcher.forward(request, response);
		
		 return null;
	}

}//class
