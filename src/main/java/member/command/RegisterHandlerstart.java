package member.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class RegisterHandlerstart implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/join.jsp");
		dispatcher.forward(request, response);
		return null;			
	}
}
