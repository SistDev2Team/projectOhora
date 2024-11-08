package mvc.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import ohora.persistence.OrderDAO;
import ohora.persistence.OrderDAOImpl;

public class OrderService {
	private OrderDAO dao = new OrderDAOImpl();
	
	public String OrderProcess(int userPk, int icpnId, String ordName, String ordAddress, String zipCode, String ordTel, String ordEmail, String ordPassword
			, int ordTotalAmount, int ordCpnDiscount, int ordPdtDiscount, int ordUsePoint, String ordPayOption, int ordDeliveryFee
			, String[] pdtNames, int[] pdtCounts, int[] pdtAmounts, int[] pdtDcAmounts) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			// 트랜잭션 처리
			conn.setAutoCommit(false);
			
			// 주문 INSERT
			String orderId = dao.insertOrder(conn, userPk, icpnId, ordName, ordAddress, zipCode, ordTel, ordEmail, ordPassword
					, ordTotalAmount, ordCpnDiscount, ordPdtDiscount, ordUsePoint, ordPayOption, ordDeliveryFee);
			if (orderId == null) {
				throw new RuntimeException();
			}
			
			if (icpnId != 0) {
				// 쿠폰 삭제
			}
			
			if (ordUsePoint >= 3000) {
				// 적립금 사용 처리
				int rowCount = 0;
				int point = dao.checkPoint(conn, userPk);
				if (point >= 3000 && point >= ordUsePoint) {
					point -= ordUsePoint;
					rowCount = dao.updateUsePoint(conn, userPk, point);
					if (rowCount != 1) {
						throw new RuntimeException();
					}
				} else {
					System.out.println("Point 3000 미만 - 사용 불가.");
					throw new RuntimeException();
				}
			}
			
			// 주문상세 INSERT
			boolean success = true;
			for (int i = 0; i < pdtNames.length; i++) {
				success &= dao.insertOrdDetail(conn, pdtNames[i], pdtCounts[i], pdtAmounts[i], pdtDcAmounts[i]);
			}
			
			if (success) {
				System.out.println("주문상세 Insert 성공");
			} else {
				throw new RuntimeException();
			}
			
			conn.commit();
			System.out.println("커밋 완료");
			conn.setAutoCommit(true);
			return orderId;
		} catch (Exception e) {
			JdbcUtil.rollback(conn);
			System.out.println("롤백..");
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}	
}
