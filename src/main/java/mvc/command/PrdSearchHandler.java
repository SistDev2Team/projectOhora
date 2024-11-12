package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import ohora.domain.PagingVO;
import ohora.domain.ProductDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class PrdSearchHandler implements CommandHandler{
	
	int currentPage = 1;				// 현재 페이지 번호
	int numberPerPage = 39;				// 한 페이지에 출력할 게시글 수
	int numberOfPageBlock = 10;			// [1] 2 3 4 5 6 7 8 9 10 >
	int totalRecords = 0;				// 총 레코드 수
	int totalPages = 0;					// 총 페이지 수
	String searchWord  = null;  		// 검색어
	
	
	int first=1;
	int prev;
	int next;
	int last;

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Search Handler..");

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
		
		try {
			this.currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		} catch (Exception e) {
			this.currentPage = 1;
		}
		
		try {
			this.searchWord = request.getParameter("keyword");		
		} catch (Exception e) {
			this.searchWord = null;
		}
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		ArrayList<ProductDTO> list = null;
		
		PagingVO pvo = null;
		
		try {
				pvo = new PagingVO(currentPage, numberPerPage, numberOfPageBlock, searchWord);
				list = dao.prdSearch(searchWord, currentPage, numberPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				conn.close();
			}
				
				request.setAttribute("list", list);
				request.setAttribute("pvo", pvo);
				
				String path = "/ohora/prd_search.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				
				return "/ohora/prd_search.jsp";
				
		}
}