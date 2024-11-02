package member.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class FindIdHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	    String name = request.getParameter("name"); 
	    String contactMethod = request.getParameter("contact_method"); // email or phone
	    
	    // 파라미터 확인용
        System.out.println("사용자가 입력한 이름: " + name);
        System.out.println("연락처 유형: " + contactMethod);
	    
	    // 연락처 값 가져오기
	    String contact;
	    if ("email".equals(contactMethod)) {
	        contact = request.getParameter("email"); // 이메일 입력 값 가져오기
	        System.out.println("이메일: " + contact); 
	    } else {
	        contact = request.getParameter("phone"); // 휴대폰 입력 값 가져오기
	        System.out.println("전화번호: " + contact); 
	    }
	    
	    

	   
	    OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
	    String userId = ohoraDAO.findLoginId(name, contact, contactMethod);

	    if (userId == null) {	        
	        response.sendRedirect(request.getContextPath() + "/ohora/findID.jsp?error=true");
	    } else {
	        request.setAttribute("userId", userId); //세션에서 들고갈 필요없지. 수정 햇음
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/showUserId.jsp");
	        dispatcher.forward(request, response);

	    }
	    return null;
	}



}//class
