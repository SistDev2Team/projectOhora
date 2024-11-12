package member.command;

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

public class AddrmanageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		 HttpSession session = request.getSession();
	     int userPk = (int) session.getAttribute("userPk");
		
		String addrNick = request.getParameter("ADDR_NICK");
        String addrName = request.getParameter("ADDR_NAME");
        String addrHtel = request.getParameter("ADDR_HTEL1") + "-" + request.getParameter("ADDR_HTEL2") + "-" + request.getParameter("ADDR_HTEL3");
        String addrTel = request.getParameter("ADDR_TEL1") + "-" + request.getParameter("ADDR_TEL2") + "-" + request.getParameter("ADDR_TEL3");
        String addrMain = request.getParameter("ADDR_ADDRESS_MAIN");
        String addrDetail = request.getParameter("ADDR_ADDRESS_DETAIL");
        String addrZipcode = request.getParameter("ADDR_ZIPCODE");
        String addrMainFlag = request.getParameter("ADDR_MAIN") != null ? "Y" : "N";
        
        //확인
        System.out.println("addrNick: " + addrNick);
        System.out.println("addrName: " + addrName);
        System.out.println("addrHtel: " + addrHtel);
        System.out.println("addrTel: " + addrTel);
        System.out.println("addrMain: " + addrMain);
        System.out.println("addrDetail: " + addrDetail);
        System.out.println("addrZipcode: " + addrZipcode);
        System.out.println("addrMainFlag: " + addrMainFlag);
		System.out.println("userPk : " + userPk);
		
		OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
		
		//없으면 Y로 바꾸자
		if ("N".equals(addrMainFlag) && ohoraDAO.getAddressCountByUser(userPk) == 0) {
            addrMainFlag = "Y";
        }
		
	     AddrDTO addrDTO = AddrDTO.builder()
	                .user_id(userPk)
	                .addr_nick(addrNick)
	                .addr_name(addrName)
	                .addr_htel(addrHtel)
	                .addr_tel(addrTel)
	                .addr_address_main(addrMain)
	                .addr_address_detail(addrDetail)
	                .addr_zipcode(addrZipcode)
	                .addr_main(addrMainFlag)
	                .build();
        
       
        
        // addrMainFlag 이게 Y 면 update 해줘야지      
        if ("Y".equals(addrDTO.getAddr_main())) {
            ohoraDAO.resetDefaultAddress(userPk);
        }
                   
        ohoraDAO.insertAddress(addrDTO);
        
        System.out.println("주소 추가 성공!");
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/addrstart.do");
        System.out.println("성공!");
        dispatcher.forward(request, response);
	
	
		return null;
	}

}
