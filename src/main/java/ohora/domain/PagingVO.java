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
	
	public int currentPage = 1;
	
	public int start;
	public int end;
	
	public int first;
	public int last;
	
	public boolean prev;
	public boolean next;
	
	public int numberPerPage = 10;
	
    private int numberOfPageBlock;
    private int totalRecords;
    private String searchWord;
    private int categoryNumber;
	
	public PagingVO(int currentPage, int numberPerPage, int numberOfPageBlock, int categoryNumber) throws NamingException, SQLException {
		
		this.currentPage = currentPage;
		this.numberPerPage = numberPerPage;
		this.categoryNumber = categoryNumber;
		
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		
		int totalPages;
		try {
			totalPages = dao.getTotalPages(numberPerPage, categoryNumber);
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

	public PagingVO(int currentPage, int numberPerPage, int numberOfPageBlock, String searchWord) throws NamingException, SQLException {
		this.currentPage = currentPage;
		this.numberPerPage = numberPerPage;
		Connection conn = ConnectionProvider.getConnection();
		OhoraDAO dao = new OhoraDAOImpl(conn);
		try {
			int totalPages = dao.getTotalPages(numberPerPage, searchWord);
			
			start = (currentPage-1)/numberOfPageBlock*numberOfPageBlock+1;
			end = start + numberOfPageBlock - 1;			
			if( end > totalPages) end = totalPages;
			
			if( start != 1) this.prev = true;			
			if( end != totalPages) this.next = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}