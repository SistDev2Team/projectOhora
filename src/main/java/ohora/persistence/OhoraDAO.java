package ohora.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;
import ohora.domain.AddrDTO;
import ohora.domain.DeptVO;
import ohora.domain.ProductDTO;
import ohora.domain.RevMedia;
import ohora.domain.ReviewDTO;
import ohora.domain.ReviewRating;
import ohora.domain.UserDTO;

public interface OhoraDAO {

	ArrayList<ProductDTO> prdCate(int currentPage, int numberPerPage, int categoryNumber) throws SQLException;	// cate_no 에 따른 상품 ( new , best , all , outlet )
	
	ArrayList<ProductDTO> search(String searchWord,	int currentPage, int numberPerPage) throws SQLException;	// 상품 검색
	
	ArrayList<ProductDTO> prdOption(int pdt_id) throws SQLException;	// 추가구성상품 존재여부 구분하기
	
	ArrayList<ProductDTO> prdOptCmb(int pdt_id) throws SQLException;	//	롱, 숏 존재하는 상품 구분
	
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
	
	void insertUser(UserDTO user) throws SQLException; //회원가입

	UserDTO myPage(int userPk); // 이름, 등급, 회원아이디, 멤버십등급 가지고 올 수 있음.

	int getAvailableCoupons(int userPk); //사용가능한 쿠폰의 갯수

	int getcartlist(int userPk); //장바구니 내역가져오기~

	List<Integer> getOrderStateCounts(int userPk); // 주문 상태별 카운트 가져오기

	List<Map<String, Object>> getOrderDetails(int userPk);
	
	boolean updateUser(int userPk, Map<String, Object> fieldsToUpdate);

	boolean updateAddress(int userPk, String postcode, String addr1, String addr2);

	AddrDTO getAddresses(int userPk); // AddrDTO 다가져오기

	// 리뷰
	
	ArrayList<ReviewDTO> select(Connection conn, int pdt_id, String sort) throws SQLException;
	
	//리뷰 댓글
	JSONObject selectComment(Connection conn, int rev_id) throws SQLException;

	//리뷰 전체 미디어 받아오기
	ArrayList<ReviewDTO> midiaCount(Connection conn, int pdt_id) throws SQLException;

	// 리뷰 댓글 작성
	int insertComment(Connection conn, int revId, int userId, String comment, Date writedate) throws SQLException;

	//리뷰마다 미디어 뿌리기
	ArrayList<RevMedia> selectPhotos(Connection conn3, int pdt_id) throws SQLException;
	
	//별점 그래프 및 평균
	ReviewRating ratingAVG(Connection conn, int pdt_id) throws SQLException;

	//댓글 더보기
	JSONObject selectMoreReview(Connection conn, int currentRevCnt, int pdtId, String sort) throws SQLException;

	ProductDTO getProductById(String pdtid) throws SQLException;

	ArrayList<ProductDTO> selectProductList(String[] pdtidArr) throws SQLException;

	// 장바구니에 담긴 전체 상품 합계 출력
	List<ProductDTO> getCartItems(List<String> pdtIds) throws SQLException;
	
}
