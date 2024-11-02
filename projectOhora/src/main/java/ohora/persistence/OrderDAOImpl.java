package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import ohora.domain.UserDTO;

public class OrderDAOImpl implements OrderDAO{
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public OrderDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public UserDTO selectUserInfo(int userId) throws SQLException {
		int user_id;
		int mem_id;
		int auth_id;
		String user_login_id;
		String user_password;
		String user_name;
		String user_email;
		String user_tel;
		Date user_birth;
		int user_point;
		String user_snsagree;
		Date user_joindate;
		
		UserDTO userDTO = null;

		String sql = "SELECT * FROM o_user WHERE user_id = ? ";

		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, userId);
		this.rs =  this.pstmt.executeQuery();
		
		try {
			
			if (rs.next()) {

				user_id = rs.getInt("user_id");
				mem_id = rs.getInt("mem_id");
				auth_id = rs.getInt("auth_id");
				user_login_id = rs.getString("user_login_id");
				user_password = rs.getString("user_password");
				user_name = rs.getString("user_name");
				user_email = rs.getString("user_email");
				user_tel = rs.getString("user_tel");
				user_birth = rs.getDate("user_birth");
				user_point = rs.getInt("user_point");
				user_snsagree = rs.getString("user_snsagree");
				user_joindate = rs.getDate("user_joindate");

				userDTO = new UserDTO().builder()
						.user_id(user_id)
						.mem_id(mem_id)
						.auth_id(auth_id)
						.user_login_id(user_login_id)
						.user_password(user_password)
						.user_name(user_name)
						.user_email(user_email)
						.user_tel(user_tel)
						.user_birth(user_birth)
						.user_point(user_point)
						.user_snsagree(user_snsagree)
						.user_joindate(user_joindate)
						.build();

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
		return userDTO;
	}

}
