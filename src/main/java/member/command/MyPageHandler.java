package member.command;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class MyPageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
        HttpSession session = request.getSession();
        int userPk = (int) session.getAttribute("userPk");
        
        //확인용
        System.out.println("mypage 접속한 userPk:" +  userPk);
        
        OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
        UserDTO user = ohoraDAO.myPage(userPk);
        
        if (user != null) {
            System.out.println("User 정보: " + user.toString());
        } else {
            System.out.println("User 정보 없음 userPk: " + userPk);
        }
        
        int availableCoupons = ohoraDAO.getAvailableCoupons(userPk);
        int cartlist = ohoraDAO.getcartlist(userPk);
        
        // 주문 상태별 카운트 가져오기
        List<Integer> orderStateCounts = ohoraDAO.getOrderStateCounts(userPk);
        
        // 주문 내역 가져오기
        List<Map<String, Object>> orderDetails = ohoraDAO.getOrderDetails(userPk);

        // 날짜별로 그룹화
        Map<Date, List<Map<String, Object>>> groupedOrders = new LinkedHashMap<>();
        
        for (Map<String, Object> orderDetail : orderDetails) {
            Date orderDate = (Date) orderDetail.get("ORD_ORDERDATE"); //날짜 가져오기

            // 해당 날짜의 리스트가 없으면 새로 추가
            groupedOrders.computeIfAbsent(orderDate, k -> new ArrayList<>()).add(orderDetail);
        }
        
          System.out.println("Grouped Orders:");
		
		  for (Map.Entry<Date, List<Map<String, Object>>> entry :
		  groupedOrders.entrySet()) { Date orderDate = entry.getKey(); List<Map<String,
		 
		  Object>> orders = entry.getValue();
		  
		  System.out.println("Date: " + orderDate); for (Map<String, Object> order :
		  orders) { System.out.println("    Order Details: " + order); } }
		 

        // JSP로 데이터 전달
        request.setAttribute("groupedOrders", groupedOrders);

        
        //확인용
        
        System.out.println("Order State Counts: " + orderStateCounts);
        //System.out.println("Order Deatils: " + orderDetails);
        
                
        // userPoint포맷
        int userPoint = user.getUser_point();
        String formattedUserPoint = NumberFormat.getInstance().format(userPoint);
        
        
        request.setAttribute("user", user); // 포워딩 할꺼   
        request.setAttribute("availableCoupons", availableCoupons);//쿠폰도
        request.setAttribute("cartlist", cartlist);//장바구니도
        request.setAttribute("formattedUserPoint", formattedUserPoint);//포인트 포맷팅
        request.setAttribute("orderStateCounts", orderStateCounts);// 주문 상태별 카운트
        request.setAttribute("orderDetails", orderDetails); //주문 내역 가져오기
		 		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/oho_mypage.jsp");
        dispatcher.forward(request, response);
        
        return null;
	}

} //class

