package mvc.command;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import net.sf.json.JSONObject;
import ohora.persistence.CartDAO;
import ohora.persistence.CartDAOImpl;

public class InitCartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("InitCartHandler process..");
        
        int userPk = Integer.parseInt(request.getParameter("userPk"));
        int count = 0;
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        JSONObject jsonResponse = new JSONObject();
        
        Connection conn = ConnectionProvider.getConnection();
		CartDAO dao = new CartDAOImpl(conn);
		
		try {
			count = dao.getCartListCount(userPk);
            jsonResponse.put("count", count);
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
