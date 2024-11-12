package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.util.JdbcUtil;

import ohora.domain.NoticeDTO;

public class NoticeDAOImpl implements NoticeDAO{


	// 1. 싱글톤
	private NoticeDAOImpl() {}
	private static NoticeDAO instance = new NoticeDAOImpl();
	public static NoticeDAO getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public NoticeDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public ArrayList<NoticeDTO> selectList(Connection con) throws SQLException{
		// 게시판 리스트 출력
		String sql = " SELECT seq, writer, title, writedate, readed, tag, content "
				+ " FROM ohora_notice_Board "
				+ " ORDER BY seq desc";

		ArrayList<NoticeDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				list = new ArrayList<NoticeDTO>();
				NoticeDTO dto = null;
				do {
					dto =  new NoticeDTO();

					dto.setSeq( rs.getInt("seq") );
					dto.setWriter( rs.getString("writer"));               
					dto.setTitle( rs.getString("title"));
					dto.setWritedate(rs.getDate("writedate"));
					dto.setReaded( rs.getInt("readed"));         // X
					dto.setTag( rs.getInt("tag"));
					dto.setContent( rs.getString("content"));

					list.add(dto);
				} while ( rs.next() );
			} // 
		} finally {
			JdbcUtil.close(rs);         
			JdbcUtil.close(pstmt); 
		} // finally


		return list;
	}

	@Override
	public int updateReadCount(Connection con, int seq) throws SQLException {
		// 조회수 증가

		String sql = "update ohora_notice_Board "
				+" set readed = readed +1 "
				+" where seq = ?";

		PreparedStatement pstmt = null;      
		int rowCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rowCount = pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		return rowCount; 
	}

	@Override
	public NoticeDTO selectOne(Connection con, int seq) throws SQLException {
		//글 상세 보기 
		String sql = "select * from ohora_notice_Board "
				+" where seq = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;      
		NoticeDTO dto = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto =  new NoticeDTO();

				dto.setSeq( rs.getInt("seq") );
				dto.setWriter( rs.getString("writer"));               
				dto.setTitle( rs.getString("title"));
				dto.setWritedate(rs.getDate("writedate"));
				dto.setReaded( rs.getInt("readed"));         // X
				dto.setTag( rs.getInt("tag"));
				dto.setContent( rs.getString("content"));
			}
		}  finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}

		return dto;
	}

	@Override
	public ArrayList<NoticeDTO> select(int currentPage, int numberPerPage) throws SQLException {
		int seq;
		String writer;
		String title;
		Date writedate;
		int readed;
		int tag;
		String content;

		ArrayList<NoticeDTO> list = null;



		String sql = " SELECT *"
				+ " FROM ( "
				+ " SELECT ROWNUM no, t.* "
				+ " FROM ( SELECT seq, writer, title, writedate, readed, tag, content "
				+ " FROM ohora_notice_Board "
				+ " ORDER BY seq desc, tag "
				+ ") t "
				+ ") b "
				+ "WHERE no BETWEEN ? AND ? ";

		NoticeDTO ndto = null;
		int start = (currentPage-1) * numberPerPage + 1;
		int end = start + numberPerPage -1;
		int totalRecords = getTotalRecords();
		if (end > totalRecords) end = totalRecords;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<NoticeDTO>();
				do {

					seq = rs.getInt("seq");
					writer = rs.getString("writer");
					title = rs.getString("title");
					writedate = rs.getDate("writedate");
					readed = rs.getInt("readed");
					tag = rs.getInt("tag");
					content = rs.getString("content");

					ndto = new NoticeDTO().builder()
							.seq(seq)
							.writer(writer)
							.title(title)
							.writedate(writedate)
							.readed(readed)
							.tag(tag)
							.content(content)
							.build();

					list.add(ndto);

				} while (rs.next());

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public int getTotalRecords() throws SQLException {
		int totalRecords = 0;
		String sql = null;
		sql = " SELECT COUNT(*) FROM ohora_notice_Board ";

		this.pstmt = this.conn.prepareStatement(sql);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalRecords;
	}

	@Override
	public int getTotalRecords(int categoryNumber) throws SQLException {

		int totalRecords = 0;
		String sql = null;

		sql = " SELECT COUNT(*) FROM ohora_notice_Board WHERE title = ? ";	

		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, categoryNumber);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalRecords;
	}

	@Override
	public int getTotalRecords(String searchCondition, String searchWord) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		int totalPages = 0;
		String sql = " SELECT CEIL(COUNT(*)/?) FROM ohora_notice_Board ";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalPages = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalPages;
	}

	@Override
	public int getTotalPages(int numberPerPage, String searchCondition, String searchWord) throws SQLException {
		int totalPages = 0;      
		String sql = "SELECT CEIL(COUNT(*)/?) "
				+ " FROM ohora_notice_Board "
				+ " WHERE REGEXP_LIKE(title, ?, 'i')  "; 
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		this.pstmt.setString(2, searchWord);
		this.pstmt.setString(3, searchWord); 	          

		this.rs =  this.pstmt.executeQuery();      
		if( this.rs.next() ) totalPages = rs.getInt(1);      
		this.rs.close();
		this.pstmt.close();            
		return totalPages;
	}

	@Override
	public Map<String, Integer> calculatePageBlock(int currentPage, int totalRecords, int recordsPerPage, int pagesPerBlock) throws SQLException {
		Map<String, Integer> pagination = new HashMap<>();

		// 전체 페이지 수 계산
		int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

		// 현재 페이지가 속한 블록의 시작 페이지 계산
		int currentBlock = (int) Math.ceil((double) currentPage / pagesPerBlock);
		int startPage = (currentBlock - 1) * pagesPerBlock + 1;
		int endPage = Math.min(startPage + pagesPerBlock - 1, totalPages);

		// 끝 페이지가 전체 페이지 수를 초과하지 않도록 처리
		if (endPage > totalPages) {
			endPage = totalPages;
		}

		// 이전, 다음 페이지 블록
		int prevBlock = (startPage > 1) ? pagesPerBlock - 1 : 0;
		int nextBlock = (endPage < totalPages) ? endPage + 1 : totalPages;

		// Map에 페이지 정보를 저장
		pagination.put("startPage", startPage);
		pagination.put("endPage", endPage);
		pagination.put("prevBlock", prevBlock);
		pagination.put("nextBlock", nextBlock);
		pagination.put("currentPage", currentPage);
		pagination.put("totalPages", totalPages);

		return pagination;
	}


	@Override
	public NoticeDTO findPreviousPost(Connection con, int currentSeq) throws SQLException {
		String sql = " SELECT * "
				+ " FROM ( "
				+ "    SELECT * "
				+ "    FROM ohora_notice_Board "
				+ "    WHERE seq < ? "
				+ "    ORDER BY seq DESC "
				+ " )"
				+ " WHERE ROWNUM = 1 ";
	    try (PreparedStatement pstmt = con.prepareStatement(sql)) {
	        pstmt.setInt(1, currentSeq);
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	                return new NoticeDTO(rs.getInt("seq"), rs.getString("writer"), rs.getString("title"), rs.getDate("writedate"), rs.getInt("readed"), rs.getInt("tag"), rs.getString("content"));
	            }
	        }
	    }
	    return null; // 이전글이 없는 경우
	}

	@Override
	public NoticeDTO findNextPost(Connection con, int currentSeq) throws SQLException {
		  String sql = " SELECT * "
		  		+ " FROM ( "
		  		+ "    SELECT * "
		  		+ "    FROM ohora_notice_Board "
		  		+ "    WHERE seq > ? "
		  		+ "    ORDER BY seq DESC "
		  		+ " )  "
		  		+ " WHERE ROWNUM = 1 ";
		    try (PreparedStatement pstmt = con.prepareStatement(sql)) {
		        pstmt.setInt(1, currentSeq);
		        try (ResultSet rs = pstmt.executeQuery()) {
		            if (rs.next()) {
		                return new NoticeDTO(rs.getInt("seq"), rs.getString("writer"), rs.getString("title"), rs.getDate("writedate"), rs.getInt("readed"), rs.getInt("tag"), rs.getString("content"));
		            }
		        }
		    }
		    return null; // 다음글이 없는 경우
		}

	@Override
	public int getTotalRecords(String searchWord) throws SQLException {
		String sql = " SELECT COUNT(*) FROM ohora_notice_Board WHERE title LIKE ? ";
	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setString(1, "%" + searchWord + "%");
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	                return rs.getInt(1);
	            }
	        }
	    }
	    return 0;
	}

	public ArrayList<NoticeDTO> selectBySearch(int currentPage, int numberPerPage, String searchKey, String searchWord) throws SQLException {
	    String sql = " SELECT * FROM ohora_notice_Board WHERE " + searchKey + " LIKE ? ORDER BY seq DESC ";
	    ArrayList<NoticeDTO> list = new ArrayList<>();
	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setString(1, "%" + searchWord + "%");
	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                NoticeDTO dto = new NoticeDTO();
	                dto.setSeq(rs.getInt("seq"));
	                dto.setTitle(rs.getString("title"));
	                // 다른 필드 설정
	                list.add(dto);
	            }
	        }
	    }
	    return list;
	}

	@Override
	public ArrayList<NoticeDTO> searchList(int currentPage, int numberPerPage, String searchKey, String searchWord) throws SQLException {
		ArrayList<NoticeDTO> list = new ArrayList<>();
	    int start = (currentPage - 1) * numberPerPage + 1;
	    int end = start + numberPerPage - 1;
	    
	    String sql = " SELECT * FROM ( "
	               + " SELECT ROWNUM no, t.* FROM ( "
	               + " SELECT seq, writer, title, writedate, readed, tag, content "
	               + " FROM ohora_notice_Board "
	               + " WHERE " + searchKey + " LIKE ? "
	               + " ORDER BY seq DESC ) t "
	               + " ) WHERE no BETWEEN ? AND ? ";
	    
	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setString(1, "%" + searchWord + "%");
	        pstmt.setInt(2, start);
	        pstmt.setInt(3, end);

	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                NoticeDTO dto = new NoticeDTO();
	                dto.setSeq(rs.getInt("seq"));
	                dto.setWriter(rs.getString("writer"));
	                dto.setTitle(rs.getString("title"));
	                dto.setWritedate(rs.getDate("writedate"));
	                dto.setReaded(rs.getInt("readed"));
	                dto.setTag(rs.getInt("tag"));
	                dto.setContent(rs.getString("content"));
	                list.add(dto);
	            }
	        }
	    }
	    return list;
	}
}
