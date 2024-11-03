package ohora.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import ohora.domain.DeptVO;
import ohora.domain.ProductDTO;

public interface OhoraDAO {
	ArrayList<DeptVO> selectTest() throws SQLException;
	
	ArrayList<ProductDTO> prdCate(int currentPage, int numberPerPage, int categoryNumber) throws SQLException;
	
	ArrayList<ProductDTO> search(String searchWord,	int currentPage, int numberPerPage) throws SQLException;
	
	// 1-3. 총 레코드 수
	int getTotalRecords(int categoryNumber) throws SQLException;
	
	int getTotalRecords(String searchWord) throws SQLException;
	// 1-4. 총 페이지 수
	int getTotalPages(int numberPerPage, int categoryNumber) throws SQLException;
	// 검색시 총페이지
	int getTotalPages(int numberPerPage, String searchWord) throws SQLException;
	
	// 상품 상세 정보
	ProductDTO prdDetail(int pdt_id) throws SQLException;

/* boolean userCheck(String userId, String password) throws SQLException; */ //로그인
	
	String findLoginId(String name, String contact, String contactType); // 아이디 찾기
	
	boolean checkPw(String userId, String contact, String userName, String contactMethod); //비번 찾기
	
	String updatePw(String userId, String encryptedPassword);// 비번 업뎃

	int validateUser(String userId, String password); // 로그인
	
	boolean isDuplicate(String type, String value) throws SQLException;	// 회원가입시 입력값 중복처리용
	
}
