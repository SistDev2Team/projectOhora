package mvc.command;

import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import net.sf.json.JSONObject;
import ohora.persistence.CartDAO;
import ohora.persistence.CartDAOImpl;

public class CheckCartHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		System.out.println("CheckCartHandler process..");
        
        int userPk = Integer.parseInt(request.getParameter("userPk"));
        int pdtId = Integer.parseInt(request.getParameter("pdtId"));
        
        System.out.println("userId : " + userPk);
        System.out.println("pdtId : " + pdtId);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        JSONObject jsonResponse = new JSONObject();
		
        Connection conn = ConnectionProvider.getConnection();
		CartDAO dao = new CartDAOImpl(conn);
		int count = 0;
		
		try {
			count = dao.checkCart(userPk, pdtId);
			System.out.println("checkCart 함수 실행 count: " + count);
			if (count > 0) {
				jsonResponse.put("status", "ishold");
			} else {
				jsonResponse.put("status", "empty");
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
