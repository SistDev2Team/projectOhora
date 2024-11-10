package mvc.command;

import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import net.sf.json.JSONObject;
import ohora.persistence.CartDAO;
import ohora.persistence.CartDAOImpl;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class AddCartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("AddCartHandler process..");
        
        int userPk = Integer.parseInt(request.getParameter("userPk"));
        int pdtId = Integer.parseInt(request.getParameter("pdtId"));
        int insertedCount = 0;
        int cartListCount = 0;
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        JSONObject jsonResponse = new JSONObject();
        
        Connection conn = ConnectionProvider.getConnection();
		CartDAO dao = new CartDAOImpl(conn);

		try {
			insertedCount = dao.addToCart(userPk, pdtId);
			if (insertedCount > 0) {
				cartListCount = dao.getCartListCount(userPk);
	            jsonResponse.put("status", "success");
	            jsonResponse.put("count", cartListCount);
            } else {
                 jsonResponse.put("status", "fail");
                 jsonResponse.put("message", "insert 실패");
            }
		} catch (Exception e) {
			e.printStackTrace();
			jsonResponse.put("status", "error");
            jsonResponse.put("message", "에러 발생");
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
