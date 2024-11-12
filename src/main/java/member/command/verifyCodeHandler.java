package member.command;

import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mvc.command.CommandHandler;

public class verifyCodeHandler implements CommandHandler {

    private static final long VALID_DURATION = 3 * 60 * 1000; // 3분

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        // 인증번호랑 생성된 시간을 가져와서
        HttpSession session = request.getSession();
        String storedCode = (String) session.getAttribute("verificationCode");
        Date generationTime = (Date) session.getAttribute("generationTime");

        // 사용자가 입력한 인증번호 값임
        String inputCode = request.getParameter("verification_code");
        
        System.out.println("Stored Verification Code: " + storedCode);
        System.out.println("Generation Time: " + generationTime);
        System.out.println("User Input Code: " + inputCode);
        
        String status;
        String message;

        // 둘다 잘 가져 왔다면?
        if (storedCode != null && generationTime != null) {
            long timeElapsed = (new Date()).getTime() - generationTime.getTime(); // 지금에서 생성된 시간 빼면
            
            if (timeElapsed < VALID_DURATION) { // 3분 이내
                if (storedCode.equals(inputCode)) { // 같으면 성공
                    status = "success";
                    message = "인증 성공!";
                    // 인증 성공 해야 제거 해야됨
                    session.removeAttribute("verificationCode");
                    session.removeAttribute("generationTime");
                } else {
                    status = "fail";
                    message = "인증번호가 일치하지 않습니다.";
                }
            } else { // 3분 지났으면 만료
                status = "expired";
                message = "인증번호가 만료되었습니다.";
                // 세션 제거 필수!!
                session.removeAttribute("verificationCode");
                session.removeAttribute("generationTime");
            }
        } else { // 애초에 세션값 못 불러왔다면?       	
            status = "fail";
            message = "잘못된 인증 요청입니다.";
        }
     
        response.setContentType("application/json; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.print("{\"status\":\"" + status + "\", \"message\":\"" + message + "\"}");
            out.flush();
        }

        return null;
    }
}