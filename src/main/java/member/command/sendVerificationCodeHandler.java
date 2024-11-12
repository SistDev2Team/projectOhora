package member.command;

import java.io.PrintWriter;
import java.util.Date;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mvc.command.CommandHandler;

public class sendVerificationCodeHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	System.out.println("sendVerificationCodeHandler 시작!");
        
        Random rand = new Random();
        String verificationCode = String.format("%06d", rand.nextInt(1000000)); // 6자리 난수 생성
                
        HttpSession session = request.getSession();
        session.setAttribute("verificationCode", verificationCode); // 인증번호 저장해두기
        session.setAttribute("generationTime", new Date()); // 생성된 시간 저장 해두기
        
       
        String verificationMethod = request.getParameter("verification_method"); // "phone" 또는 "email"
        String contact = request.getParameter("contact"); // 사용자 연락처
        
        System.out.println("Verification Method: " + verificationMethod);
        System.out.println("Contact: " + contact);
        
        System.out.println("verificationCode: " + verificationCode);
        
        String status;
        String responseMessage;
        
        if ("email".equals(verificationMethod)) {
            // Naver SMTP 서버 설정
            String host = "smtp.naver.com";
            String from = "rlatjsdn6259@naver.com"; // 발신자 이메일 주소
            String password = "kkok4829#";
            
            // SMTP 서버 설정
            Properties props = new Properties();
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587"); //port 587
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            
            // 이메일 전송 근데 이게 뭐임
            Session mailSession = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, password);
                }
            });
            
            try {
                // 이메일 메시지 구성
                Message emailMessage = new MimeMessage(mailSession);
                emailMessage.setFrom(new InternetAddress(from));
                emailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(contact));
                emailMessage.setSubject("인증번호 발송");
                emailMessage.setText("인증번호는 다음과 같습니다: " + verificationCode);
                
                // 이메일 전송
                Transport.send(emailMessage);
                
                status = "success";
                responseMessage = "이메일로 인증번호가 전송되었습니다.";
            } catch (MessagingException e) {
                e.printStackTrace();
                status = "error";
                responseMessage = "이메일 전송 중 오류가 발생했습니다.";
            }
        } else if ("phone".equals(verificationMethod)) {        
            status = "success";
            responseMessage = "휴대폰으로 인증번호가 전송되었습니다.";
        } else {
            status = "error";
            responseMessage = "유효하지 않은 인증 방법입니다.";
        }

        
        response.setContentType("application/json; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.print("{\"status\":\"" + status + "\", \"message\":\"" + responseMessage + "\"}");
            out.flush();
        }
               
        return null;
    }
}