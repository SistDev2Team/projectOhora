package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import ohora.domain.AddrDTO;
import ohora.domain.CouponDTO;
import ohora.domain.ProductDTO;
import ohora.domain.UserDTO;

public class OrderDAOImpl implements OrderDAO{

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private Statement stmt = null;
	private ResultSet rs = null;

	public OrderDAOImpl() {
		super();
	}

	@Override
	public UserDTO selectUserInfo(Connection conn, int userPk) throws SQLException {
		this.conn = conn;
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
		this.pstmt.setInt(1, userPk);
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

	@Override
	public ArrayList<AddrDTO> selectAddrList(Connection conn, int userPk) throws SQLException {
		this.conn = conn;
		int addr_id;
		int user_id;
		String addr_nick;
		String addr_name;
		String addr_htel;
		String addr_tel;
		String addr_address_main;
		String addr_address_detail;
		String addr_zipcode;
		String addr_main;

		ArrayList<AddrDTO> list = null;
		AddrDTO addrDTO = null;

		String sql = "select * from o_address where user_id = ? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userPk);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
		        list = new ArrayList<AddrDTO>();
		        do {
		        	addr_id = rs.getInt("addr_id");
		        	user_id = rs.getInt("user_id");
		        	addr_nick = rs.getString("addr_nick");
		        	addr_name = rs.getString("addr_name");
		        	addr_htel = rs.getString("addr_htel");
		        	addr_tel = rs.getString("addr_tel");
		        	addr_address_main = rs.getString("addr_address_main");
		        	addr_address_detail = rs.getString("addr_address_detail");
		        	addr_zipcode = rs.getString("addr_zipcode");
		        	addr_main = rs.getString("addr_main");

		        	addrDTO = new AddrDTO().builder()
		                    .addr_id(addr_id)
		                    .user_id(user_id)
		                    .addr_nick(addr_nick)
		                    .addr_name(addr_name)
		                    .addr_htel(addr_htel)
		                    .addr_tel(addr_tel)
		                    .addr_address_main(addr_address_main)
		                    .addr_address_detail(addr_address_detail)
		                    .addr_zipcode(addr_zipcode)
		                    .addr_main(addr_main)
		                    .build();

		            list.add(addrDTO);

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
	public ArrayList<CouponDTO> selectCouponList(Connection conn, int userPk) throws SQLException {
		this.conn = conn;
		int icpn_id;
		int user_id;
		int cpn_id;
		Date icpn_issuedate;
		String icpn_isused;
		String cpn_info;
		int cpn_discount_rate;
		int cpn_max_amount;
		int cpn_con_value;
		String cpn_apply;
		String cpn_con_type;
		String cpn_discount_type;
		Date cpn_startdate;
		Date cpn_enddate;
		
		ArrayList<CouponDTO> list = null;
		CouponDTO couponDTO = null;

		String sql = "select * from o_issuedcoupon i JOIN o_coupon c ON i.cpn_id = c.cpn_id where user_id = ? AND icpn_isused = 'N' ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userPk);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
		        list = new ArrayList<CouponDTO>();
		        do {
		        	icpn_id = rs.getInt("icpn_id");
		        	user_id = rs.getInt("user_id");
		        	cpn_id = rs.getInt("cpn_id");
		        	icpn_issuedate = rs.getDate("icpn_issuedate");
		        	icpn_isused = rs.getString("icpn_isused");
		        	cpn_info = rs.getString("cpn_info");
		        	cpn_discount_rate = rs.getInt("cpn_discount_rate");
		        	cpn_max_amount = rs.getInt("cpn_max_amount");
		        	cpn_con_value = rs.getInt("cpn_con_value");
		        	cpn_apply = rs.getString("cpn_apply");
		        	cpn_con_type = rs.getString("cpn_con_type");
		        	cpn_discount_type = rs.getString("cpn_discount_type");
		        	cpn_startdate = rs.getDate("cpn_startdate");
		        	cpn_enddate = rs.getDate("cpn_enddate");

		        	couponDTO = new CouponDTO().builder()
		                    .icpn_id(icpn_id)
		                    .user_id(user_id)
		                    .cpn_id(cpn_id)
		                    .icpn_issuedate(icpn_issuedate)
		                    .icpn_isused(icpn_isused)
		                    .cpn_info(cpn_info)
		                    .cpn_discount_rate(cpn_discount_rate)
		                    .cpn_max_amount(cpn_max_amount)
		                    .cpn_con_value(cpn_con_value)
		                    .cpn_apply(cpn_apply)
		                    .cpn_con_type(cpn_con_type)
		                    .cpn_discount_type(cpn_discount_type)
		                    .cpn_startdate(cpn_startdate)
		                    .cpn_enddate(cpn_enddate)
		                    .build();

		            list.add(couponDTO);

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
	public ArrayList<ProductDTO> selectProductList(Connection conn, String[] pdtidArr) throws SQLException {
		this.conn = conn;
		
		int pdt_id;
		String pdt_name;
		int pdt_amount;
		int pdt_discount_rate;
		String pdt_img_url;
		int pdt_discount_amount;
		
		ArrayList<ProductDTO> list = null;
		ProductDTO pdt = null;
		
		String sql = " SELECT pdt_id, pdt_name, pdt_amount, pdt_discount_rate, pdt_img_url "
		        + " FROM O_PRODUCT WHERE pdt_id IN ( ";
		for (String pdtid : pdtidArr) {
			sql += "?, ";
		}
		sql = sql.substring(0, sql.length() - 2);
		sql += " )";
		
		try {
		    pstmt = conn.prepareStatement(sql);
		    for (int i = 1; i <= pdtidArr.length; i++) {
		    	pstmt.setString(i, pdtidArr[i-1]);
			}
		    rs = pstmt.executeQuery();

		    if (rs.next()) {
		        list = new ArrayList<ProductDTO>();
		        do {
		        	pdt_id = rs.getInt("pdt_id");
		            pdt_name = rs.getString("pdt_name");
		            pdt_amount = rs.getInt("pdt_amount");
		            pdt_discount_rate = rs.getInt("pdt_discount_rate");
		            pdt_img_url = rs.getString("pdt_img_url");
		            pdt_discount_amount = (pdt_discount_rate != 0)
		                ? pdt_amount - (int)(pdt_amount * pdt_discount_rate / 100.0f ) // 할인율 적용
		                : pdt_amount;

		            pdt = new ProductDTO().builder()
		            		.pdt_id(pdt_id)
		                    .pdt_name(pdt_name)
		                    .pdt_amount(pdt_amount)
		                    .pdt_discount_rate(pdt_discount_rate)
		                    .pdt_img_url(pdt_img_url)
		                    .pdt_discount_amount(pdt_discount_amount)
		                    .build();

		            list.add(pdt);

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
	public String insertOrder(Connection conn, int userPk, int icpnId, String ordName, String ordAddress, String zipCode, String ordTel,
			String ordEmail, String ordPassword, int ordTotalAmount, int ordCpnDiscount, int ordPdtDiscount,
			int ordUsePoint, String ordPayOption, int ordDeliveryFee) throws SQLException {
		String orderId = null;
		this.conn = conn;
		
		String sql = "INSERT INTO O_ORDER (ORD_PK, ORD_ID, USER_ID, ICPN_ID, ORD_NAME, ORD_ADDRESS, ORD_ZIPCODE, ORD_TEL, ORD_EMAIL, "
				+ "ORD_PASSWORD, ORD_ORDERDATE, ORD_TOTAL_AMOUNT, ORD_CPN_DISCOUNT "
				+ ", ORD_PDT_DISCOUNT,ORD_USEPOINT,ORD_PAY_OPTION,ORD_DELIVERY_FEE) "
				+ "VALUES(O_ORDER_SEQ.NEXTVAL, TO_CHAR(SYSDATE, 'YYYYMMDD') || '-' || LPAD(O_ORDER_SEQ.CURRVAL, 7, '0') "
				+ ", ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userPk);
			pstmt.setInt(2, icpnId);
			pstmt.setString(3, ordName);
			pstmt.setString(4, ordAddress);
			pstmt.setString(5, zipCode);
			pstmt.setString(6, ordTel);
			pstmt.setString(7, ordEmail);
			pstmt.setString(8, ordPassword);
			pstmt.setInt(9, ordTotalAmount);
			pstmt.setInt(10, ordCpnDiscount);
			pstmt.setInt(11, ordPdtDiscount);
			pstmt.setInt(12, ordUsePoint);
			pstmt.setString(13, ordPayOption);
			pstmt.setInt(14, ordDeliveryFee);
			int insertedCount = pstmt.executeUpdate();
			
			if (insertedCount > 0) {
				int tseq = 0;
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT O_ORDER_SEQ.CURRVAL FROM DUAL ");
				if (rs.next()) {
					tseq = rs.getInt(1);
				}
				String seq = tseq + "";
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT ORD_ID FROM O_ORDER WHERE ORD_PK = '"+seq+"' ");
				if (rs.next()) {
					orderId = rs.getString(1);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return orderId;
	}

	@Override
	public boolean insertOrdDetail(Connection conn, String pdtName, int pdtCount, int pdtAmount, int pdtDcAmount)
			throws SQLException {
		this.conn = conn;
		int seq = 0;
		String state = "상품준비중";
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT O_ORDER_SEQ.CURRVAL FROM DUAL ");
			if (rs.next()) {
				seq = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		String sql = "INSERT INTO O_ORDDETAIL (OPDT_ID, ORD_PK, OPDT_NAME, OPDT_AMOUNT, OPDT_DCAMOUNT, OPDT_OPNAME, OPDT_OPAMOUNT"
				+ ", OPDT_COUNT, OPDT_STATE, OPDT_REFUND, OPDT_DELCOMPANY, OPDT_DELNUMBER, OPDT_CONFIRM) "
				+ "VALUES (O_ORDDETAIL_SEQ.NEXTVAL, ?, ?, ?, ?, NULL, NULL, ?, ?, NULL, NULL, NULL, 'N') ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.setString(2, pdtName);
			pstmt.setInt(3, pdtAmount);
			pstmt.setInt(4, pdtDcAmount);
			pstmt.setInt(5, pdtCount);
			pstmt.setString(6, state);
			int insertedCount = pstmt.executeUpdate();
			
			if (insertedCount > 0) return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public int updateUsePoint(Connection conn, int userPk, int point) throws SQLException {
		this.conn = conn;
		int rowCount = 0;
		String sql = "UPDATE o_user SET user_point = ? WHERE user_id = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, point);
			pstmt.setInt(2, userPk);
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return rowCount;
	}

	@Override
	public int checkPoint(Connection conn, int userPk) throws SQLException {
		this.conn = conn;
		int point = 0;
		String sql = "SELECT user_point FROM o_user WHERE user_id = ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userPk);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				point = rs.getInt(1);
				
				return point;
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
		return point;
	}

	@Override
	public int updateCoupon(Connection conn, int userPk, int icpnId) throws SQLException {
		this.conn = conn;
		String sql = "UPDATE o_issuedcoupon SET icpn_isused = 'Y' WHERE user_id = ? AND icpn_id = ? ";
		
		int rowCount = 0;
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    pstmt.setInt(2, icpnId);
		    rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
		        pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return rowCount;
	}

}
