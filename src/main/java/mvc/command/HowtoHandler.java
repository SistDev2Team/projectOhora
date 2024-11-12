package mvc.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HowtoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Howto Handler..");

		String howto = request.getParameter("howto");

		 // how to
        if ("main".equals(howto) ) {
            System.out.println("howto 진입완료");
            return "/ohora/howto/howto.jsp";
        }      
        else if ("1".equals(howto) ) {
            System.out.println("howto01 진입완료");
            return "/ohora/howto/howto_detail01.jsp";
        }      
        else if ("2".equals(howto) ) {
            System.out.println("howto02 진입완료");
            return "/ohora/howto/howto_detail02.jsp";
        }      
        else if ("3".equals(howto) ) {
            System.out.println("howto03 진입완료");
            return "/ohora/howto/howto_detail03.jsp";
        }      
        else if ("4".equals(howto) ) {
            System.out.println("howto04 진입완료");
            return "/ohora/howto/howto_detail04.jsp";
        }      
        else if ("5".equals(howto) ) {
            System.out.println("howto05 진입완료");
            return "/ohora/howto/howto_detail05.jsp";
        }   
        else if ("6".equals(howto) ) {
            System.out.println("howto06 진입완료");
            return "/ohora/howto/howto_detail06.jsp";
        }      
        else if ("7".equals(howto) ) {
            System.out.println("howto07 진입완료");
            return "/ohora/howto/howto_detail07.jsp";
        }      
        else if ("8".equals(howto) ) {
            System.out.println("howto08 진입완료");
            return "/ohora/howto/howto_detail08.jsp";
        }      
        else if ("9".equals(howto) ) {
            System.out.println("howto09 진입완료");
            return "/ohora/howto/howto_detail09.jsp";
        }      
        else if ("10".equals(howto) ) {
            System.out.println("howto10 진입완료");
            return "/ohora/howto/howto_detail10.jsp";
        }  
		
		return null;
	}

}
