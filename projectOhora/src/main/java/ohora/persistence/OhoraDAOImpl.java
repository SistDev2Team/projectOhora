package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import org.mindrot.jbcrypt.BCrypt;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import ohora.domain.DeptVO;
import ohora.domain.PagingVO;
import ohora.domain.ProductDTO;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OhoraDAOImpl implements OhoraDAO{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public OhoraDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	// 상품 구분하는 조건 메서드
	public String prdCondition(String sql, int categoryNumber) {
		sql += " WHERE 1=1 ";
		switch (categoryNumber) {
		    case 121:		// 신상품
		        sql += " AND pdt_adddate >= '2018-05-01' "
		             + " AND pdt_adddate < '2018-09-01' "; 
		        break;
		    case 120:		// best 상품
		        sql += " AND pdt_sales_count >= 300 "; 
		        break;
		    case 44:		// 전체상품
		    	sql += ""; 
		        break;
		    case 671:		// outlet 상품
		    	sql += " AND pdt_discount_rate >= 30 ";
		        break;
		    case 160:	// 네일 상품
		    	sql += " AND cat_id = 1 ";
		        break;
		    case 161:	// 페디 상품
		    	sql += " AND cat_id = 2";
		        break;
		    case 49:	// 케어&툴 상품
		    	sql += " AND cat_id = 3";
		        break;
		    case 432:	// 베스트 상품중에서 젤네일팁 상품
		    	sql += " AND pdt_sales_count >= 300 "; 
		    	sql += " AND scat_id = 2";
		        break;
		    case 431:	// 베스트 상품중에서 젤스트립 상품
		    	sql += " AND pdt_sales_count >= 300 "; 
		    	sql += " AND scat_id = 1";
		        break;
		}
		return sql;
	}

	@Override
	public ArrayList<DeptVO> selectTest() throws SQLException {
		int deptno;
		String dname;
		String loc;
		
		ArrayList<DeptVO> list = null;
		String sql = "SELECT * FROM dept";
		
		DeptVO dvo = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<DeptVO>();
				do {

					deptno = rs.getInt("deptno");
					dname = rs.getString("dname");
					loc = rs.getString("loc");

					dvo = new DeptVO().builder()
							.deptno(deptno)
							.dname(dname)
							.loc(loc)
							.build();

					list.add(dvo);

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
	public int getTotalRecords(int categoryNumber) throws SQLException {
		int totalRecords = 0;
		String sql = null;

		sql = "SELECT COUNT(*) FROM O_PRODUCT";
		sql = prdCondition(sql, categoryNumber);

		this.pstmt = this.conn.prepareStatement(sql);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalRecords;
	}

	@Override
	public int getTotalRecords(String searchWord) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalPages(int numberPerPage, int categoryNumber) throws SQLException {
		int totalPages = 0;
		String sql = " SELECT CEIL(COUNT(*)/?) FROM O_PRODUCT ";
		sql = prdCondition(sql, categoryNumber);
		
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) totalPages = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return totalPages;
	}

	@Override
	public int getTotalPages(int numberPerPage, String searchWord) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<ProductDTO> prdCate(int currentPage, int numberPerPage, int categoryNumber) throws SQLException {

		String pdt_name;
		int pdt_amount;
		int pdt_discount_rate;
		String pdt_img_url;
		int pdt_review_count;
		int pdt_discount_amount;
		
		ArrayList<ProductDTO> list = null;
		
		
		
		String sql = "SELECT * FROM ( "
		        + " SELECT ROWNUM no, t.* FROM ("
		        + " SELECT pdt_name, pdt_amount, pdt_discount_rate, pdt_img_url, pdt_review_count, pdt_adddate, pdt_sales_count "
		        + " FROM O_PRODUCT ";

		sql = prdCondition(sql, categoryNumber);

		sql += " ) t "
		     + " WHERE ROWNUM <= ? " // 상위 서브쿼리의 최대값 조건
		     + " ) b "
		     + " WHERE no >= ? "; // 바깥쪽에서 최소값 조건

		ProductDTO pdt = null;
		int start = (currentPage - 1) * numberPerPage + 1;
		int end = start + numberPerPage - 1;
		int totalRecords = getTotalRecords(categoryNumber);
		if (end > totalRecords) end = totalRecords;

		try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, end);
		    pstmt.setInt(2, start);
		    rs = pstmt.executeQuery();

		    if (rs.next()) {
		        list = new ArrayList<ProductDTO>();
		        do {
		            pdt_name = rs.getString("pdt_name");
		            pdt_amount = rs.getInt("pdt_amount");
		            pdt_discount_rate = rs.getInt("pdt_discount_rate");
		            pdt_img_url = rs.getString("pdt_img_url");
		            pdt_review_count = rs.getInt("pdt_review_count");
		            pdt_discount_amount = (pdt_discount_rate != 0)
		                ? pdt_amount - (int)(pdt_amount * pdt_discount_rate / 100.0f ) // 할인율 적용
		                : pdt_amount;

		            pdt = new ProductDTO().builder()
		                    .pdt_name(pdt_name)
		                    .pdt_amount(pdt_amount)
		                    .pdt_discount_rate(pdt_discount_rate)
		                    .pdt_img_url(pdt_img_url)
		                    .pdt_review_count(pdt_review_count)
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
	public ArrayList<ProductDTO> search(String searchWord, int currentPage, int numberPerPage) throws SQLException {

		String pdt_name;
		int pdt_amount;
		int pdt_discount_rate;
		String pdt_img_url;
		int pdt_review_count;
		int pdt_discount_amount;
		
		ArrayList<ProductDTO> list = null;
		
		
		
		String sql = "SELECT * FROM ( "
				+ "SELECT ROWNUM no, t.* FROM ("
				+ "SELECT pdt_name, pdt_amount, pdt_discount_rate, pdt_img_url, pdt_review_count, pdt_adddate "
				+ "FROM O_PRODUCT "
				+ " WHERE REGEXP_LIKE(pdt_name, ?, 'i')  "
				+ ") t "
				+ ") b "
				+ "WHERE no BETWEEN ? AND ? ";
		
		ProductDTO pdt = null;
		int start = (currentPage-1) * numberPerPage + 1;
		int end = start + numberPerPage -1;
		int totalRecords = getTotalRecords(searchWord);
		if (end > totalRecords) end = totalRecords;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchWord);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<ProductDTO>();
				do {

					pdt_name = rs.getString("pdt_name");
					pdt_amount = rs.getInt("pdt_amount");
					pdt_discount_rate = rs.getInt("pdt_discount_rate");
					pdt_img_url = rs.getString("pdt_img_url");
					pdt_review_count = rs.getInt("pdt_review_count");
					
					if (pdt_discount_rate != 0) {
						pdt_discount_amount = pdt_amount - (pdt_amount / pdt_discount_rate);						
					} else {
						pdt_discount_amount = pdt_amount;
					}

					pdt = new ProductDTO().builder()
							.pdt_name(pdt_name)
							.pdt_amount(pdt_amount)
							.pdt_discount_rate(pdt_discount_rate)
							.pdt_img_url(pdt_img_url)
							.pdt_review_count(pdt_review_count)
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
	
	
	/*
	 * @Override public boolean userCheck(String userId, String password) throws
	 * SQLException { String sql =
	 * "SELECT COUNT(*) FROM SCOTT.O_USER WHERE USER_LOGIN_ID = ? AND USER_PASSWORD = ?"
	 * ; try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	 * pstmt.setString(1, userId); pstmt.setString(2, password); try (ResultSet rs =
	 * pstmt.executeQuery()) { return rs.next() && rs.getInt(1) > 0; // 1이면있음 } } }
	 */

    @Override
    public String findLoginId(String name, String contact, String contactType) {
        String sql;
        if (contactType.equals("email")) {
            sql = "SELECT USER_LOGIN_ID FROM SCOTT.O_USER WHERE USER_NAME = ? AND USER_EMAIL = ?";
        } else {
            sql = "SELECT USER_LOGIN_ID FROM SCOTT.O_USER WHERE USER_NAME = ? AND USER_TEL = ?";
        }

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name); //이름
            pstmt.setString(2, contact); //연락처
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString("USER_LOGIN_ID"); // 같으면 아이디 반환
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean checkPw(String userId, String contact, String userName, String contactMethod) {

        String sql;

        if (contactMethod.equals("email")) {
           sql = "SELECT COUNT(*) FROM SCOTT.O_USER WHERE USER_LOGIN_ID = ? AND USER_NAME = ? AND USER_EMAIL = ?";

        } else {
            sql = "SELECT COUNT(*) FROM SCOTT.O_USER WHERE USER_LOGIN_ID = ? AND USER_NAME = ? AND USER_TEL = ?";
        }
        
        boolean userExists = false;

        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId); //아이디
            pstmt.setString(2, userName); //유저이름
            pstmt.setString(3, contact); // 연락처
            

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                userExists = rs.getInt(1) > 0; //있으면 true
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userExists;
    }

	@Override
	public String updatePw(String userId, String encryptedPassword) {
		
		String sql = "UPDATE SCOTT.O_USER SET USER_PASSWORD = ? WHERE USER_LOGIN_ID = ?";
	    
	    try (
	            PreparedStatement pstmt = conn.prepareStatement(sql)) {
	                
		        pstmt.setString(1, encryptedPassword);
		        pstmt.setString(2, userId);
		        pstmt.executeUpdate();
	        	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return null;
	}


    @Override
    public int validateUser(String userId, String password){
        String sql = "SELECT USER_ID, USER_PASSWORD FROM SCOTT.O_USER WHERE USER_LOGIN_ID = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, userId); //유저아이디
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    String storedPassword = rs.getString("USER_PASSWORD");
                    if (BCrypt.checkpw(password, storedPassword)) { // 둘의 비번이 같다면
                        return rs.getInt("USER_ID"); //PK값 받아오기
                    }
                }
            }
        } catch (SQLException e) {
			
			e.printStackTrace();
		}
        return -1;
    }

	@Override
	public boolean isDuplicate(String type, String value) throws SQLException {
		
		 String sql = "";
	        switch (type) {
	        
	            case "id":
	                sql = "SELECT COUNT(*) FROM O_USER WHERE USER_LOGIN_ID = ?";
	                break;
	            case "email":
	                sql = "SELECT COUNT(*) FROM O_USER WHERE USER_EMAIL = ?";
	                break;
	            case "phone":
	                sql = "SELECT COUNT(*) FROM O_USER WHERE USER_TEL = ?";
	                break;
	            default:
	                throw new IllegalArgumentException("Unknown type: " + type); //이 예외처리 필요없을꺼같은데
	        }

	        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
	            pstmt.setString(1, value);
	            try (ResultSet rs = pstmt.executeQuery()) {
	                if (rs.next()) {
	                    return rs.getInt(1) > 0; 
	                }
	            } 
	        }
	        return false;
	}

}
