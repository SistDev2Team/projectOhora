package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.DeptVO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class ExampleHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Example Handler process...");
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		ArrayList<DeptVO> list = null;
		
		try {
			list = dao.selectTest();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		// list.forEach(dvo -> {System.out.println(dvo);});
		
		// Forwarding Test
		request.setAttribute("list", list);
		
		
		// GET, POST 구분 시에 아래 사용
		/*
		String method = request.getMethod();	// GET  || POST
		if (method.equals("GET")) {		//GET
		
		} else {			// POST
			
		}
		*/
		
		String path = "/example/test.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		
		return "/example/test.jsp";
	}
	
}
