package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.util.JdbcUtil;

import ohora.domain.FaqDTO;

public class FaqDAOImpl implements FaqDAO{


	// 1. 싱글톤
	private static FaqDAO instance = new FaqDAOImpl();
	private FaqDAOImpl() {}
	public static FaqDAO getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public FaqDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public ArrayList<FaqDTO> selectList(Connection con) throws SQLException{
		// 게시판 리스트 출력
		String sql = " SELECT seq, writer, title, writedate, readed, tag, category, content, ect "
				+ " FROM ohora_fnq_Board "
				+ " ORDER BY seq desc ";

		ArrayList<FaqDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				list = new ArrayList<FaqDTO>();
				FaqDTO dto = null;
				do {
					dto =  new FaqDTO();

					dto.setSeq( rs.getInt("seq") );
					dto.setWriter( rs.getString("writer"));               
					dto.setTitle( rs.getString("title"));
					dto.setWritedate(rs.getDate("writedate"));
					dto.setReaded( rs.getInt("readed"));         // X
					dto.setTag( rs.getInt("tag"));
					dto.setCategory( rs.getString("category"));
					dto.setContent( rs.getString("content"));
					dto.setEct( rs.getString("ect"));

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

		String sql = "update ohora_fnq_Board "
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
	public FaqDTO selectOne(Connection con, int seq) throws SQLException {
		//글 상세 보기 
		String sql = "select * from ohora_fnq_Board "
				+" where seq = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;      
		FaqDTO dto = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto =  new FaqDTO();

				dto.setSeq( rs.getInt("seq") );
				dto.setWriter( rs.getString("writer"));               
				dto.setTitle( rs.getString("title"));
				dto.setWritedate(rs.getDate("writedate"));
				dto.setReaded( rs.getInt("readed"));         // X
				dto.setTag( rs.getInt("tag"));
				dto.setCategory( rs.getString("category"));
				dto.setContent( rs.getString("content"));
				dto.setEct( rs.getString("ect"));
			}
		}  finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}

