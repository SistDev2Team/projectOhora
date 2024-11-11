package ohora.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import ohora.domain.ProductDTO;

public interface CartDAO {
	
	int checkCart(int userPk, int pdtId) throws SQLException;
	
	int addToCart(int userPk, int pdtId) throws SQLException;
	
	int getCartListCount(int userPk) throws SQLException;
	
	boolean updateCart(int userPk, int pdtId) throws SQLException;
	
	ArrayList<ProductDTO> getCartItems(int userPk) throws SQLException;
	
	void deleteCart(int userPk, int pdtId) throws SQLException;
	
	int deleteCart(int userPk, String[] pdtIdArr ) throws SQLException;

}
