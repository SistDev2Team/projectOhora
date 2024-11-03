package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.PagingVO;
import ohora.domain.ProductDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class DetailHandler implements CommandHandler{
	
	int pdt_id = 0;					// 상품 ID
	int cat_id;					// 카테고리 ID
	int scat_id;				// 하위카테고리 ID
	int pdt_number;				// 옵션갯수
	String pdt_name;			// 상품명
	int pdt_amount;				// 상품가격
	int pdt_discount_rate;		// 할인율
	String pdt_img_url;			// 이미지경로
	int pdt_count = 0;				// 재고수량
	int pdt_review_count = 0;		// 리뷰 수
	int pdt_sales_count = 0;		// 판매 수량
	Date pdt_adddate;			// 상품 등록일
	int pdt_viewcount = 0;			// 조회수
	
	int pdt_discount_amount;
	
	int categoryNumber = 0;		// 상품을 구분하는 번호 ( 신상품, 인기상품, 전체상품, 카테고리별  등등 )
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Detail Handler..");
		
		try {
			this.pdt_id = Integer.parseInt(request.getParameter("pdt_id"));
			
		} catch (Exception e) {
			this.pdt_id = 0;
		}
		
		try {
			this.categoryNumber = Integer.parseInt(request.getParameter("cate_no"));		
		} catch (Exception e) {
			this.categoryNumber = 0;
		}
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		ProductDTO pdtDetail = null;

		try {
			pdtDetail = dao.prdDetail(this.pdt_id);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		
		request.setAttribute("pdtDetail", pdtDetail);
		
		String path = "/ohora/prd_detail_view.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		
		return "/ohora/prd_detail_view.jsp";
	}

}
