package member.command;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.domain.CouponDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class CouponHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		int userPk = (int) session.getAttribute("userPk"); //user_id
		
		System.out.println("userPk : " + userPk);
		
		OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
		
		List<CouponDTO> couponList = ohoraDAO.getCouponsByUserId(userPk);
		
		
		
		System.out.println("------Coupon List----");
		for (CouponDTO coupon : couponList) {
		    if (coupon != null) {
		        System.out.println("Coupon Info: " + coupon.getCpn_info());
		        System.out.println("Discount Rate: " + coupon.getCpn_discount_rate());
		        System.out.println("Condition Value: " + coupon.getCpn_con_value());
		        System.out.println("Apply: " + coupon.getCpn_apply());
		        System.out.println("Start Date: " + coupon.getCpn_startdate());
		        System.out.println("End Date: " + coupon.getCpn_enddate());
		        System.out.println("Discount Type: " + coupon.getCpn_discount_type());
		    } else {
		        System.out.println("Coupon is null");
		    }
		}



		 
		request.setAttribute("couponList", couponList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/coupon.jsp");
		
		dispatcher.forward(request, response);
		
		return null;
	}

}
