package member.command;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.util.ConnectionProvider;
import mvc.command.CommandHandler;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class LoginHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        // 로그아웃 처리
        String action = request.getParameter("action");
        if ("logout".equals(action)) {
        	System.out.println("로그아웃!");
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate(); // 세션 무효화하기
            }
            response.sendRedirect(request.getContextPath() + "/ohora/oho_main.jsp");
            return null;
        }

        // 로그인 처리
        String userId = request.getParameter("member_id");
        String inputPassword = request.getParameter("member_passwd");

        System.out.println("전송된 아이디: " + userId);
        System.out.println("전송된 비밀번호: " + inputPassword);


        int userPk = -1;

        try (Connection conn = ConnectionProvider.getConnection()) {
            OhoraDAO dao = new OhoraDAOImpl(conn);
            userPk = dao.validateUser(userId, inputPassword);
        } 
             

        if (userPk != -1) { // 로그인 성공 시 세션 생성
            HttpSession session = request.getSession();
            
			/*
			 * if (session != null) { session.invalidate(); // 이걸 해줘야 할까? }
			 */
            
            session.setAttribute("userId", userId); 
            session.setAttribute("userPk", userPk);

            System.out.println("로그인 성공 - 세션에 저장된 userPk: " + session.getAttribute("userPk"));
            System.out.println("로그인 성공 - 세션에 저장된 userId: " + session.getAttribute("userId"));
            
            // 원래는 여기서 세션만 생성 해 주고 말았잖아. 근데 이제는 성공 했다면 여기서 원래 페이지로 보내줘야지
            // 그럼 여기서 원래 Url을 불러와서, 로그인 성공했다면 여기로 보내주면 되겠지?
            String originalUrl = (String) session.getAttribute("originalUrl");
            
            System.out.println("originalUrl 확인! " + originalUrl);
            
            if (originalUrl != null) { // 잘 불러져 왔다면, 
                session.removeAttribute("originalUrl"); // 제거를 해주는게 좋겠지?
                response.sendRedirect(originalUrl); // 그리고 이동 해 주면 되겠지?
            } else {
            	response.sendRedirect(request.getContextPath() + "/ohora/oho_main.jsp"); //애초에 로그인페이지에서 왔다면?
            }          
        } else {
            // 인증 실패 시 에러 메시지 전달
            response.sendRedirect(request.getContextPath() + "/ohora/login.jsp?error=true");
        }

        return null;
    }
}