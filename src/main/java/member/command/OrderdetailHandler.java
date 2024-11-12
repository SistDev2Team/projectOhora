package member.command;



import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;


public class OrderdetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			
		int ORD_PK = Integer.parseInt(request.getParameter("ORD_PK"));
		 
		System.out.println("받아온 ORD_PK : " + ORD_PK);
		
		OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
		
		//Order용
		Map<String, Object> order = ohoraDAO.getOrder(ORD_PK);
		
		//Orderdetails용
		List<Map<String, Object>> orderDetails = ohoraDAO.getOrderDetailsAll(ORD_PK);
		
		 System.out.println("Order 정보:");
		    for (Map.Entry<String, Object> entry : order.entrySet()) {
		        System.out.println(entry.getKey() + " : " + entry.getValue());
		    }
		    
		    // OrderDetails 정보 콘솔 출력
		    System.out.println("Order Details 정보:");
		    for (Map<String, Object> detail : orderDetails) {
		        System.out.println("------------");
		        for (Map.Entry<String, Object> entry : detail.entrySet()) {
		            System.out.println(entry.getKey() + " : " + entry.getValue());
		        }
		    }
		
		
		request.setAttribute("order", order);
	    request.setAttribute("orderDetails", orderDetails);

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/order_detail.jsp");
		dispatcher.forward(request, response);

				
		return null;
	}

}
