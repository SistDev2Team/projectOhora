package ohora.persistence;

import java.sql.SQLException;

import ohora.domain.UserDTO;

public interface OrderDAO {
	UserDTO selectUserInfo(int userId) throws SQLException;
}
