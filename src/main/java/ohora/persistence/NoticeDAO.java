package ohora.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import ohora.domain.NoticeDTO;
import ohora.domain.ProductDTO;

public interface NoticeDAO {
//	//게시글 리스트
	ArrayList<NoticeDTO> selectList(Connection con) throws SQLException;

   // 2. 글 추가 ( 새글 + 답글 )
   //int insert( Connection con, NoticeDTO dto) throws SQLException;

   // 3. 조회수 증가
   int updateReadCount( Connection con, int seq) throws SQLException;

   // 4. 글 상세 보기
   NoticeDTO selectOne( Connection con, int seq) throws SQLException;

   // 5. 답글    부모step <             step +1 증가
   //int updateRefStep( Connection con, int parentRef, int parentStep) throws SQLException;

   // 6. 삭제
   //int delete(Connection con, int num) throws SQLException;   
	
   //페이징 처리
   ArrayList<NoticeDTO> select(int currentPage, int numberPerPage) throws SQLException;
	
	// 1-3. 총 레코드 수
	int getTotalRecords() throws SQLException;
	
	int getTotalRecords(int categoryNumber) throws SQLException;
	
	int getTotalRecords(String searchCondition, String searchWord) throws SQLException;
	// 1-4. 총 페이지 수
	int getTotalPages(int numberPerPage) throws SQLException;
	// 검색시 총페이지
	int getTotalPages(int numberPerPage, String searchCondition, String searchWord) throws SQLException;
	
	//페이징블록
	Map<String, Integer> calculatePageBlock(int currentPage, int totalRecords, int recordsPerPage, int pagesPerBlock) throws SQLException;

	//이전글다음글
	NoticeDTO findPreviousPost(Connection con, int currentSeq) throws SQLException;

	NoticeDTO findNextPost(Connection con, int currentSeq) throws SQLException;

	int getTotalRecords(String searchWord) throws SQLException;
	
	ArrayList<NoticeDTO> searchList(int currentPage, int numberPerPage, String searchKey, String searchWord) throws SQLException;
	
}