package member.command;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class RegisterHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String userLoginId = request.getParameter("member_id");
        String userPassword = request.getParameter("passwd");
        String userName = request.getParameter("name");
        String userEmail = request.getParameter("email");
        String userTel = request.getParameter("phone");
        String birthYear = request.getParameter("birth-year");
        String birthMonth = request.getParameter("birth-month");
        String birthDay = request.getParameter("birth-day");
        String snsAgree = request.getParameter("agreeAll");

        // 이거 필요없잖워 ㄹㅇ
        if (snsAgree == null) {
            snsAgree = "N";
        }

        // 확인용 콘솔 출력
        System.out.println("전송된 아이디: " + userLoginId);
        System.out.println("전송된 이름: " + userName);
        System.out.println("전송된 이메일: " + userEmail);
        System.out.println("전송된 전화번호: " + userTel);
        System.out.println("전송된 생년월일: " + birthYear + "-" + birthMonth + "-" + birthDay);
        System.out.println("전송된 동의여부: " + snsAgree);

        // 생년월일 처리
        String birthDateString = birthYear + "-" + birthMonth + "-" + birthDay;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date userBirth = dateFormat.parse(birthDateString);

        
        String encryptedPassword = encryptPassword(userPassword);

        // 회원 정보 DTO 생성
        UserDTO user = UserDTO.builder()
                .mem_id(1) // 기본값 1 설정
                .auth_id(2) // 기본값 2  설정
                .user_login_id(userLoginId)
                .user_password(encryptedPassword) //비번 암호화
                .user_name(userName)
                .user_email(userEmail)
                .user_tel(userTel)
                .user_birth(userBirth)
                .user_point(0) // 이것도 왜 해주라는거임 도대체
                .user_snsagree(snsAgree)
                .user_joindate(new Date()) // 현재 날짜
                .build();

        // DB처리
        OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
        
       int userPk = ohoraDAO.insertUser(user); // DB에 삽입은 되는데 그걸 DTO에 담은건 아니자나.
        ohoraDAO.wellcomecoupon(userPk);
        

        //아이디,이름,이메일,동의여부 들구가야댐
        request.setAttribute("userId", userLoginId);
        request.setAttribute("userName", userName);
        request.setAttribute("userEmail", userEmail);
        request.setAttribute("userSnsAgree", snsAgree);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/ohora/join_complete.jsp");
        dispatcher.forward(request, response);

        return null;
    }

    private String encryptPassword(String password) {    
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

}//class