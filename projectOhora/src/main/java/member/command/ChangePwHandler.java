package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class ChangePwHandler implements CommandHandler {

	  @Override
	    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	       
		    // 세션에서 user_id 값 가져오기
		    String userId = (String) request.getSession().getAttribute("user_id");
		    
		    //비번은 파라미터로 받아오기
	        String newPassword = request.getParameter("new_password");

	        // 비밀번호 암호화
	        String encryptedPassword = encryptPassword(newPassword);
	        
	        // 데이터베이스에 업데이트
	        OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
	        ohoraDAO.updatePw(userId, encryptedPassword);

	        response.sendRedirect(request.getContextPath() + "/ohora/changePw.jsp?message=pwChanged");
	        return null;

	    }

	    private String encryptPassword(String password) {
	    	// salt해준뒤 hashing 하기
	        return BCrypt.hashpw(password, BCrypt.gensalt());
	    }
}
