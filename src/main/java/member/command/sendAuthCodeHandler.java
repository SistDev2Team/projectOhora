package member.command;

import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mvc.command.CommandHandler;

public class sendAuthCodeHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("sendAuthCodeHandler 시작!");

        
        Random rand = new Random();
        String verificationCode = String.format("%06d", rand.nextInt(1000000)); // 6자리 난수 생성

        
        HttpSession session = request.getSession();
        session.setAttribute("verificationCode", verificationCode); // 인증번호 저장
        session.setAttribute("generationTime", new Date()); // 생성 시간 저장

        
        String phone = request.getParameter("phone");
        System.out.println("Phone: " + phone);
        System.out.println("Generated verificationCode: " + verificationCode);

       // 전송은 성공 했다 치고
        String status = "success";
        String message = "인증번호가 전송되었습니다";

        // JSON 형식으로 응답 반환
        response.setContentType("application/json; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.print("{\"status\":\"" + status + "\", \"message\":\"" + message + "\"}");
            out.flush();
        }

        return null;
    }
}