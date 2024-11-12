package ohora.domain;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PagingVO {
	
	public int currentPage = 1;			// 현재 페이지
	
	public int start;					// 해당 페이지의 첫번째 페이지
	public int end;						// 해당 페이지의 마지막 페이지
	
	public int first;					// 전체 페이지의 첫번째 페이지
	public int last;					// 전체 페이지의 마지막 페이지
	
	public boolean prev;				// 현재 기준 -1 페이지
	public boolean next;				// 현재 기준 +1 페이지
	
	public int numberPerPage = 10;		// 한페이지에 출력하고자 하는 상품 수
	
    private int numberOfPageBlock;		// 한페이지당 출력되는 페이지수  // [1] 2 3 4 5 6 7 8 9 10 >
    private int totalRecords;			// 종합 레코드 수
    private String searchWord;			// 검색어
    private int categoryNumber;			// 상품을 분류하는 기준
	
    
    // 상품 분류할 때 페이징 처리 [ 상품 정렬(sort_method)는 출력되는 상품수는 변함이 없으므로 분리하지 않음 ]
	public PagingVO(int currentPage, int numberPerPage, int numberOfPageBlock, int categoryNumber) throws NamingException, SQLException {
		
		this.currentPage = currentPage;
		this.numberPerPage = numberPerPage;
		this.categoryNumber = categoryNumber;
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		
		int totalPages;	// 총 페이지 수
		try {
			totalPages = dao.getTotalPages(numberPerPage, categoryNumber);
			start = (currentPage-1)/numberOfPageBlock * numberOfPageBlock + 1;
			end = start + numberOfPageBlock - 1;
			if( end > totalPages) end = totalPages;
			
			this.prev = (start > 1);			// 이전 페이지 블록이 존재하면 true
			this.next = (end < totalPages);		// 다음 페이지 블록이 존재하면 true

			first = 1;
			last = totalPages;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 상품 검색할 때 페이징 처리
	public PagingVO(int currentPage, int numberPerPage, int numberOfPageBlock, String searchWord) throws NamingException, SQLException {
		this.currentPage = currentPage;
		this.numberPerPage = numberPerPage;
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		
		int totalPages;
		try {
			totalPages = dao.getTotalPages(numberPerPage, searchWord);
			start = (currentPage-1)/numberOfPageBlock * numberOfPageBlock + 1;
			end = start + numberOfPageBlock - 1;
			if( end > totalPages) end = totalPages;
			
			this.prev = (start > 1);  // 이전 페이지 블록이 존재하면 true
			this.next = (end < totalPages);  // 다음 페이지 블록이 존재하면 true

			first = 1;
			last = totalPages;
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}