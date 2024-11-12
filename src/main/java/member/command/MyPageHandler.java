package member.command;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import net.sf.json.JSONArray;
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

		// 주문 내역 가져오기 (ORD_ORDERDATE, OPDT_NAME, ORD_TOTAL_AMOUNT, ORD_PK)
		List<Map<String, Object>> orderDetails = ohoraDAO.getOrderDetails(userPk);

		// 날짜별로 그룹화 할것임 -> 날짜별로 리스트 만들것임
		//   key, value		
		Map<Date, List<Map<String, Object>>> groupedOrders = new LinkedHashMap<>();

        
		for (Map<String, Object> orderDetail : orderDetails) {			          
			Date orderDate = (Date) orderDetail.get("ORD_ORDERDATE"); //날짜별로		
			groupedOrders.computeIfAbsent(orderDate, k -> new ArrayList<>()).add(orderDetail);
		} 
		
		// 그냥 쿼리로 order by 하면됬는데 왜 이렇게 했을까 사서 고생하고 앉아있내
		Map<Date, List<Map<String, Object>>> sortedGroupedOrders = groupedOrders.entrySet() //List<Map<String, Object>>>>
		        .stream() // stream 변환
		        .sorted((e1, e2) -> e2.getKey().compareTo(e1.getKey())) //내림차순 정렬
		        .collect(Collectors.toMap( // 다시 Map으로 변환
		                Map.Entry::getKey, //Date
		                Map.Entry::getValue, //List<Map<String, Object>>
		                (oldValue, newValue) -> oldValue, // 이거 안해도대는거아닌가
		                LinkedHashMap::new // 순서유지
		        ));
		
		request.setAttribute("groupedOrders", sortedGroupedOrders);

		//확인용

		System.out.println("Order State Counts: " + orderStateCounts);
		System.out.println("Order Deatils: " + orderDetails);
		
		System.out.println("----groupedOrders----");
		for (Map.Entry<Date, List<Map<String, Object>>> entry : sortedGroupedOrders.entrySet()) {
		    Date orderDate = entry.getKey();
		    List<Map<String, Object>> orders = entry.getValue();
	   
		    System.out.println("날짜: " + orderDate);
		    		   
		    for (Map<String, Object> order : orders) {
		        System.out.println("  주문 상세:");
		        System.out.println("    주문 날짜: " + order.get("ORD_ORDERDATE"));
		        System.out.println("    상품명: " + order.get("OPDT_NAME"));
		        System.out.println("    총 금액: " + order.get("ORD_TOTAL_AMOUNT"));
		        System.out.println("    주문 PK: " + order.get("ORD_PK"));
		    }
		    System.out.println("-------------------------");
		}



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

