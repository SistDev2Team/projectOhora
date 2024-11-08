package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.ProductDTO;
import ohora.domain.RevMedia;
import ohora.domain.ReviewDTO;
import ohora.domain.ReviewPaging;
import ohora.domain.ReviewRating;
import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class ReviewlistHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    System.out.println("ReviewList Handler...");
	    
	    int pdt_id = Integer.parseInt(request.getParameter("pdt_id"));
	    String sort = request.getParameter("sort") != null ? request.getParameter("sort") : "recommend";
	    //String mediafirst = request.getParameter("mediafirst") != null ? request.getParameter("phototoggle") : "off";

	    System.out.println("핸들러 넘어온 pdt_id :" + pdt_id);
	    System.out.println("핸들러 넘어온 sort :" + sort);


	    Connection conn = ConnectionProvider.getConnection();
	    OhoraDAO dao = new OhoraDAOImpl(conn);

	    ArrayList<ReviewDTO> list = null;
	    ArrayList<ReviewDTO> mediaCnt = null;
	    ArrayList<RevMedia> photos = null;
	    ReviewRating rating = null ;
	    ReviewPaging reviewPage = null;

	    
	    
	    try {
	        list = dao.select(conn, pdt_id, sort );
	        mediaCnt = dao.midiaCount(conn, pdt_id);
	        photos = dao.selectPhotos(conn, pdt_id);
	        rating = dao.ratingAVG(conn, pdt_id);
//	        reviewPage = dao.rvPaging(conn, pdt_id);
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("리뷰 dao 진입 실패");
	    } finally {
	        if (conn != null) {
	            conn.close();
	        }
	    }

	    System.out.println(list);
	    request.setAttribute("list", list);
	    request.setAttribute("mediaCnt", mediaCnt);
	    request.setAttribute("photos", photos);
	    request.setAttribute("rating", rating);

	    return "/ohora/oho_review.jsp";
	}
}
