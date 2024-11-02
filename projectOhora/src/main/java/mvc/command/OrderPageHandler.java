package mvc.command;

import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.UserDTO;
import ohora.persistence.OrderDAO;
import ohora.persistence.OrderDAOImpl;

public class OrderPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("OrderPageHandler process..");
		// userId = 1001;
		int userId = 1001;
		
		Connection conn = ConnectionProvider.getConnection();
		OrderDAO dao = new OrderDAOImpl(conn);
		UserDTO userDTO = null;
		String[] emailArr = null;
		String[] telArr = null;
		
		try {
			userDTO = dao.selectUserInfo(userId);
			emailArr = userDTO.getUser_email().split("@");
			telArr = userDTO.getUser_tel().split("-");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}

		request.setAttribute("userDTO", userDTO);
		request.setAttribute("emailArr", emailArr);
		request.setAttribute("telArr", telArr);
		String path = "/ohora/member_order.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		
		return "/ohora/member_order.jsp";
	}
	
}
