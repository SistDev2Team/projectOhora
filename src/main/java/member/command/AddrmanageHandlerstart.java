package member.command;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.domain.AddrDTO;
import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class AddrmanageHandlerstart implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/*
		 * HttpSession session = request.getSession(); int userPk = (int)
		 * session.getAttribute("userPk");
		 */
	    
	    System.out.println("주소록 등록 페이지 접근!");
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/addr_manage.jsp");
		dispatcher.forward(request, response);
		return null;
	}

}
