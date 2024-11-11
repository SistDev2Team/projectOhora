package mvc.command;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.service.OrderService;


public class OrderHandler implements CommandHandler {
	
	private OrderService orderPageService = new OrderService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("OrderHandler...");
		int userPk = 0;
		HttpSession session = request.getSession();
		if (session.getAttribute("userPk") != null) {
			userPk = (int) session.getAttribute("userPk");
		}
		
		String orderId = null;
		String rname = request.getParameter("rname");
		String zipcode = request.getParameter("rzipcode1");
		String addr = request.getParameter("raddr1") +" "+ request.getParameter("raddr2");
		String phone = request.getParameter("rphone2_1") + "-" + request.getParameter("rphone2_2") + "-" + request.getParameter("rphone2_3");
		String email = request.getParameter("email1") + request.getParameter("direcEmail");
		String payOption = request.getParameter("addr_paymethod");
		String password = "";
		String orderTime = "";
		String[] pdtNames = request.getParameterValues("pdtName");
		String[] pdtCountsArr = request.getParameterValues("pdtCount");
		String[] pdtAmountsArr = request.getParameterValues("pdtAmount");
		String[] pdtDcAmountsArr = request.getParameterValues("pdtDcAmount");
		String[] pdtIdArr = request.getParameterValues("pdtId");
		
		int[] pdtCounts = new int[pdtCountsArr.length];
        for (int i = 0; i < pdtCountsArr.length; i++) {
        	pdtCounts[i] = Integer.parseInt(pdtCountsArr[i]);
        }
        int[] pdtAmounts = new int[pdtAmountsArr.length];
        for (int i = 0; i < pdtAmountsArr.length; i++) {
        	pdtAmounts[i] = Integer.parseInt(pdtAmountsArr[i]);
        }
        int[] pdtDcAmounts = new int[pdtDcAmountsArr.length];
        for (int i = 0; i < pdtDcAmountsArr.length; i++) {
        	pdtDcAmounts[i] = Integer.parseInt(pdtDcAmountsArr[i]);
        }
		
		for (int i = 0; i < pdtNames.length; i++) {
			System.out.println("주문제품이름: "+pdtNames[i] + ", 주문제품수량: "+pdtCounts[i]+", 주문제품가격: "+pdtAmounts[i]+""
					+ ",제품id: "+ pdtIdArr[i] + " , 주문제품할인가격: "+pdtDcAmounts[i]);
		}
		
		int totalSum = Integer.parseInt(request.getParameter("totalSum"));
		int discountSum = Integer.parseInt(request.getParameter("discountSum"));
		int input_point = 0;
		int icpnId = 0;
		int icpnDc = 0;
		int deliFee = 3000;
		try {
			icpnId = Integer.parseInt(request.getParameter("icpnId"));
		} catch (Exception e) {
			icpnId = 0;
		}
		try {
			icpnDc = Integer.parseInt(request.getParameter("icpnDc"));
		} catch (Exception e) {
			icpnDc = 0;
		}
		try {
			input_point = Integer.parseInt(request.getParameter("input_point"));
		} catch (Exception e) {
			input_point = 0;
		}
		if ((totalSum - discountSum - icpnDc) > 50000) deliFee = 0;
		System.out.println("rname : " + rname + " , zipcode1: " + zipcode + ", addr : " + addr + " , phone: " + phone + " , email: " + email);
		System.out.println("totalSum : " + totalSum + " , discountSum: " + discountSum + ", input_point : " + input_point + ", icpnId : " + icpnId + ", icpnDc : " + icpnDc);
		System.out.println("payOption : " + payOption);

		String path = "/projectOhora/ohora/endorder_log.jsp";
		try {
			orderId = orderPageService.OrderProcess(userPk, icpnId, rname, addr, zipcode, phone, email, password, totalSum, icpnDc
					, discountSum, input_point, payOption, deliFee, pdtIdArr, pdtNames, pdtCounts, pdtAmounts, pdtDcAmounts);
			System.out.println("주문번호: "+orderId);
	        LocalDateTime currentTime = LocalDateTime.now();
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	        orderTime = currentTime.format(formatter);
	        path += "?orderId=" + orderId;
	        path += "&orderTime=" + orderTime;
	        
		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect(path);
		return null;
	}

}
