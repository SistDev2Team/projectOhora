package mvc.command;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import ohora.domain.ProductDTO;
import ohora.persistence.CartDAO;
import ohora.persistence.CartDAOImpl;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class CartHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("CartHandler process..");
        
        int userPk = 0;
        HttpSession session = request.getSession();
        if (session.getAttribute("userPk") != null) {
           userPk = (int) session.getAttribute("userPk");
        }
        String auth = null;
        
        if (userPk == 0) {
        	String viewType = request.getParameter("viewType");
    		/* System.out.println("CartHandler: viewType 파라미터 - " + viewType); */

            // 사용자 쿠키에서 장바구니 데이터 가져오기
            Cookie[] cookies = request.getCookies();
            String cartData = null;

            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if ("cartItems".equals(cookie.getName())) {
                        cartData = cookie.getValue();
                        break;
                    }
                }
            }

            // cartData를 URL 디코딩
            if (cartData != null) {
                cartData = URLDecoder.decode(cartData, StandardCharsets.UTF_8);
            }

            try (Connection conn = ConnectionProvider.getConnection()) {
                OhoraDAO dao = new OhoraDAOImpl(conn);
                ArrayList<ProductDTO> cartItems = new ArrayList<>();

                if (cartData != null && !cartData.isEmpty()) {
                    try {
                        // JSON 파싱하여 상품 ID 목록 추출
                        JSONArray cartArray = JSONArray.fromObject(cartData);
                        String[] productIds = new String[cartArray.size()];
                        List<Integer> quantities = new ArrayList<>();

                        for (int i = 0; i < cartArray.size(); i++) {
                            JSONObject item = cartArray.getJSONObject(i);
                            productIds[i] = item.getString("pdtId");
                            quantities.add(item.getInt("quantity"));
                        }

                        // 상품 정보 조회
                        cartItems = dao.selectProductList(productIds);

                        // 수량 정보 추가 및 할인 적용된 가격 계산
                        for (int i = 0; i < cartItems.size(); i++) {
                            ProductDTO pdt = cartItems.get(i);		// ProductDTO  1번째 놈
                            int quantity = quantities.get(i);		// 수량 1번째놈
                            pdt.setPdt_count(quantity);  // 수량 설정
                            
                            // 할인 적용된 금액 계산 (할인율이 0일 때는 할인 금액 계산 생략)
                            if (pdt.getPdt_discount_rate() > 0) {
                                int discountAmount = pdt.getPdt_amount() - (int)(pdt.getPdt_amount() * pdt.getPdt_discount_rate() / 100.0);
                                pdt.setPdt_discount_amount(discountAmount);
                            } else {
                                pdt.setPdt_discount_amount(pdt.getPdt_amount()); // 할인율이 0일 경우 원래 가격 유지
                            }
                        }
                    } catch (Exception e) {
                        System.out.println("CartHandler: JSON 파싱 오류 - " + e.getMessage());
                        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "장바구니 데이터 형식 오류");
                        return null;
                    }
                }

                // JSON 응답 또는 JSP 포워딩
                if ("json".equals(viewType)) {
                    JSONObject result = new JSONObject();
                    result.put("cartItems", JSONArray.fromObject(cartItems));

                    response.setContentType("application/json; charset=UTF-8");
                    try (PrintWriter out = response.getWriter()) {
                        out.print(result.toString());
                        out.flush();
                    }
                    return null;
                } else {
                    request.setAttribute("cartItems", cartItems);
                    request.setAttribute("auth", auth);
                    return "/ohora/iscart.jsp";
                }
            } catch (SQLException e) {
                System.out.println("CartHandler: DB 오류 발생 - " + e.getMessage());
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "DB 오류 발생");
                return null;
            }
        } else {
        	//로그인 상태
        	auth = "auth";
        	ArrayList<ProductDTO> cartItems = new ArrayList<>();
        	
        	try (Connection conn = ConnectionProvider.getConnection()) {
        		CartDAO dao = new CartDAOImpl(conn);
        		cartItems = dao.getCartItems(userPk);
        	}
        	
        	request.setAttribute("cartItems", cartItems);
        	request.setAttribute("auth", auth);
            return "/ohora/iscart.jsp";
        	
        }
    }
    
}
