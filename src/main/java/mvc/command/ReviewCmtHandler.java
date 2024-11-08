package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import com.util.ConnectionProvider;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONBuilder;
import ohora.domain.CommentDTO;
import ohora.domain.ReviewDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class ReviewCmtHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println("댓글보기 핸들러 진입 완료");
		int revId= Integer.parseInt(request.getParameter("revId")) ; 
		System.out.println("넘어온 리뷰 ID >> " + revId);
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		JSONObject list = null;

		
		try {
			list = dao.selectComment(conn, revId);			
			
			System.out.println("돌아온 list => "+ list.toString());

	        return list.toString(); // 최종 JSON 문자열 반환

		} catch (Exception e) {
			e.printStackTrace(); 
			System.out.println("리뷰 댓글 dao 진입 실패");
		} finally {
			conn.close();
		}
		

		
		return null;
	}

}