		return dto;
	}

	@Override
	public ArrayList<FaqDTO> select(int currentPage, int numberPerPage) throws SQLException {
		ArrayList<FaqDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM (SELECT ROWNUM no, t.* FROM (SELECT seq, writer, title, writedate, readed, tag, category, content, ect FROM ohora_fnq_Board ORDER BY seq DESC) t) WHERE no BETWEEN ? AND ?";
        int start = (currentPage - 1) * numberPerPage + 1;
        int end = start + numberPerPage - 1;

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, start);
            pstmt.setInt(2, end);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    FaqDTO dto = new FaqDTO(
                            rs.getInt("seq"),
                            rs.getString("writer"),
                            rs.getString("title"),
                            rs.getDate("writedate"),
                            rs.getInt("readed"),
                            rs.getInt("tag"),
                            rs.getString("category"),
                            rs.getString("content"),
                            rs.getString("ect")
                    );
                    list.add(dto);
                }
            }
        }
        return list;
     }


	@Override
	public int getTotalRecords() throws SQLException {
		 String sql = "SELECT COUNT(*) FROM ohora_fnq_Board";
	        try (PreparedStatement pstmt = conn.prepareStatement(sql);
	             ResultSet rs = pstmt.executeQuery()) {
	            return rs.next() ? rs.getInt(1) : 0;
	        }
	    }

	@Override
	public int getTotalRecords(int categoryNumber) throws SQLException {

		int totalRecords = 0;
		String sql = null;

		sql = " SELECT COUNT(*) FROM ohora_fnq_Board WHERE title = ? ";	

		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, categoryNumber);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalRecords;
	}

	@Override
	public int getTotalRecords(String searchKey, String searchWord) throws SQLException {
		String sql = "SELECT COUNT(*) FROM ohora_fnq_Board WHERE " + searchKey + " LIKE ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, "%" + searchWord + "%");
            try (ResultSet rs = pstmt.executeQuery()) {
                return rs.next() ? rs.getInt(1) : 0;
            }
        }
    
	}

	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		int totalPages = 0;
		String sql = " SELECT CEIL(COUNT(*)/?) FROM ohora_fnq_Board ";
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
				+ " FROM ohora_fnq_Board "
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
	public FaqDTO findPreviousPost(Connection con, int currentSeq) throws SQLException {
		String sql = " SELECT * "
				+ " FROM ( "
				+ "    SELECT * "
				+ "    FROM ohora_fnq_Board "
				+ "    WHERE seq < ? "
				+ "    ORDER BY seq DESC "
				+ " )"
				+ " WHERE ROWNUM = 1 ";
	    try (PreparedStatement pstmt = con.prepareStatement(sql)) {
	        pstmt.setInt(1, currentSeq);
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	                return new FaqDTO(rs.getInt("seq"), rs.getString("writer"), rs.getString("title"), rs.getDate("writedate"), rs.getInt("readed"), rs.getInt("tag"), rs.getString("category"), rs.getString("content"), rs.getString("ect"));
	            }
	        }
	    }
	    return null; // 이전글이 없는 경우
	}

	@Override
	public FaqDTO findNextPost(Connection con, int currentSeq) throws SQLException {
		  String sql = " SELECT * "
		  		+ " FROM ( "
		  		+ "    SELECT * "
		  		+ "    FROM ohora_fnq_Board "
		  		+ "    WHERE seq > ? "
		  		+ "    ORDER BY seq DESC "
		  		+ " )  "
		  		+ " WHERE ROWNUM = 1 ";
		    try (PreparedStatement pstmt = con.prepareStatement(sql)) {
		        pstmt.setInt(1, currentSeq);
		        try (ResultSet rs = pstmt.executeQuery()) {
		            if (rs.next()) {
		                return new FaqDTO(rs.getInt("seq"), rs.getString("writer"), rs.getString("title"), rs.getDate("writedate"), rs.getInt("readed"), rs.getInt("tag"), rs.getString("category"), rs.getString("content"), rs.getString("ect"));
		            }
		        }
		    }
		    return null; // 다음글이 없는 경우
		}

	@Override
	public int getTotalRecords(String searchWord) throws SQLException {
		String sql = " SELECT COUNT(*) FROM ohora_fnq_Board WHERE title LIKE ? ";
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

	public ArrayList<FaqDTO> selectBySearch(int currentPage, int numberPerPage, String searchKey, String searchWord) throws SQLException {
	    String sql = " SELECT * FROM ohora_fnq_Board WHERE " + searchKey + " LIKE ? ORDER BY seq DESC ";
	    ArrayList<FaqDTO> list = new ArrayList<>();
	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setString(1, "%" + searchWord + "%");
	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                FaqDTO dto = new FaqDTO();
	                dto.setSeq(rs.getInt("seq"));
	                dto.setTitle(rs.getString("category"));
	                dto.setTitle(rs.getString("title"));
	                // 다른 필드 설정
	                list.add(dto);
	            }
	        }
	    }
	    return list;
	}

	@Override
	public ArrayList<FaqDTO> searchList(int currentPage, int numberPerPage, String searchKey, String searchWord) throws SQLException {
		ArrayList<FaqDTO> list = new ArrayList<>();
	    int start = (currentPage - 1) * numberPerPage + 1;
	    int end = start + numberPerPage - 1;
	    
	    String sql = " SELECT * FROM ( "
	               + " SELECT ROWNUM no, t.* FROM ( "
	               + " SELECT seq, writer, title, writedate, readed, tag, category, content, ect "
	               + " FROM ohora_fnq_Board "
	               + " WHERE " + searchKey + " LIKE ? "
	               + " ORDER BY seq DESC ) t "
	               + " ) WHERE no BETWEEN ? AND ? ";
	    
	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setString(1, "%" + searchWord + "%");
	        pstmt.setInt(2, start);
	        pstmt.setInt(3, end);

	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                FaqDTO dto = new FaqDTO();
	                dto.setSeq(rs.getInt("seq"));
	                dto.setWriter(rs.getString("writer"));
	                dto.setTitle(rs.getString("title"));
	                dto.setWritedate(rs.getDate("writedate"));
	                dto.setReaded(rs.getInt("readed"));
	                dto.setTag(rs.getInt("tag"));
	                dto.setCategory(rs.getString("category"));
	                dto.setContent(rs.getString("content"));
	                dto.setEct(rs.getString("ect"));
	                list.add(dto);
	            }
	        }
	    }
	    return list;
	}

	
	// 특정 카테고리에 따른 FAQ 리스트 조회
	@Override
	public ArrayList<FaqDTO> selectByCategory(int currentPage, int numberPerPage, String category) throws SQLException {
		String sql = " SELECT * "
				+ " FROM ( "
				+ "    SELECT a.*, ROWNUM rnum "
				+ "    FROM ( "
				+ "        SELECT * "
				+ "        FROM ohora_fnq_board "
				+ "        WHERE ect = ? "
				+ "        ORDER BY seq DESC "
				+ "    ) a "
				+ "    WHERE ROWNUM <= ? "
				+ " ) "
				+ " WHERE rnum > ? ";
		
		ArrayList<FaqDTO> list = new ArrayList<>();
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, category);
            pstmt.setInt(2, (currentPage - 1) * numberPerPage);
            pstmt.setInt(3, numberPerPage);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    FaqDTO dto = new FaqDTO(
                            rs.getInt("seq"),
                            rs.getString("writer"),
                            rs.getString("title"),
                            rs.getDate("writedate"),
                            rs.getInt("readed"),
                            rs.getInt("tag"),
                            rs.getString("category"),
                            rs.getString("content"),
                            rs.getString("ect")
                    );
                    list.add(dto);
                }
            }
        }
        return list;
    }

	// 특정 카테고리 및 검색어에 따른 FAQ 리스트 조회
	@Override
	public ArrayList<FaqDTO> searchListByCategory(int currentPage, int numberPerPage, String searchKey,
			String searchWord, String category) throws SQLException {
		String sql = "SELECT * FROM ohora_fnq_board WHERE " + searchKey + " LIKE ? AND category = ? ORDER BY seq DESC OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, "%" + searchWord + "%");
            pstmt.setString(2, category);
            pstmt.setInt(3, (currentPage - 1) * numberPerPage);
            pstmt.setInt(4, numberPerPage);
            try (ResultSet rs = pstmt.executeQuery()) {
                ArrayList<FaqDTO> list = new ArrayList<>();
                while (rs.next()) {
                    FaqDTO dto = new FaqDTO(rs.getInt("seq")
                    		, rs.getString("writer")
                    		, rs.getString("title")
                    		, rs.getDate("writedate")
                    		, rs.getInt("readed")
                    		, rs.getInt("tag")
                    		, rs.getString("category")
                    		, rs.getString("content")
                    		, rs.getString("ect"));
                    		list.add(dto);
                }
                return list;
            }
        }
	}
	
	@Override
	public int getTotalRecords(String searchKey, String searchWord, String category) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getTotalRecordsByCategory(String category) throws SQLException {
		String sql = " SELECT COUNT(*) "
				+ " FROM ohora_fnq_board "
				+ " WHERE ect = ? ";
	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setString(1, category);
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	                return rs.getInt(1);
	            }
	        }
	    }
	    return 0;
	}
	@Override
	public List<FaqDTO> getPinnedList(Connection conn, int tagValue) throws SQLException {
		String sql = " SELECT * "
				+ " FROM ohora_fnq_board "
				+ " WHERE tag = 1 ORDER BY seq DESC ";
        List<FaqDTO> pinnedList = new ArrayList<>();

        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                FaqDTO faq = new FaqDTO();
                faq.setSeq(rs.getInt("seq"));
                faq.setWriter(rs.getString("writer"));
                faq.setTitle(rs.getString("title"));
                faq.setWritedate(rs.getDate("writedate"));
                faq.setReaded(rs.getInt("readed"));
                faq.setTag(rs.getInt("tag"));
                faq.setCategory(rs.getString("category"));
                faq.setContent(rs.getString("content"));
                pinnedList.add(faq);
            }
        }
        
        return pinnedList;
	}
	@Override
	public List<FaqDTO> getNormalList(Connection conn, String category, int currentPage, int numberPerPage) throws SQLException {
		List<FaqDTO> normalList = new ArrayList<>();
		String sql;

		if (category.equals("all")) {
	        sql = "SELECT * FROM ( "
	            + "  SELECT ROWNUM AS rnum, a.* FROM ( "
	            + "    SELECT * FROM ohora_fnq_board WHERE tag = 2 ORDER BY seq DESC "
	            + "  ) a WHERE ROWNUM <= ? "
	            + ") WHERE rnum > ?";
	    } else {
	        sql = "SELECT * FROM ( "
	            + "  SELECT ROWNUM AS rnum, a.* FROM ( "
	            + "    SELECT * FROM ohora_fnq_board WHERE tag = 2 AND ect = ? ORDER BY seq DESC "
	            + "  ) a WHERE ROWNUM <= ? "
	            + ") WHERE rnum > ?";
	    }

	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        int paramIndex = 1;
	        if (!category.equals("all")) {
	            pstmt.setString(paramIndex++, category);
	        }
	        pstmt.setInt(paramIndex++, currentPage * numberPerPage); // 상위 페이지까지
	        pstmt.setInt(paramIndex, (currentPage - 1) * numberPerPage); // 이전 페이지까지

	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                FaqDTO dto = new FaqDTO();
	                dto.setSeq(rs.getInt("seq"));
	                dto.setWriter(rs.getString("writer"));
	                dto.setTitle(rs.getString("title"));
	                dto.setWritedate(rs.getDate("writedate"));
	                dto.setReaded(rs.getInt("readed"));
	                dto.setTag(rs.getInt("tag"));
	                dto.setCategory(rs.getString("Category"));
	                dto.setContent(rs.getString("content"));
	                dto.setEct(rs.getString("ect"));

	                normalList.add(dto);
	            }
	        }
	    }
	    
	    System.out.println("Category: " + category);
	    System.out.println("Normal List: " + normalList);
	    System.out.println("Normal List Size: " + normalList.size());

	    
	    return normalList;
	}
	@Override
	public List<FaqDTO> searchListByCondition(int currentPage, int numberPerPage, String searchKey, String searchWord)
			throws SQLException {
		List<FaqDTO> list = new ArrayList<>();
	    String sql = " SELECT * FROM ("
	               + "    SELECT ROWNUM AS rnum, seq, writer, title, writedate, category, content, ect "
	               + "    FROM ( "
	               + "        SELECT * FROM ohora_fnq_board "
	               + "        WHERE " + searchKey + " LIKE ? "
	               + "        ORDER BY seq DESC"
	               + "    ) WHERE ROWNUM <= ? "
	               + ") WHERE rnum > ?";

	    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setString(1, "%" + searchWord + "%");
	        pstmt.setInt(2, currentPage * numberPerPage);
	        pstmt.setInt(3, (currentPage - 1) * numberPerPage);

	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                FaqDTO dto = new FaqDTO();
	                dto.setSeq(rs.getInt("seq"));
	                dto.setWriter(rs.getString("writer"));
	                dto.setTitle(rs.getString("title"));
	                dto.setWritedate(rs.getDate("writedate"));
	                dto.setCategory(rs.getString("category"));
	                dto.setContent(rs.getString("content"));
	                list.add(dto);
	            }
	        }
	    }
	    return list;
	}
}
