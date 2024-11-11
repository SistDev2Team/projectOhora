package ohora.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import ohora.domain.AddrDTO;
import ohora.domain.CouponDTO;
import ohora.domain.ProductDTO;
import ohora.domain.UserDTO;

public interface OrderDAO {
	UserDTO selectUserInfo(Connection conn, int userPk) throws SQLException;
	
	ArrayList<AddrDTO> selectAddrList(Connection conn, int userPk) throws SQLException;
	
	ArrayList<CouponDTO> selectCouponList(Connection conn, int userPk) throws SQLException;
	
	ArrayList<ProductDTO> selectProductList(Connection conn, String[] pdtidArr) throws SQLException;
	
	String insertOrder(Connection conn, int userPk, int icpnId,  String ordName, String ordAddress, String zipCode, String ordTel, String ordEmail, String ordPassword
			, int ordTotalAmount, int ordCpnDiscount, int ordPdtDiscount, int ordUsePoint, String ordPayOption, int ordDeliveryFee) throws SQLException;
	
	boolean insertOrdDetail(Connection conn, String pdtName, int pdtCount, int pdtAmount, int pdtDcAmount) throws SQLException;
	
	int updateUsePoint(Connection conn, int userPk, int point) throws SQLException;
	
	int checkPoint(Connection conn, int userPk) throws SQLException;
	
	int updateCoupon(Connection conn, int userPk, int icpnId) throws SQLException;
}
