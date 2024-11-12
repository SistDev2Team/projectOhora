package member.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class UserRegisterHandlerstart implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/oho_signUpForm.jsp");
		
		dispatcher.forward(request, response);
		
		return null;
	}

}
