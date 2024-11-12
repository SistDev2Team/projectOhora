package member.command;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.domain.OrderDTO;
import ohora.domain.OrderDetailDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class OrderlistHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int userPk = (int) request.getSession().getAttribute("userPk");
		
		System.out.println("OrderlistHandler 접근! " + userPk);
		
		
		// 처음에는 90일로
		int days = request.getParameter("days") != null ? Integer.parseInt(request.getParameter("days")) : 90;
		
		System.out.println("days : " + days);
		
		
		OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
		
		//이제 여기에는 여러개의 OrderDTO와 그안에 여러개의 OrderdetailsDTO가 담기겠지
		List<OrderDTO> orderList = ohoraDAO.getOrdersWithDetails(userPk, days);
		
		request.setAttribute("orderList", orderList);
		
        // 확인 해보자
        System.out.println("=== 주문 내역 ===");
        for (OrderDTO order : orderList) {
            System.out.println("주문 ID: " + order.getOrdId());
            System.out.println("주문자: " + order.getOrdName());
            System.out.println("주문일자: " + order.getOrdOrderDate());
            System.out.println("총 금액: " + order.getOrdTotalAmount());
            System.out.println("주문 상세 내역:");

            for (OrderDetailDTO detail : order.getOrderDetails()) {
                System.out.println("  - 상품명: " + detail.getOpdtName());
                System.out.println("  - 가격: " + detail.getOpdtAmount());
                System.out.println("  - 수량: " + detail.getOpdtCount());
                System.out.println("  - 상태: " + detail.getOpdtState());
            }
            System.out.println("-------------------------");
        }
				
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/orderlist_log.jsp");
		
		dispatcher.forward(request, response);
		
		return null;
	}

}
