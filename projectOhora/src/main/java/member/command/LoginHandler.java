package member.command;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class LoginHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	 // 아이디와 비밀번호 가져오기
        String userId = request.getParameter("member_id");
        String inputPassword = request.getParameter("member_passwd");

        // 확인용
        System.out.println("전송된 아이디: " + userId);
        System.out.println("전송된 비밀번호: " + inputPassword);

        Connection conn = ConnectionProvider.getConnection();
        OhoraDAO dao = new OhoraDAOImpl(conn);

        int UserPk = -1;

        try {
            // 사용자 인증 확인을 위한 Primary Key 가져오기
        	UserPk = dao.validateUser(userId, inputPassword);
        } finally {
            conn.close();
        }

        // 로그인 성공 시 세션 생성
        if (UserPk != -1) {
            HttpSession session = request.getSession();
            session.setAttribute("userId", userId); // 로그인 아이디 저장 -> 굳이 저장할 필요가 있을까? 싶긴해
            session.setAttribute("UserPk", UserPk); // Primary Key 저장

            // 확인용 로그
            System.out.println("로그인 성공 - 세션에 저장된 UserPk: " + session.getAttribute("UserPk"));

            // 메인 페이지로 리다이렉트
            response.sendRedirect(request.getContextPath() + "/ohora/oho_main.jsp");          
        } else {
            // 인증 실패 시 에러 메시지 전달
            response.sendRedirect(request.getContextPath() + "/ohora/login.jsp?error=true");        
        }
 
        return null;
    }
}