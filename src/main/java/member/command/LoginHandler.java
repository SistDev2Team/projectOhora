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
			response.sendRedirect(request.getContextPath() + "/ohora/main.do");
			return null;
		}

		// 로그인 처리
		String userId = request.getParameter("member_id");
		String inputPassword = request.getParameter("member_passwd");

		System.out.println("전송된 아이디: " + userId);
		System.out.println("전송된 비밀번호: " + inputPassword);


		int userPk;

		try (Connection conn = ConnectionProvider.getConnection()) {
			OhoraDAO dao = new OhoraDAOImpl(conn);
			userPk = dao.validateUser(userId, inputPassword);
		} 


		if (userPk > 0) { // 로그인 성공 시 세션 생성
			
			HttpSession session = request.getSession();

			session.setAttribute("userId", userId); 
			session.setAttribute("userPk", userPk);

			System.out.println("로그인 성공 - 세션에 저장된 userPk: " + session.getAttribute("userPk"));
			System.out.println("로그인 성공 - 세션에 저장된 userId: " + session.getAttribute("userId"));

            // loginHandlerstart 에서 생성된 originalUrl
			String originalUrl = (String) session.getAttribute("originalUrl");
			session.removeAttribute("originalUrl"); // 제거 필수!
			
			System.out.println("originalUrl 확인! " + originalUrl);
			
			if (originalUrl == null) {
			    originalUrl = request.getContextPath() + "/ohora/main.do";
			} // 진짜 혹시 몰라서? 근데 null 일 경우는 없겠지?
			
			response.sendRedirect(originalUrl);

 
			
			
		} else if (userPk == -2 ) { // 비밀번호 다름
			response.sendRedirect(request.getContextPath() + "/ohora/login.jsp?error=password");
		} else if (userPk == -3) { // 아이디 없음
			response.sendRedirect(request.getContextPath() + "/ohora/login.jsp?error=username");
		} else {
			response.sendRedirect(request.getContextPath() + "/ohora/login.jsp?error=unknown");
		}

		return null;
	}
}