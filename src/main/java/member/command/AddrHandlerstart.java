package member.command;

import java.text.NumberFormat;
import java.util.Comparator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.domain.AddrDTO;
import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class AddrHandlerstart implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" AddrHandlerstart : 배송주소록 시작! ");
		
		
        HttpSession session = request.getSession();
        int userPk = (int) session.getAttribute("userPk");
        
        //확인용
        System.out.println("배송 주소록 접근!:" +  userPk);
        
        OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
        UserDTO user = ohoraDAO.myPage(userPk); // user 정보
        int availableCoupons = ohoraDAO.getAvailableCoupons(userPk); //쿠폰
        
        // userPoint포맷
        int userPoint = user.getUser_point();
        String formattedUserPoint = NumberFormat.getInstance().format(userPoint);
        
        List<AddrDTO> addressList = ohoraDAO.getAddressesAll(userPk);
        
        // addr_main이 "Y"면 위로
        addressList.sort(Comparator.comparing((AddrDTO addr) -> "Y".equals(addr.getAddr_main()) ? 0 : 1));
        
        System.out.println("Address List:");
        for (AddrDTO addr : addressList) {
            System.out.println(addr);
        }
        
        request.setAttribute("user", user); // 포워딩 할꺼   
        request.setAttribute("availableCoupons", availableCoupons);//쿠폰도
        request.setAttribute("formattedUserPoint", formattedUserPoint);//포인트 포맷팅
        
        request.setAttribute("addressList", addressList);//주소 보내기
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/addr.jsp");
        dispatcher.forward(request, response);
		
		
		return null;
	}

} //class












