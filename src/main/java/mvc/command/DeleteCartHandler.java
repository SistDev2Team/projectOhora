package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import ohora.domain.ProductDTO;
import ohora.persistence.CartDAO;
import ohora.persistence.CartDAOImpl;

public class DeleteCartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DeleteCartHandler process..");
		int userPk = 0;
        HttpSession session = request.getSession();
        if (session.getAttribute("userPk") != null) {
           userPk = (int) session.getAttribute("userPk");
        }
        String auth = "auth";
		int pdtId = Integer.parseInt(request.getParameter("pdtId"));
		ArrayList<ProductDTO> cartItems = new ArrayList<>();
		
		Connection conn = ConnectionProvider.getConnection();
		CartDAO dao = new CartDAOImpl(conn);
		
		try {
			dao.deleteCart(userPk, pdtId);
			cartItems = dao.getCartItems(userPk);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}

    	request.setAttribute("cartItems", cartItems);
    	request.setAttribute("auth", auth);
    	
        return "/ohora/iscart.jsp";
	}

}
