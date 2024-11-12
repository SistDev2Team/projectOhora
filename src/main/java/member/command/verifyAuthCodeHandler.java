package member.command;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.command.CommandHandler;

public class verifyAuthCodeHandler implements CommandHandler{
	
	private static final long VALID_DURATION = 3 * 60 * 1000;

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("verifyAuthCodeHandler 시작!");

		// 인증번호랑 세션 가져와서
		HttpSession session = request.getSession();
		String storedCode = (String) session.getAttribute("verificationCode");
		Date generationTime = (Date) session.getAttribute("generationTime");

		//입력값 받아서
		String authCode = request.getParameter("authCode");

		String status;
		String message;

		// 인증번호 및 유효 시간 검증
		if (storedCode == null || generationTime == null) {
			status = "error";
			message = "인증번호가 요청되지 않았습니다.";
		} else {
			// 현재 시간이라 인증번호 생성 시간 비교
			long currentTime = new Date().getTime();
			long timeElapsed = currentTime - generationTime.getTime();

			if (timeElapsed > VALID_DURATION) {
				
				status = "error";
				message = "인증번호가 만료되었습니다. 다시 요청해 주세요.";
				
				session.removeAttribute("verificationCode");
	            session.removeAttribute("generationTime");
	            
			} else if (storedCode.equals(authCode)) {
				
				status = "success";
				message = "인증이 완료되었습니다.";
			    session.removeAttribute("verificationCode");
                session.removeAttribute("generationTime");
                
			} else {
				status = "error";
				message = "인증번호가 올바르지 않습니다.";
			}
		}

		// JSON 형식으로 응답 반환
		response.setContentType("application/json; charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			out.print("{\"status\":\"" + status + "\", \"message\":\"" + message + "\"}");
			out.flush();
		}


		return null;
	}

}
