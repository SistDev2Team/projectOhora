package mvc.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import ohora.domain.FaqDTO;
import ohora.domain.NoticeDTO;
import ohora.persistence.FaqDAO;
import ohora.persistence.FaqDAOImpl;
import ohora.persistence.NoticeDAO;
import ohora.persistence.NoticeDAOImpl;

public class FaqViewService {

	// 1. 싱글톤
	private FaqViewService() {}      
	private static FaqViewService instance = null;  
	public static FaqViewService getInstance() {   
		if(   instance == null  ) {
			instance = new FaqViewService();
		}
		return instance;
	}

	// 
	public FaqDTO selectOne(int seq){
		//
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			
			FaqDAO dao = FaqDAOImpl.getInstance();
			// 1 + 2  트랜잭션 처리 또는 로그 서비스
			con.setAutoCommit(false);         
			// 1. 조회수 증가
			dao.updateReadCount(con, seq);
			// 2. 해당 게시글 정보
			FaqDTO dto = null;
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

	public FaqDTO findPreviousPost(int currentSeq) {
	    try (Connection con = ConnectionProvider.getConnection()) {
	    	FaqDAO dao = FaqDAOImpl.getInstance();
	        return dao.findPreviousPost(con, currentSeq);
	    } catch (Exception e) {
	        throw new RuntimeException(e);
	    }
	}

	public FaqDTO findNextPost(int currentSeq) {
	    try (Connection con = ConnectionProvider.getConnection()) {
	    	FaqDAO dao = FaqDAOImpl.getInstance();
	        return dao.findNextPost(con, currentSeq);
	    } catch (Exception e) {
	        throw new RuntimeException(e);
	    }
	}

}
