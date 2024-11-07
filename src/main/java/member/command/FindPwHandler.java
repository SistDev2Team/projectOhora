package member.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class FindPwHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
       
        String userId = request.getParameter("user_id");
        String userName = request.getParameter("name");
        String contactMethod = request.getParameter("contact_method");
        String contact = "";

        if ("email".equals(contactMethod)) {
            contact = request.getParameter("email");
        } else{
            contact = request.getParameter("phone");
        }
        //파라미터 확인용
        System.out.println("입력된 userId: " + userId);
        System.out.println("입력된 userName: " + userName);
        System.out.println("연락 방법: " + contactMethod);
        System.out.println("연락처: " + contact);

        // DB처리
        OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
        boolean userExists = ohoraDAO.checkPw(userId,contact,userName,contactMethod);

     
        if (userExists) {
            // 아이디랑 연락방법, 연락처 들구가야댐
            request.setAttribute("userId", userId);
            request.setAttribute("contact", contact); 
            request.setAttribute("contact_method", contactMethod); 
            RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/checkPw.jsp");
            dispatcher.forward(request, response);
            return null;
        } else {
            // 리다이렉트 해주기 
        	response.sendRedirect(request.getContextPath() + "/ohora/FindPw.jsp?error=true");
            return null;
        }
    }
}