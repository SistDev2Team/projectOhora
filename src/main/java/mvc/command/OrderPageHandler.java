package mvc.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.service.OrderPageService;
import ohora.domain.AddrDTO;
import ohora.domain.CouponDTO;
import ohora.domain.ProductDTO;
import ohora.domain.UserDTO;

public class OrderPageHandler implements CommandHandler {
	
	private static final String ORDER_PAGE_PATH = "/ohora/member_order.jsp";
	private OrderPageService orderPageService = new OrderPageService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("OrderPageHandler process..");

		int userPk = 0;
		HttpSession session = request.getSession();
		if (session.getAttribute("userPk") != null) {
			userPk = (int) session.getAttribute("userPk");
		}

		String[] pdtidArr = request.getParameterValues("pdtId");
		String[] pdtCountArr = request.getParameterValues("pdtCount");
		
		if (pdtidArr == null || pdtCountArr == null) {
			response.sendRedirect("/projectOhora/ohora/main.do");
		}

		int[] pdtCountArray = new int[pdtCountArr.length];
		for (int i = 0; i < pdtCountArr.length; i++) {
			pdtCountArray[i] = Integer.parseInt(pdtCountArr[i]);
		}
		
		UserDTO userDTO = null;
		ArrayList<AddrDTO> addrList = null;
		ArrayList<CouponDTO> couponList = null;
		String[] emailArr = null;
		String[] telArr = null;
	
		ArrayList<ProductDTO> pdtList = null;
		
		try {
			if (userPk != 0) {
				userDTO = orderPageService.getUserInfo(userPk);
				addrList = orderPageService.getAddrList(userPk);
				couponList = orderPageService.getCouponList(userPk);
			}
			
			if (pdtidArr != null) {
				pdtList = orderPageService.getProductList(pdtidArr);
			}

			if (userDTO != null) {
				emailArr = userDTO.getUser_email() != null ? userDTO.getUser_email().split("@") : new String[]{"", ""};
				telArr = userDTO.getUser_tel() != null ? userDTO.getUser_tel().split("-") : new String[]{"", "", ""};				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("userDTO", userDTO);
		request.setAttribute("pdtList", pdtList);
		request.setAttribute("pdtCountArray", pdtCountArray);
		request.setAttribute("addrList", addrList);
		request.setAttribute("couponList", couponList);
		request.setAttribute("emailArr", emailArr);
		request.setAttribute("telArr", telArr);
		
		return ORDER_PAGE_PATH;
	}
	
}
