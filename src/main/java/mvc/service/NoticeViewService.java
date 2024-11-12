package mvc.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import ohora.domain.NoticeDTO;
import ohora.persistence.NoticeDAO;
import ohora.persistence.NoticeDAOImpl;

public class NoticeViewService {

	// 1. 싱글톤
	private NoticeViewService() {}      
	private static NoticeViewService instance = null;  
	public static NoticeViewService getInstance() {   
		if(   instance == null  ) {
			instance = new NoticeViewService();
		}
		return instance;
	}

	// 
	public NoticeDTO selectOne(int seq){
		//
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			
			NoticeDAO dao = NoticeDAOImpl.getInstance();
			// 1 + 2  트랜잭션 처리 또는 로그 서비스
			con.setAutoCommit(false);         
			// 1. 조회수 증가
			dao.updateReadCount(con, seq);
			// 2. 해당 게시글 정보
			NoticeDTO dto = null;
			dto = dao.selectOne(con, seq);
			con.commit();         
			return dto;
		} catch (NamingException | SQLException e) { 
			JdbcUtil.rollback(con);         
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

	public NoticeDTO findPreviousPost(int currentSeq) {
	    try (Connection con = ConnectionProvider.getConnection()) {
	        NoticeDAO dao = NoticeDAOImpl.getInstance();
	        return dao.findPreviousPost(con, currentSeq);
	    } catch (Exception e) {
	        throw new RuntimeException(e);
	    }
	}

	public NoticeDTO findNextPost(int currentSeq) {
	    try (Connection con = ConnectionProvider.getConnection()) {
	        NoticeDAO dao = NoticeDAOImpl.getInstance();
	        return dao.findNextPost(con, currentSeq);
	    } catch (Exception e) {
	        throw new RuntimeException(e);
	    }
	}

}
