package mvc.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import ohora.domain.AddrDTO;
import ohora.domain.CouponDTO;
import ohora.domain.ProductDTO;
import ohora.domain.UserDTO;
import ohora.persistence.OrderDAO;
import ohora.persistence.OrderDAOImpl;

public class OrderPageService {
	private OrderDAO dao = new OrderDAOImpl();
	
	public UserDTO getUserInfo(int userPk) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			UserDTO userDTO = dao.selectUserInfo(conn, userPk);
			if (userDTO == null) {
				throw new RuntimeException();
			}
			return userDTO;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public ArrayList<AddrDTO> getAddrList(int userPk){
		try (Connection conn = ConnectionProvider.getConnection()) {
			ArrayList<AddrDTO> addrList = dao.selectAddrList(conn, userPk);
			/*
			 * if (addrList == null) { throw new RuntimeException(); }
			 */
			return addrList;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public ArrayList<CouponDTO> getCouponList(int userPk){
		try (Connection conn = ConnectionProvider.getConnection()) {
			ArrayList<CouponDTO> couponList = dao.selectCouponList(conn, userPk);
			return couponList;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public ArrayList<ProductDTO> getProductList(String[] pdtidArr){
		try (Connection conn = ConnectionProvider.getConnection()) {
			ArrayList<ProductDTO> pdtList = dao.selectProductList(conn, pdtidArr);
			return pdtList;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
