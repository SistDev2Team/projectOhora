package member.command;

import java.text.SimpleDateFormat;
import java.util.Date;
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

public class EditstartHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 세션에서 userPk 가져오기 -> 왜? 이 값으로 DB에서 찾아와야 하잖아.
        HttpSession session = request.getSession();
        int userPk = (int) session.getAttribute("userPk"); // 세션에서 USER_ID 가져오기
        
        
        OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
        
        UserDTO user = ohoraDAO.myPage(userPk); 
        
        AddrDTO address = ohoraDAO.getAddresses(userPk);
        
        System.out.println("User 정보: " + user);
        
        System.out.println("주소 dto 정보 " + address);
               
        
        Date userBirthDate = user.getUser_birth(); 
        if (userBirthDate != null) {
            
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String userBirth = dateFormat.format(userBirthDate);

            String birthYear = userBirth.substring(0, 4);
            String birthMonth = userBirth.substring(5, 7);
            String birthDay = userBirth.substring(8, 10);

            request.setAttribute("birthYear", birthYear);
            request.setAttribute("birthMonth", birthMonth);
            request.setAttribute("birthDay", birthDay);
        }
        
        String userTel = user.getUser_tel();
        
        if (userTel != null && userTel.contains("-")) {
        	
            String[] telParts = userTel.split("-");
            
            if (telParts.length == 3) {
            	
                String mobile1 = telParts[0];
                String mobile2 = telParts[1]; 
                String mobile3 = telParts[2]; 

             
                request.setAttribute("mobile1", mobile1);
                request.setAttribute("mobile2", mobile2);
                request.setAttribute("mobile3", mobile3);
            }
        }
        
       
        
        // 이거 포워딩 해주면 되겠지.
        request.setAttribute("user", user);
        request.setAttribute("address", address);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/oho_memInfo.jsp");
        dispatcher.forward(request, response);
	
		return null;
	}

}//class
