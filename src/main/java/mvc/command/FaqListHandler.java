package mvc.command;

import java.sql.Connection;
import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.FaqDTO;
import ohora.persistence.FaqDAO;
import ohora.persistence.FaqDAOImpl;
public class FaqListHandler implements CommandHandler {

	int currentPage = 1;				// 현재 페이지 번호
	int numberPerPage = 10;				// 한 페이지에 출력할 게시글 수
	int numberOfPageBlock = 10;			// [1] 2 3 4 5 6 7 8 9 10 >
	int totalRecords = 0;				// 총 레코드 수
	int totalPages = 0;					// 총 페이지 수
	//int categoryNumber = 0;
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardNoticeListHandler..");
		// 수업 자료 게시판 목록  핸들러.. 
		 // 현재 페이지 번호 가져오기
        try {
            this.currentPage = Integer.parseInt(request.getParameter("currentPage"));            
        } catch (Exception e) {
            this.currentPage = 1;
        }
        
        // 검색어와 카테고리 파라미터 처리
        String searchWord = request.getParameter("searchWord");
        if (searchWord == null) searchWord = "";
        
        String searchKey = request.getParameter("search_key");
        if (searchKey == null) searchKey = "title";	//검색조건 제목으로만 설정 
        
        String category = request.getParameter("category");
        if (category == null) category = "all";

        try (Connection conn = ConnectionProvider.getConnection()) {
            FaqDAO dao = new FaqDAOImpl(conn);

            List<FaqDTO> list;
            if (searchWord.isEmpty()) {
                // 검색어가 없을 경우 일반 리스트
                list = dao.select(this.currentPage, this.numberPerPage);
            } else {
                // 검색 조건과 검색어로 검색
                list = dao.searchListByCondition(this.currentPage, this.numberPerPage, searchKey, searchWord);
            }
            
            this.totalRecords = dao.getTotalRecords(searchKey, searchWord);
            this.totalPages = (int) Math.ceil((double) totalRecords / numberPerPage);
            

            // 상단 고정 글과 일반 글 리스트 가져오기
            List<FaqDTO> pinnedList = dao.getPinnedList(conn,1);
            
            if (category.equals("all")) {
                list = searchWord.isEmpty()
                        ? dao.select(this.currentPage, this.numberPerPage)
                        : dao.searchList(currentPage, numberPerPage, searchKey, searchWord);
            } else {
                list = searchWord.isEmpty()
                        ? dao.selectByCategory(this.currentPage, this.numberPerPage, category)
                        : dao.searchListByCategory(currentPage, numberPerPage, searchKey, searchWord, category);
            }
            
            // 총 레코드 수와 페이징 계산
            if (category.equals("all")) {
                this.totalRecords = searchWord.isEmpty()
                        ? dao.getTotalRecords()
                        : dao.getTotalRecords(searchKey, searchWord);
            } else {
                this.totalRecords = searchWord.isEmpty()
                        ? dao.getTotalRecordsByCategory(category)
                        : dao.getTotalRecords(searchKey, searchWord, category);
            }
            
            this.totalPages = (int) Math.ceil((double) totalRecords / numberPerPage);
            
            List<FaqDTO> normalList = dao.getNormalList(conn, category, currentPage, numberPerPage);
            if (normalList.isEmpty()) {
                System.out.println("Normal List is empty for category: " + category);
            } else {
                System.out.println("Normal List contains data: " + normalList);
            }
            if (category.equals("all")) {
                this.totalRecords = searchWord.isEmpty()
                        ? dao.getTotalRecords()
                        : dao.getTotalRecords(searchKey, searchWord);
            } else {
                this.totalRecords = searchWord.isEmpty()
                        ? dao.getTotalRecordsByCategory(category)
                        : dao.getTotalRecords(searchKey, searchWord, category);
            }
            
            this.totalPages = (int) Math.ceil((double) totalRecords / numberPerPage);
            
            Map<String, Integer> pagination = dao.calculatePageBlock(currentPage, totalRecords, numberPerPage, numberOfPageBlock);
            
            // 데이터를 request에 설정
            request.setAttribute("list", normalList);
            request.setAttribute("pagination", pagination);
            request.setAttribute("searchWord", searchWord);
            request.setAttribute("searchKey", searchKey);
            request.setAttribute("category", category);
            request.setAttribute("pinnedList", pinnedList);

        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return "/ohora/board/faq_list.jsp";
	}
	
	

}
