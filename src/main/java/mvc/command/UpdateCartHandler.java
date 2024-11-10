package mvc.command;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import net.sf.json.JSONObject;
import ohora.persistence.CartDAO;
import ohora.persistence.CartDAOImpl;

public class UpdateCartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Update CartHandler process..");
        
        int userPk = Integer.parseInt(request.getParameter("userPk"));
        int pdtId = Integer.parseInt(request.getParameter("pdtId"));
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        JSONObject jsonResponse = new JSONObject();
		
        Connection conn = ConnectionProvider.getConnection();
		CartDAO dao = new CartDAOImpl(conn);
		boolean success = false;
		
		try {
			success = dao.updateCart(userPk, pdtId);
			if (success) {
				jsonResponse.put("status", "success");
			} else {
				jsonResponse.put("status", "fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		
		try (PrintWriter out = response.getWriter()) {
            out.print(jsonResponse);
            out.flush();
        }
        
		return null;
	}

}
