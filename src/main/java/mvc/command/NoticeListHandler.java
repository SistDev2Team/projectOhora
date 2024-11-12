package mvc.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.NoticeDTO;
import ohora.persistence.NoticeDAO;
import ohora.persistence.NoticeDAOImpl;

public class NoticeListHandler implements CommandHandler {

	int currentPage = 1;				// 현재 페이지 번호
	int numberPerPage = 12;				// 한 페이지에 출력할 게시글 수
	int numberOfPageBlock = 10;			// [1] 2 3 4 5 6 7 8 9 10 >
	int totalRecords = 0;				// 총 레코드 수
	int totalPages = 0;					// 총 페이지 수
	int categoryNumber = 0;
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardNoticeListHandler..");
		// 수업 자료 게시판 목록  핸들러.. 
		try {
			this.currentPage = Integer.parseInt(request.getParameter("currentPage"));			
		} catch (Exception e) {
			this.currentPage = 1;
		}
		
		try {
			this.categoryNumber = Integer.parseInt(request.getParameter("cate_no"));		
		} catch (Exception e) {
			this.categoryNumber = 0;
		}
		
		// 검색어 파라미터 추가
	    String searchWord = request.getParameter("searchWord");
	    if (searchWord == null) {
	        searchWord = "";
	    }			
		
	    String searchKey = request.getParameter("search_key");
	    if (searchKey == null) {
	        searchKey = "subject"; // 기본값 설정: 제목 검색
	    }
	    
		try (Connection conn = ConnectionProvider.getConnection()) {
	            NoticeDAO dao = new NoticeDAOImpl(conn);
	            
	            
	            
	            // 총 레코드 수와 총 페이지 수 계산
	            //this.totalRecords = dao.getTotalRecords();
	            this.totalPages = (int) Math.ceil((double) totalRecords / numberPerPage);

	            // 페이징 리스트 조회
	            //ArrayList<NoticeDTO> list = dao.select(this.currentPage, this.numberPerPage);
	            ArrayList<NoticeDTO> list;
	            if (searchWord.isEmpty()) {
	                list = dao.select(this.currentPage, this.numberPerPage);
	            } else {
	                list = dao.searchList(currentPage, numberPerPage, searchKey, searchWord);
	            }	            
	            
	            Map<String, Integer> pagination = dao.calculatePageBlock(currentPage, totalRecords, numberPerPage, numberOfPageBlock);

	            // 검색어가 있는 경우와 없는 경우에 따라 총 레코드 수를 계산
	            if (searchWord.isEmpty()) {
	                this.totalRecords = dao.getTotalRecords();
	            } else {
	                this.totalRecords = dao.getTotalRecords(searchKey, searchWord);
	            }
	            
	            //System.out.println("List data: " + list);
	            //System.out.println("Pagination data: " + pagination);
	            
	            // 데이터를 request에 설정
	            request.setAttribute("list", list);
	            request.setAttribute("pagination", pagination);
	            request.setAttribute("searchWord", searchWord);
	            request.setAttribute("searchKey", searchKey);
	            

	        } catch (Exception e) {
	            e.printStackTrace();
	            // 필요한 경우, 예외에 대한 사용자 알림 등을 추가
	            
	        }
		
		return "/ohora/board/notice_list.jsp";
	}
	
	

}
