package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;

import com.util.JdbcUtil;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import ohora.domain.AddrDTO;
import ohora.domain.DeptVO;
import ohora.domain.ProductDTO;
import ohora.domain.RevMedia;
import ohora.domain.ReviewDTO;
import ohora.domain.ReviewRating;
import ohora.domain.UserDTO;

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
		    	sql += " AND pdt_sales_count >= 300 "
		    		+  " AND scat_id = 2";
		        break;
		    case 431:	// 베스트 상품중에서 젤스트립 상품
		    	sql += " AND pdt_sales_count >= 300 "
		    	    +  " AND scat_id = 1";
		        break;
		    case 125:	// 베스트 상품중에서 네일 상품
		    	sql += " AND pdt_sales_count >= 300 "
		    	    +  " AND cat_id = 1";
		        break;
		    case 127:	// 베스트 상품중에서 페디 상품
		    	sql += " AND pdt_sales_count >= 300 "
		    	    +  " AND cat_id = 2";
		        break;
		    case 540:	// 베스트 상품중에서 케어&툴 상품
		    	sql += " AND pdt_sales_count >= 300 "
		    	    +  " AND cat_id = 3";
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

		int pdt_id;					// 상품 ID
		int cat_id;					// 카테고리 ID
		int scat_id;				// 하위카테고리 ID
		int pdt_number;				// 옵션갯수
		String pdt_name;			// 상품명
		int pdt_amount;				// 상품가격
		int pdt_discount_rate;		// 할인율
		String pdt_img_url;			// 이미지경로
		int pdt_count;				// 재고수량
		int pdt_review_count;		// 리뷰 수
		int pdt_sales_count;		// 판매 수량
		Date pdt_adddate;			// 상품 등록일
		int pdt_viewcount;			// 조회수
	    int pdt_discount_amount;
		
		
		ArrayList<ProductDTO> list = null;
		
		
		
		String sql = "SELECT * FROM ( "
		        + " SELECT ROWNUM no, t.* FROM ("
		        + " SELECT pdt_id, cat_id, scat_id, pdt_number, pdt_name, pdt_amount, pdt_discount_rate, pdt_img_url, pdt_count, pdt_review_count,"
		        + " pdt_sales_count, pdt_adddate, pdt_viewcount "
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
		        	pdt_id = rs.getInt("pdt_id");
		        	cat_id = rs.getInt("cat_id");
		        	scat_id = rs.getInt("scat_id");
		        	pdt_number = rs.getInt("pdt_number");
		            pdt_name = rs.getString("pdt_name");
		            pdt_amount = rs.getInt("pdt_amount");
		            pdt_discount_rate = rs.getInt("pdt_discount_rate");
		            pdt_img_url = rs.getString("pdt_img_url");
		            pdt_count = rs.getInt("pdt_count");
		            pdt_review_count = rs.getInt("pdt_review_count");
		            pdt_sales_count = rs.getInt("pdt_sales_count");
		            pdt_adddate = rs.getDate("pdt_adddate");
		            pdt_viewcount = rs.getInt("pdt_viewcount");
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
		                    .pdt_review_count(pdt_review_count)
		                    .pdt_sales_count(pdt_sales_count)
		                    .pdt_adddate(pdt_adddate)
		                    .pdt_viewcount(pdt_viewcount)
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

		int pdt_id;
		String pdt_name;
		int pdt_amount;
		int pdt_discount_rate;
		String pdt_img_url;
		int pdt_review_count;
		int pdt_discount_amount;
		
		ArrayList<ProductDTO> list = null;
		
		
		
		String sql = "SELECT * FROM ( "
				+ "SELECT ROWNUM no, t.* FROM ("
				+ "SELECT pdt_id, pdt_name, pdt_amount, pdt_discount_rate, pdt_img_url, pdt_review_count, pdt_adddate "
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
					pdt_id = rs.getInt("pdt_id");
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
							.pdt_id(pdt_id)
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

	@Override
	public ProductDTO prdDetail(int productID) throws SQLException {
		int pdt_id = productID;		// 상품 ID
		int cat_id;					// 카테고리 ID
		int scat_id;				// 하위카테고리 ID
		int pdt_number;				// 옵션갯수
		String pdt_name;			// 상품명
		int pdt_amount;				// 상품가격
		int pdt_discount_rate;		// 할인율
		String pdt_img_url;			// 이미지경로
		int pdt_count;				// 재고수량
		int pdt_review_count;		// 리뷰 수
		int pdt_sales_count;		// 판매 수량
		Date pdt_adddate;			// 상품 등록일
		int pdt_viewcount;			// 조회수
	    int pdt_discount_amount;

	    String sql = "SELECT * FROM O_PRODUCT WHERE pdt_id = ?";
	    
	    String pdtViewUpdate = "UPDATE O_PRODUCT SET pdt_viewcount = pdt_viewcount + 1 WHERE pdt_id = ?";
		ProductDTO pdtDetail = null;

		try {
			// 조회 수 증가 쿼리
	        try (PreparedStatement updatePstmt = conn.prepareStatement(pdtViewUpdate)) {
	            updatePstmt.setInt(1, pdt_id);
	            updatePstmt.executeUpdate();
	        }
	        
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, pdt_id);
		    rs = pstmt.executeQuery();

		    if (rs.next()) {
		        pdtDetail = new ProductDTO();
	        	pdt_id = rs.getInt("pdt_id");
	        	cat_id = rs.getInt("cat_id");
	            pdt_name = rs.getString("pdt_name");
	            pdt_amount = rs.getInt("pdt_amount");
	            pdt_discount_rate = rs.getInt("pdt_discount_rate");
	            pdt_img_url = rs.getString("pdt_img_url");
	            pdt_review_count = rs.getInt("pdt_review_count");
	            pdt_viewcount = rs.getInt("pdt_viewcount");
	            pdt_discount_amount = (pdt_discount_rate != 0)
	                ? pdt_amount - (int)(pdt_amount * pdt_discount_rate / 100.0f ) // 할인율 적용
	                : pdt_amount;

	            pdtDetail = new ProductDTO().builder()
		                    .pdt_name(pdt_name)
		                    .pdt_amount(pdt_amount)
		                    .pdt_discount_rate(pdt_discount_rate)
		                    .pdt_img_url(pdt_img_url)
		                    .pdt_review_count(pdt_review_count)
		                    .pdt_viewcount(pdt_viewcount)
		                    .pdt_discount_amount(pdt_discount_amount)
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
		return pdtDetail;

	}
	
	@Override
	public ArrayList<ProductDTO> prdOption(int pdt_id) throws SQLException {

	    ArrayList<ProductDTO> optPdt = new ArrayList<ProductDTO>();
	    ProductDTO pdt = null;
	    int cat_id = 0;

	    String sql2 = "SELECT cat_id FROM o_product WHERE pdt_id = ?";
	    pstmt = conn.prepareStatement(sql2);
	    pstmt.setInt(1, pdt_id);
	    rs = pstmt.executeQuery();

	    if (rs.next()) {
	        cat_id = rs.getInt("cat_id");
	    }

	    String sql = "SELECT * FROM o_product";
	    switch (cat_id) {
	        case 1: // 네일 상품일때
	            sql += " WHERE pdt_id BETWEEN 172 AND 175";
	            break;
	        case 2: // 페디 상품일때
	            sql += " WHERE pdt_id BETWEEN 169 AND 171";
	            break;
	    }

	    pstmt = conn.prepareStatement(sql);
	    rs = pstmt.executeQuery();

	    try {
	        while (rs.next()) {
	            pdt_id = rs.getInt("pdt_id");
	            int scat_id = rs.getInt("scat_id");
	            int pdt_number = rs.getInt("pdt_number");
	            String pdt_name = rs.getString("pdt_name");
	            int pdt_amount = rs.getInt("pdt_amount");
	            int pdt_discount_rate = rs.getInt("pdt_discount_rate");
	            String pdt_img_url = rs.getString("pdt_img_url");
	            int pdt_count = rs.getInt("pdt_count");
	            int pdt_review_count = rs.getInt("pdt_review_count");
	            int pdt_sales_count = rs.getInt("pdt_sales_count");
	            Date pdt_adddate = rs.getDate("pdt_adddate");
	            int pdt_viewcount = rs.getInt("pdt_viewcount");
	            int pdt_discount_amount = (pdt_discount_rate != 0)
	                ? pdt_amount - (int)(pdt_amount * pdt_discount_rate / 100.0f) // 할인율 적용
	                : pdt_amount;
	            String pdt_description = rs.getString("pdt_description");

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
	                .pdt_review_count(pdt_review_count)
	                .pdt_sales_count(pdt_sales_count)
	                .pdt_adddate(pdt_adddate)
	                .pdt_viewcount(pdt_viewcount)
	                .pdt_discount_amount(pdt_discount_amount)
	                .pdt_description(pdt_description)
	                .build();

	            optPdt.add(pdt);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    return optPdt;
	}

	@Override
	public ArrayList<ProductDTO> prdOptCmb(int pdt_id) throws SQLException {

	    ArrayList<ProductDTO> prdOptCmb = new ArrayList<>();  // 초기화 추가
	    ProductDTO pdt_ls = null;

	    String sql = "SELECT o.opt_name "
	            + " FROM o_product p "
	            + " JOIN o_pdtoption o ON p.pdt_id = o.pdt_id "
	            + " WHERE p.scat_id IS NOT NULL "
	            + " AND o.pdt_id = ? ";
	    pstmt = conn.prepareStatement(sql);
	    pstmt.setInt(1, pdt_id);
	    rs = pstmt.executeQuery();

	    try {
	        while (rs.next()) {
	            String opt_name = rs.getString("opt_name");  // 옵션명

	            pdt_ls = new ProductDTO().builder()
	                    .opt_name(opt_name)
	                    .build();

	            prdOptCmb.add(pdt_ls);  // NullPointerException 방지
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        rs.close();
	        pstmt.close();
	    }
	    return prdOptCmb;
	}
	
	//--------------------------------회원----------------------------------------
	
	@Override
	public void insertUser(UserDTO user) throws SQLException{
		String sql = "INSERT INTO SCOTT.O_USER ("
				+ "USER_ID, MEM_ID, AUTH_ID, USER_LOGIN_ID, USER_PASSWORD, "
				+ "USER_NAME, USER_EMAIL, USER_TEL, USER_BIRTH, USER_POINT, "
				+ "USER_SNSAGREE, USER_JOINDATE) "
				+ "VALUES ("
				+ "SCOTT.O_USER_SEQ.NEXTVAL, ?, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, ?)";

		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, user.getMem_id());
			pstmt.setInt(2, user.getAuth_id());
			pstmt.setString(3, user.getUser_login_id());
			pstmt.setString(4, user.getUser_password());
			pstmt.setString(5, user.getUser_name());
			pstmt.setString(6, user.getUser_email());
			pstmt.setString(7, user.getUser_tel());
			pstmt.setDate(8, new java.sql.Date(user.getUser_birth().getTime()));
			pstmt.setInt(9, user.getUser_point());
			pstmt.setString(10, user.getUser_snsagree());
			pstmt.setDate(11, new java.sql.Date(user.getUser_joindate().getTime()));

			pstmt.executeUpdate();
		}
	}
	
	@Override
	public UserDTO myPage(int userPk) {

		String sql = "SELECT USER_ID, USER_NAME, USER_POINT, MEM_ID, USER_LOGIN_ID, USER_TEL, USER_EMAIL, USER_SNSAGREE, USER_BIRTH "
				+ "FROM SCOTT.O_USER "               
				+ "WHERE USER_ID = ?";

		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, userPk);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return UserDTO.builder()
							.user_id(rs.getInt("USER_ID")) //userPk					
							.user_name(rs.getString("USER_NAME")) // 이름 필요
							.user_point(rs.getInt("USER_POINT")) // 등급 필요
							.mem_id(rs.getInt("MEM_ID")) // 추가된 MEM_ID 필드
							.user_login_id(rs.getString("USER_LOGIN_ID")) //유저로그인아이디
							.user_tel(rs.getString("USER_TEL")) //유저번호
							.user_email(rs.getString("USER_EMAIL")) // 이메일
							.user_snsagree(rs.getString("USER_SNSAGREE")) //수신동의여부
							.user_birth(rs.getDate("USER_BIRTH"))//생년월일
							.build();						
				}
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return null;
	}

	@Override
	public int getAvailableCoupons(int userPk) {

		String sql = "SELECT COUNT(*) AS available_coupons "
				+ "FROM SCOTT.O_ISSUEDCOUPON "
				+ "WHERE USER_ID = ? AND ICPN_ISUSED = 'N'";

		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, userPk);

			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return rs.getInt("available_coupons");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0; // 없으면 0

	}

	@Override
	public int getcartlist(int userPk) {

		String sql = "SELECT COUNT(CLIST_ID) AS cart_count FROM SCOTT.O_CARTLIST WHERE USER_ID = ?";

		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, userPk);

			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return rs.getInt("cart_count");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();		        
		}		    
		return 0;	
	}

	@Override
	public List<Integer> getOrderStateCounts(int userPk) {
		String sql = 
				"SELECT OPDT_STATE, COUNT(*) AS state_count " +
						"FROM SCOTT.O_ORDDETAIL " +
						"WHERE ORD_PK IN ( " +
						"SELECT ORD_PK " +
						"FROM SCOTT.O_ORDER " +
						"WHERE USER_ID = ? " +
						"AND ORD_ORDERDATE >= ADD_MONTHS(SYSDATE, -6) " +
						") " +
						"GROUP BY OPDT_STATE";

		// 4개의 고정된 상태에 대한 카운트를 저장할 리스트 초기화
		List<Integer> stateCounts = Arrays.asList(0, 0, 0, 0);
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, userPk);
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					String state = rs.getString("OPDT_STATE");
					int count = rs.getInt("state_count");

					switch (state) {
					case "상품준비중":
						stateCounts.set(0, count);
						break;
					case "배송준비중":
						stateCounts.set(1, count);
						break;
					case "배송중":
						stateCounts.set(2, count);
						break;
					case "배송완료":
						stateCounts.set(3, count);
						break;
					default:

						break;
					}
				}
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return stateCounts;
	}

	@Override
	public List<Map<String, Object>> getOrderDetails(int userPk) {
		String sql = 
				"SELECT o.ORD_PK, o.ORD_TOTAL_AMOUNT, od.OPDT_NAME, od.OPDT_AMOUNT, o.ORD_ORDERDATE " +
						"FROM SCOTT.O_ORDER o " +
						"JOIN SCOTT.O_ORDDETAIL od ON o.ORD_PK = od.ORD_PK " +
						"WHERE o.USER_ID = ? " +
						"AND o.ORD_ORDERDATE >= ADD_MONTHS(SYSDATE, -6)";

		List<Map<String, Object>> orderDetails = new ArrayList<>();
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, userPk);
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					Map<String, Object> orderDetail = new HashMap<>();
					orderDetail.put("ORD_PK", rs.getString("ORD_PK")); //이거 필요없는디
					orderDetail.put("ORD_TOTAL_AMOUNT", rs.getInt("ORD_TOTAL_AMOUNT")); //결제금액
					orderDetail.put("OPDT_NAME", rs.getString("OPDT_NAME")); // 상품명
					orderDetail.put("OPDT_AMOUNT", rs.getInt("OPDT_AMOUNT")); // 상품금액
					orderDetail.put("ORD_ORDERDATE", rs.getDate("ORD_ORDERDATE")); //날짜

					orderDetails.add(orderDetail);
				}
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return orderDetails;
	}
	
	@Override
	public boolean updateUser(int userPk, Map<String, Object> fieldsToUpdate) {

		if (fieldsToUpdate == null || fieldsToUpdate.isEmpty()) return false; //이거 필요함?

		StringBuilder sql = new StringBuilder("UPDATE SCOTT.O_USER SET ");

		int count = 0;
		for (String key : fieldsToUpdate.keySet()) {
			if (count > 0) sql.append(", "); // 두번째 부턴 , 달아주기
			sql.append(key).append(" = ?");
			count++;
		}

		sql.append(" WHERE USER_ID = ?"); // 마지막에 조건문 달아주기

		try (PreparedStatement pstmt = conn.prepareStatement(sql.toString())) {
			int index = 1;

			for (Object value : fieldsToUpdate.values()) {
				pstmt.setObject(index++, value);
			}
			pstmt.setInt(index, userPk);
			
	        int rowsAffected = pstmt.executeUpdate();
	        return rowsAffected > 0; // 성공 여부 반환	    
	        
		} catch (SQLException e) {
			e.printStackTrace();
			return false; // 실패 시 false 반환

		}

	}

	@Override
	public boolean updateAddress(int userPk, String postcode, String addr1, String addr2) {
		
		System.out.println(" 주소정보 업데이트... " + userPk + ", postcode: " + postcode + ", addr1: " + addr1 + "addr2: " + addr2 );

		String selectQuery = "SELECT COUNT(*) FROM SCOTT.O_ADDRESS WHERE USER_ID = ?";
		String updateQuery = "UPDATE SCOTT.O_ADDRESS SET ADDR_ZIPCODE = ?, ADDR_ADDRESS_MAIN = ?, ADDR_ADDRESS_DETAIL = ? WHERE USER_ID = ?";

		try (PreparedStatement selectStmt = conn.prepareStatement(selectQuery)) {
			selectStmt.setInt(1, userPk);
			ResultSet rs = selectStmt.executeQuery();
			rs.next();
			int addressCount = rs.getInt(1); // 해당 정보 있는지 먼저 확인해서
			System.out.println("addressCount: " + addressCount);
			rs.close();
			if (addressCount > 0) { // 있으면 실행
				try (PreparedStatement updateStmt = conn.prepareStatement(updateQuery)) {
					updateStmt.setString(1, postcode);
					updateStmt.setString(2, addr1);
					updateStmt.setString(3, addr2);
					updateStmt.setInt(4, userPk);
					int rowsAffected = updateStmt.executeUpdate();
	                return rowsAffected > 0; // 성공 여부 반환
				}
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}

	@Override
	public AddrDTO getAddresses(int userPk) {
		
		AddrDTO address = null;

		 String sql = "SELECT ADDR_ID, USER_ID, ADDR_NICK, ADDR_NAME, ADDR_HTEL, ADDR_TEL, " +
	             "ADDR_ADDRESS_MAIN, ADDR_ADDRESS_DETAIL, ADDR_ZIPCODE, ADDR_MAIN " +
	             "FROM SCOTT.O_ADDRESS " +
	             "WHERE USER_ID = ? AND ADDR_MAIN = 'Y'";

		    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
		        pstmt.setInt(1, userPk);  // userPk로 USER_ID를 조회

		        try (ResultSet rs = pstmt.executeQuery()) {
		            while (rs.next()) {
		                address = AddrDTO.builder()
		                        .addr_id(rs.getInt("ADDR_ID")) // pk
		                        .user_id(rs.getInt("USER_ID")) //userPk
		                        .addr_nick(rs.getString("ADDR_NICK")) //배송지명
		                        .addr_name(rs.getString("ADDR_NAME")) //수령인
		                        .addr_htel(rs.getString("ADDR_HTEL"))//집전화
		                        .addr_tel(rs.getString("ADDR_TEL"))//번호
		                        .addr_address_main(rs.getString("ADDR_ADDRESS_MAIN"))   // 기본 주소
		                        .addr_address_detail(rs.getString("ADDR_ADDRESS_DETAIL")) // 나머지 주소
		                        .addr_zipcode(rs.getString("ADDR_ZIPCODE"))// 우편번호
		                        .addr_main(rs.getString("ADDR_MAIN"))// 대표배송지
		                        .build();
		                
		            }
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		      
		    }

		    // 없다면 확인은 하자
		    if (address == null) {
		        System.out.println("USER_ID " + userPk + "값 없음!");
		    }

		    return address;
		
	}//update


	
	
	// 리뷰
	
	
	
	//제품아이디대로 리뷰뿌리기
		@Override
		public ArrayList<ReviewDTO> select(Connection conn, int prd_id , String sort) throws SQLException {
			System.out.println("리뷰 impl 진입.." + prd_id +" / " + sort);
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			ArrayList<ReviewDTO> list  = null;
			String sql = "";

			if (sort.equals("recommend")) {
				sql = " SELECT * FROM ( "
						+  " SELECT REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, " 
						+	" CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, " 
						+	" u.USER_NAME " 
						+	" FROM o_review r " 
						+	" JOIN o_user u ON r.user_id = u.user_id " 
						+	" WHERE pdt_id = ? " 
						+	" GROUP BY REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, u.USER_NAME " 
						+	" ORDER BY  CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, REV_GOOD_COUNT DESC "
						+  " ) WHERE ROWNUM < 3 ";
			} else if ( sort.equals("new")) {
				sql =  " SELECT * FROM ( "
						+	" SELECT REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, " 
						+	" CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, " 
						+	" u.USER_NAME " 
						+	" FROM o_review r " 
						+	" JOIN o_user u ON r.user_id = u.user_id " 
						+	" WHERE pdt_id = ? " 
						+	" GROUP BY REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, u.USER_NAME " 
						+	" ORDER BY  CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, REV_WRITEDATE DESC "
						+  " ) WHERE ROWNUM < 3 ";
			}else if ( sort.equals("rating")) {
				sql = " SELECT * FROM ( "
						+	" SELECT REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, " 
						+	" CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, " 
						+	" u.USER_NAME " 
						+	" FROM o_review r " 
						+	" JOIN o_user u ON r.user_id = u.user_id " 
						+	" WHERE pdt_id = ? " 
						+	" GROUP BY REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, u.USER_NAME " 
						+	" ORDER BY  CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, REV_RATING DESC "
						+  " ) WHERE ROWNUM < 3 ";

			}else if ( sort.equals("photo")) {
				sql = " SELECT * FROM ( "
						+ " SELECT REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, REV_RATING, "
						+ " REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, REV_ISPHOTO, "
						+ " REV_AGE_GROUP, REV_OPTION, PDT_ID, "
						+ " CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, "
						+ " u.USER_NAME "
						+ " FROM o_review r "
						+ " JOIN o_user u ON r.user_id = u.user_id "
						+ " WHERE pdt_id = ? "
						+ " ORDER BY CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, "
						+ " CASE WHEN REV_ISPHOTO = 'Y' THEN 0 ELSE 1 END "
						+ " ) WHERE ROWNUM < 3 ";
			}

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, prd_id);

				System.out.println(sql);
				rs = pstmt.executeQuery();


				if( rs.next() ) {
					list = new ArrayList<ReviewDTO>(); 
					do {
						ReviewDTO review = new ReviewDTO().builder()
								.rev_id(rs.getInt("rev_id"))
								.user_id(rs.getInt("user_id"))
								.ord_pk(rs.getInt("ord_pk"))
								.opdt_id(rs.getInt("opdt_id"))
								.rev_content(rs.getString("rev_content"))
								.rev_writedate(rs.getDate("rev_writedate"))
								.rev_rating(rs.getInt("rev_rating"))
								.rev_good_count(rs.getInt("rev_good_count"))
								.rev_bad_count(rs.getInt("rev_bad_count"))
								.rev_comment_count(rs.getInt("rev_comment_count"))
								.rev_isrecommend(rs.getString("rev_isrecommend") != null ? rs.getString("rev_isrecommend") : "N" )
								.rev_isphoto(rs.getString("rev_isphoto")!= null ? rs.getString("rev_isphoto") : "N")
								.rev_age_group(rs.getString("rev_age_group")!= null ? rs.getString("rev_age_group") : "모름")
								.rev_option(rs.getString("rev_option")!= null ? rs.getString("rev_option") : "없음")
								.pdt_id(rs.getInt("pdt_id"))
								.user_name(rs.getString("user_name"))
								.newImg( new Boolean(  rs.getString("new") ) )
								//.mediacount(rs.getInt("mediacount") )
								.build();

						list.add(review);
					} while (rs.next());

				} // if 

			} catch (Exception e) {
				System.out.println("리뷰 Impl 캐치잡혔따");
				e.printStackTrace();
			} finally {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				// conn.close(); // 커넥션풀 반환..
			}

			System.out.println(list);
			return list;
		}


		//리뷰 댓글보기
		@Override
		public JSONObject selectComment(Connection conn, int review_id) throws SQLException {
			System.out.println("리뷰 댓글 impl 진입.." + review_id);
			PreparedStatement pstmt = null;
			ResultSet rs = null;  


			String sql = " select CMT_ID, REV_ID , oc.USER_ID , CMT_WRITEDATE , CMT_CONTENT , USER_NAME "
					+ " from o_comment oc JOIN o_user ou ON oc.user_id = ou.user_id "
					+ " where rev_id = ? "
					+ " order by cmt_writedate DESC ";

			//{ } json객체 만든다
			JSONObject jsonData = new JSONObject();
			// [] 배열 만들기
			JSONArray jsonCmtArray = new JSONArray();

			try{

				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, review_id);
				rs = pstmt.executeQuery(); 

				while( rs.next() ){ 
					int cmt_id = rs.getInt("cmt_id");
					int rev_id = rs.getInt("rev_id");
					int user_id = rs.getInt("user_id");
					Date writedate = rs.getDate("cmt_writedate");
					String cmt_content = rs.getString("cmt_content");
					String cmt_writer = rs.getString("user_name");

					String cmt_writedate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(writedate);

					JSONObject jsonComment = new JSONObject(); 
					jsonComment.put("cmt_id", cmt_id);
					jsonComment.put("rev_id", rev_id);
					jsonComment.put("user_id", user_id);
					jsonComment.put("cmt_writedate", cmt_writedate);   
					jsonComment.put("cmt_content", cmt_content);
					jsonComment.put("user_name", cmt_writer);


					jsonCmtArray.add(jsonComment);    

				}// while

				jsonData.put("comments",jsonCmtArray);

				System.out.println(jsonData);

			}catch(Exception e){
				e.printStackTrace();
				System.out.println("리뷰댓글 Impl 캣치..");
			}finally{
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(conn);
			}


			return jsonData;

		}

		//사진 총량 뿌리기
		@Override
		public ArrayList<ReviewDTO> midiaCount(Connection conn, int prd_id) throws SQLException {

			System.out.println("리뷰 미디어 impl 진입..");
			PreparedStatement pstmt = null;
			ResultSet rs = null;  

			ArrayList<ReviewDTO> list  = null;

			String sql = " select COUNT(CASE WHEN rev_isphoto='Y' THEN 1 END) mediaCnt  "
					+ " from o_review "
					+ " WHERE pdt_id = ? ";

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, prd_id);

				//System.out.println(sql);
				rs = pstmt.executeQuery();


				if( rs.next() ) {
					list = new ArrayList<ReviewDTO>(); 
					do {
						ReviewDTO media = new ReviewDTO().builder()
								.mediaCnt(rs.getInt("mediaCnt"))
								.build();

						list.add(media);
					} while (rs.next());

				} // if 

			} catch (Exception e) {
				System.out.println("리뷰미디어 Impl 캐치잡혔따");
				e.printStackTrace();
			} finally {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				//conn.close(); // 커넥션풀 반환..
			}

			System.out.println("미디어 >> " + list);
			return list;

		}

		//댓글작성
		@Override
		public int insertComment(Connection conn, int revId, int userId, String comment, Date writedate) throws SQLException {
			System.out.println("리뷰 댓글 작성 impl 진입..");
			PreparedStatement pstmt = null;
			ResultSet rs = null;  

			int rowCount = 0;

			String sql = " INSERT INTO o_comment VALUES ( O_COMMENT_SEQ.NEXTVAL , ? , ? ,? ,?  ) ";
			String sql2 = " UPDATE o_review SET rev_comment_count = rev_comment_count + 1 WHERE rev_id = ?  " ;


			//{ } json객체 만든다
			JSONObject jsonData = new JSONObject();
			// [] 배열 만들기
			JSONArray jsonCmtArray = new JSONArray();

			try{

				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, revId);
				pstmt.setInt(2, userId);
				pstmt.setDate(3, new java.sql.Date(writedate.getTime())); 
				pstmt.setString(4, comment);

				rowCount = pstmt.executeUpdate();

				if (rowCount ==1) {
					PreparedStatement pstmt2 = null;

					pstmt2 = conn.prepareStatement(sql2);
					pstmt2.setInt(1, revId);

					rowCount = pstmt2.executeUpdate();
				}

			}catch(Exception e){
				e.printStackTrace();
				System.out.println("리뷰댓글작성 Impl 캣치..");
			}finally{
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(conn);
			}


			return rowCount;

		}

		//리뷰 사진
		@Override
		public ArrayList<RevMedia> selectPhotos(Connection conn, int pdt_id) throws SQLException {

			System.out.println("리뷰 사진 뿌릴 impl 진입..");
			PreparedStatement pstmt = null;
			ResultSet rs = null;  

			String sql = " select u.rev_id , filesystemname, fileoriginalname "
					+ " from o_revurl u JOIN o_review w ON u.rev_id = w.rev_id "
					+ " WHERE pdt_id = ? ";
			ArrayList<RevMedia> list  = null;


			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,pdt_id);

				rs = pstmt.executeQuery();


				if( rs.next() ) {
					list = new ArrayList<RevMedia>(); 
					do {
						RevMedia media = new RevMedia().builder()
								.rev_id(rs.getInt("rev_id"))
								.filesystemname(rs.getString("filesystemname"))
								.fileoriginalname(rs.getString("fileoriginalname"))
								.build();

						list.add(media);
					} while (rs.next());

				} // if 

			} catch (Exception e) {
				System.out.println("사진들 Impl 캐치잡혔따");
				e.printStackTrace();
			} finally {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				//conn.close(); // 커넥션풀 반환..
			}

			System.out.println("사진들 >> " + list);
			return list;

		}

		//평점 평균
		@Override
		public ReviewRating ratingAVG(Connection conn, int pdt_id) throws SQLException {
			System.out.println("평점 평균 impl 진입..");
			PreparedStatement pstmt = null;

			ResultSet rs = null;  

			String sql = " SELECT "
					+ " AVG(rev_rating) AS avg_rating, "
					+ " COUNT(CASE WHEN rev_rating = 5 THEN 1 END) AS count_5, "
					+ " COUNT(CASE WHEN rev_rating = 4 THEN 1 END) AS count_4, "
					+ " COUNT(CASE WHEN rev_rating = 3 THEN 1 END) AS count_3, "
					+ " COUNT(CASE WHEN rev_rating = 2 THEN 1 END) AS count_2, "
					+ " COUNT(CASE WHEN rev_rating = 1 THEN 1 END) AS count_1 "
					+ " FROM o_review "
					+ " WHERE pdt_id = ? ";

			ReviewRating rating  = null;

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,pdt_id);

				rs = pstmt.executeQuery();

				if( rs.next() ) {

					do {
						rating = new ReviewRating().builder()
								.avg_rating(rs.getDouble("avg_rating"))
								.count_5(rs.getInt("count_5"))
								.count_4(rs.getInt("count_4"))
								.count_3(rs.getInt("count_3"))
								.count_2(rs.getInt("count_2"))
								.count_1(rs.getInt("count_1"))
								.build();

					} while (rs.next());

				} // if 

			} catch (Exception e) {
				System.out.println("평점 Impl 캐치잡혔따");
				e.printStackTrace();
			} finally {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				//conn.close(); // 커넥션풀 반환..
			}

			return rating;
		}

		@Override
		public JSONObject selectMoreReview(Connection conn , int currentPage,  int pdtId, String sort) throws SQLException {
			System.out.println("리뷰 더보기 버튼 impl 진입..");
			PreparedStatement pstmt = null;
			PreparedStatement pstmt2 = null;
			PreparedStatement pstmt3 = null;
			ResultSet rs = null;  
			ResultSet rs2 = null;  
			ResultSet rs3 = null;  

			System.out.println("리뷰 더보기 impl 넘어온 값 : " + currentPage+ "/" +pdtId +"/" +sort);

			JSONObject jsonData = new JSONObject();

			JSONArray jsonRevArray = new JSONArray();
			// [] 배열 만들기


			JSONObject photoData = new JSONObject();
			// 이건 포토 개개별 JSON 객체
			JSONArray photosArray = null; 
			//이건 포토 개개별을 묶을 어레이 => 리뷰 객체에 넣어주면 객체안에 배열 완성..
			String sql = "";

			if (sort.equals("recommend")) {
				sql = 
				" SELECT e.* "
				+ " FROM ( "
				+ " SELECT ROWNUM rnn, tmp.* "
				+ " FROM ( " 
				+ " SELECT ROWNUM rn, REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, " 
				+ " REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, " 
				+ " REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, " 
				+ " CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, " 
				+ " u.USER_NAME " 
				+ " FROM o_review r " 
				+ "JOIN o_user u ON r.user_id = u.user_id "
				+ " WHERE pdt_id = ? " 
				+ " ORDER BY CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, REV_GOOD_COUNT DESC " 
				+ " ) tmp " 
				+ " ORDER BY  rn ASC "
				+ " ) e "
				+ " WHERE rnn >= (?*2)+1 AND rnn <= (?*2)+2 "
				+ " ORDER BY  rnn ASC ";
			} else if (sort.equals("new")) {
				sql =
				" SELECT e.* "
				+ " FROM ( "
				+ " SELECT ROWNUM rnn, tmp.* "
				+ " FROM ( " 
				+ " SELECT ROWNUM rn, REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, " 
				+ " REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, " 
				+ " REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, " 
				+ " CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, " 
				+ " u.USER_NAME " 
				+ " FROM o_review r " 
				+ "JOIN o_user u ON r.user_id = u.user_id "
				+ " WHERE pdt_id = ? " 
				+ " ORDER BY CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, REV_WRITEDATE DESC " 
				+ " ) tmp " 
				+ " ORDER BY  rn ASC "
				+ " ) e "
				+ " WHERE rnn >= (?*2)+1 AND rnn <= (?*2)+2 "
				+ " ORDER BY  rnn ASC ";
			} else if (sort.equals("rating")) {
				sql = 
				" SELECT e.* "
				+ " FROM ( "
				+ " SELECT ROWNUM rnn, tmp.* "
				+ " FROM ( " 
				+ " SELECT ROWNUM rn, REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, " 
				+ " REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, " 
				+ " REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, " 
				+ " CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, " 
				+ " u.USER_NAME " 
				+ " FROM o_review r " 
				+ "JOIN o_user u ON r.user_id = u.user_id "
				+ " WHERE pdt_id = ? " 
				+ " ORDER BY CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, REV_RATING DESC " 
				+ " ) tmp " 
				+ " ORDER BY  rn ASC "
				+ " ) e "
				+ " WHERE rnn >= (?*2)+1 AND rnn <= (?*2)+2 "
				+ " ORDER BY  rnn ASC ";
			} else if (sort.equals("photo")) {
				sql = " SELECT e.* "
						+ " FROM ( "
						+ " SELECT ROWNUM rnn, tmp.* "
						+ " FROM ( " 
						+ " SELECT ROWNUM rn, REV_ID, r.USER_ID, ORD_PK, OPDT_ID, REV_CONTENT, REV_WRITEDATE, " 
						+ " REV_RATING, REV_GOOD_COUNT, REV_BAD_COUNT, REV_COMMENT_COUNT, REV_ISRECOMMEND, " 
						+ " REV_ISPHOTO, REV_AGE_GROUP, REV_OPTION, PDT_ID, " 
						+ " CASE WHEN (SYSDATE - REV_WRITEDATE) < 1 THEN 'true' ELSE 'false' END AS new, " 
						+ " u.USER_NAME " 
						+ " FROM o_review r " 
						+ "JOIN o_user u ON r.user_id = u.user_id "
						+ " WHERE pdt_id = ? " 
						+ " ORDER BY CASE WHEN REV_ISRECOMMEND = 'Y' THEN 0 ELSE 1 END, CASE WHEN REV_ISPHOTO = 'Y' THEN 0 ELSE 1 END " 
						+ " ) tmp " 
						+ " ORDER BY  rn ASC "
						+ " ) e "
						+ " WHERE rnn >= (?*2)+1 AND rnn <= (?*2)+2 "
						+ " ORDER BY  rnn ASC ";
			}


			String sql2 = " SELECT COUNT(*) allRevCnt "
					+ " FROM o_review "
					+ " WHERE pdt_id = ? " ;



			System.out.println("sql :" +sql);
			System.out.println("sql2 :" +sql2);

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt2 = conn.prepareStatement(sql2);

				pstmt.setInt(1, pdtId);
				pstmt.setInt(2, currentPage);
				pstmt.setInt(3, currentPage);

				pstmt2.setInt(1, pdtId);



				//System.out.println(sql);
				rs = pstmt.executeQuery();
				rs2 = pstmt2.executeQuery();


				JSONObject photolist = null; 

				if (rs2.next()) {
					int allRevCnt = rs2.getInt(1); // 첫 번째 컬럼인 COUNT(*) 값을 가져옵니다.

					while (rs.next()) {
						int rev_id = rs.getInt("rev_id");
						int user_id = rs.getInt("user_id");
						int ord_pk = rs.getInt("ord_pk");
						int opdt_id = rs.getInt("opdt_id");
						int rev_comment_count = rs.getInt("rev_comment_count");
						String rev_isrecommend = rs.getString("rev_isrecommend") != null ? rs.getString("rev_isrecommend") : "N" ;
						String rev_isphoto = rs.getString("rev_isphoto")!= null ? rs.getString("rev_isphoto") : "N" ;
						String rev_age_group = rs.getString("rev_age_group")!= null ? rs.getString("rev_age_group") : "모름";
						int pdt_id = rs.getInt("pdt_id");
						String user_name = rs.getString("user_name");
						Boolean newImg = new Boolean(  rs.getString("new") );
						String rev_content = rs.getString("rev_content");
						Date rev_writedate = rs.getDate("rev_writedate");
						int rev_rating = rs.getInt("rev_rating");
						int rev_good_count = rs.getInt("rev_good_count");
						int rev_bad_count = rs.getInt("rev_bad_count");

						//안에서 포토 리뷰번호별 분리
						String sql3 = " SELECT r.rev_id rev_id , filesystemname "
								+ " FROM o_review r JOIN o_revurl u ON r.rev_id = u.rev_id "
								+ " WHERE r.rev_id = ? ";

						pstmt3 = conn.prepareStatement(sql3);
						pstmt3.setInt(1, rev_id);

						rs3 = pstmt3.executeQuery();


						photolist = new JSONObject();
						photosArray = new JSONArray();

						while (rs3.next()) {
							String filesystemname = rs3.getString("filesystemname");

							photolist.put("filesystemname",filesystemname);

							photosArray.add(photolist); // 포토 배열 완성
						}

						String formattedDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(rev_writedate);

						JSONObject list = new JSONObject();
						list.put("rev_id", rev_id);
						list.put("user_id", user_id);
						list.put("ord_pk", ord_pk);
						list.put("opdt_id", opdt_id);
						list.put("rev_comment_count", rev_comment_count);
						list.put("rev_isrecommend", rev_isrecommend);
						list.put("rev_isphoto", rev_isphoto);
						list.put("rev_age_group", rev_age_group);
						list.put("pdt_id", pdt_id);
						list.put("newImg", newImg);
						list.put("user_name", user_name);
						list.put("rev_content", rev_content);
						list.put("rev_writedate", formattedDate);
						list.put("rev_rating", rev_rating);
						list.put("rev_good_count", rev_good_count);
						list.put("rev_bad_count", rev_bad_count);
						list.put("allRevCnt", allRevCnt); // 전체 리뷰 개수
						list.put("photos", photosArray );

						jsonRevArray.add(list);

					}

				}


				jsonData.put("reviews", jsonRevArray);



			} catch (Exception e) {
				System.out.println("리뷰 더보기 Impl 캐치잡혔따");
				e.printStackTrace();
			} finally {
				if (rs != null) rs.close();
				if (rs2 != null) rs2.close();
				if (rs3!= null) rs3.close();
				if (pstmt != null) pstmt.close();
				if (pstmt2 != null) pstmt2.close();
				if (pstmt3 != null) pstmt3.close();

			}

			System.out.println(jsonData);
			return jsonData;
		}

	
	

	
}

































