package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import ohora.domain.ProductDTO;

public class CartDAOImpl implements CartDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public CartDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public int checkCart(int userPk, int pdtId) throws SQLException {
		int count = 0;
		
		String sql = "SELECT COUNT(*) FROM o_cartlist WHERE user_id = ? AND pdt_id = ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    pstmt.setInt(2, pdtId);
		    rs = pstmt.executeQuery();
		    if (rs.next()) {
		    	count = rs.getInt(1);
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
		return count;
	}

	@Override
	public int addToCart(int userPk, int pdtId) throws SQLException {
		
		String sql = "INSERT INTO o_cartlist (clist_id, user_id, pdt_id, opt_id, clist_pdt_count, clist_adddate, clist_select) VALUES (addcart_seq.NEXTVAL, ?, ?, 0, 1, SYSDATE, 'Y')";
		int insertedCount = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    pstmt.setInt(2, pdtId);
		    
		    insertedCount = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
		        pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return insertedCount;
	}

	@Override
	public int getCartListCount(int userPk) throws SQLException {
		
		String sql = "SELECT COUNT(DISTINCT pdt_id) FROM o_cartlist WHERE user_id = ? ";
		int count = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    rs = pstmt.executeQuery();
		    if (rs.next()) {
		    	count = rs.getInt(1);
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
		
		return count;
	}

	@Override
	public boolean updateCart(int userPk, int pdtId) throws SQLException {
		
		String sql = "UPDATE o_cartlist SET clist_pdt_count = clist_pdt_count + 1 WHERE user_id = ? AND pdt_id = ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    pstmt.setInt(2, pdtId);
		    pstmt.executeUpdate();
		    return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
		        pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return false;
	}

	@Override
	public ArrayList<ProductDTO> getCartItems(int userPk) throws SQLException {
		
		int pdt_id;					// 상품 ID
		int cat_id;					// 카테고리 ID
		int scat_id;				// 하위카테고리 ID
		int pdt_number;				// 옵션갯수
		String pdt_name;			// 상품명
		int pdt_amount;				// 상품가격
		int pdt_discount_rate;		// 할인율
		String pdt_img_url;			// 이미지경로
		int pdt_count;				// 재고수량
	    int pdt_discount_amount;
		
		String sql = "select * from o_product p JOIN o_cartlist c ON p.pdt_id = c.pdt_id WHERE user_id = ? ";
		ArrayList<ProductDTO> list = null;
		ProductDTO pdt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    rs = pstmt.executeQuery();
		    if (rs.next()) {
		        list = new ArrayList<ProductDTO>();
		        do {
		        	pdt_id = rs.getInt("pdt_id");
		        	cat_id = rs.getInt("cat_id");
		        	scat_id = rs.getInt("scat_id");
		        	pdt_number = rs.getInt("pdt_number");
		            pdt_name = rs.getString("pdt_name");
		            pdt_amount = rs.getInt("pdt_amount");
		            pdt_discount_rate = rs.getInt("pdt_discount_rate");
		            pdt_img_url = rs.getString("pdt_img_url");
		            pdt_count = rs.getInt("clist_pdt_count");	// pdt_count에 clist_pdt_count 를...

		            pdt_discount_amount = (pdt_discount_rate != 0)
		                ? pdt_amount - (int)(pdt_amount * pdt_discount_rate / 100.0f ) // 할인율 적용
		                : pdt_amount;
		            
		            pdt = new ProductDTO().builder()
		            		.pdt_id(pdt_id)
		            		.cat_id(cat_id)
		            		.scat_id(scat_id)
		            		.pdt_number(pdt_number)
		                    .pdt_name(pdt_name)
		                    .pdt_amount(pdt_amount)
		                    .pdt_discount_rate(pdt_discount_rate)
		                    .pdt_img_url(pdt_img_url)
		                    .pdt_count(pdt_count)
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
	public void deleteCart(int userPk, int pdtId) throws SQLException {
		
		String sql = "DELETE FROM o_cartlist WHERE user_id = ? AND pdt_id = ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    pstmt.setInt(2, pdtId);
		    pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
		        pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public int deleteCart(int userPk, String[] pdtIdArr) throws SQLException {
		
		String sql = "DELETE FROM o_cartlist WHERE user_id = ? AND pdt_id IN ( ";
		for (String pdtid : pdtIdArr) {
			sql += "?, ";
		}
		sql = sql.substring(0, sql.length() - 2);
		sql += " )";
		int deletedCount = 0;
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, userPk);
		    for (int i = 2; i <= pdtIdArr.length+1; i++) {
		    	pstmt.setString(i, pdtIdArr[i-2]);
			}
		    deletedCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
		        pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return deletedCount;
		
	}
	
	
	
} // class
