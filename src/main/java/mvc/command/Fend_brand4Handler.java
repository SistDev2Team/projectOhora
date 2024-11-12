package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Fend_brand4Handler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("Fend_brand4 Handler . . . ");
		
		return "/ohora/board/ohora_Fend_brand4.jsp";
	}

}
