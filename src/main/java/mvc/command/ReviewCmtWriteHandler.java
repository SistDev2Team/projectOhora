package mvc.command;

import java.sql.Connection;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import net.sf.json.JSONObject;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class ReviewCmtWriteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 	
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println("댓글작성 핸들러 진입 완료");
		
		int revId= Integer.parseInt(request.getParameter("revId")) ; 
		int userId= Integer.parseInt(request.getParameter("userId")) ; 
		String comment= request.getParameter("comment") ; 
		Date writedate = new Date();

		
		System.out.println("넘어온 리뷰 ID >> " + revId + "넘어온 리뷰 userID >> " + userId + "넘어온 코멘트 >>" + comment +"넘어온 날짜 >>" + writedate);
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		int rowCount= 0;
		
		try {
			rowCount = dao.insertComment(conn, revId , userId, comment, writedate);			
			
			System.out.println("댓글 작성 로카운트 : " + rowCount);


		} catch (Exception e) {
			e.printStackTrace(); 
			System.out.println("리뷰 댓글 dao 진입 실패");
		} finally {
			conn.close();
		}
		
		
		return null;
	}

}
