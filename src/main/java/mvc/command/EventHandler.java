package mvc.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EventHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Event Handler..");

		String event = request.getParameter("_");
		
	    if ("index".equals(event) ) {
	        System.out.println("event 진입완료");
	        return "/ohora/event/event_index.jsp";
	    }      
	    else if ("dazedayz_2".equals(event) ) {
	        return "/ohora/event/event_dazedayz_2.jsp";
	    }      
	    else if ("event6".equals(event) ) {
	        return "/ohora/event/event_event6.jsp";
	    }      
	    else if ("eventchoa".equals(event) ) {
	        return "/ohora/event/event_eventchoa.jsp";
	    }      
	    else if ("gelnailtip".equals(event) ) {
	        return "/ohora/event/event_gelnailtip.jsp";
	    }      
	    else if ("lesserafim".equals(event) ) {
	        return "/ohora/event/event_lesserafim.jsp";
	    }      
	    else if ("vipgift06".equals(event) ) {
	        return "/ohora/event/event_vipgift06.jsp";
	    }      
	    else if ("vipgift07".equals(event) ) {
	        return "/ohora/event/event_vipgift07.jsp";
	    }      
	    else if ("vipgift08".equals(event) ) {
	        return "/ohora/event/event_vipgift08.jsp";
	    }
	return null;
	}
}
