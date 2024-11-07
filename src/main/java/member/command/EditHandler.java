package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.util.ConnectionProvider;

import mvc.command.CommandHandler;
import ohora.domain.UserDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;

public class EditHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		// 세션에서 userPk 가져오기 -> 왜? 이 값으로 DB에서 update해야 하잖아.
        HttpSession session = request.getSession();
        int userPk = (int) session.getAttribute("userPk");

		String password = request.getParameter("passwd"); // 비번
		String postcode = request.getParameter("postcode1"); // 우편번호
		String addr1 = request.getParameter("addr1"); // 기본주소
		String addr2 = request.getParameter("addr2"); // 나머지 주소
		String[] phoneParts = request.getParameterValues("mobile[]"); // 배열 형태로 받기
		String isSmsAgree = request.getParameter("is_sms"); // sms 수신동의여부
		String isNewsMailAgree = request.getParameter("is_news_mail"); // email 수신동의 여부
		String email = request.getParameter("email1"); // 이메일
		String birthYear = request.getParameter("birth_year"); // 생년
		String birthMonth = request.getParameter("birth_month"); // 생월
		String birthDay = request.getParameter("birth_day"); // 생일
		
		

		// 생년월일 결합
		String birthDate = birthYear + "-" + birthMonth + "-" + birthDay;

		// 전화번호 부분이 null인지 확인하고 결합?
		String phone = null;
		if (phoneParts != null && phoneParts.length == 3) { //세개 다 받아 왔다면?
			phone = phoneParts[0] + "-" + phoneParts[1] + "-" + phoneParts[2];
		} else {
			System.out.println("Phone 값 안 얻어와짐 ");
		}

		// 비밀번호 암호화
		String encryptedPassword = password != null ? encryptPassword(password) : null;
		
		System.out.println("isSmsAgree: " + isSmsAgree);
		System.out.println("isNewsMailAgree: " + isNewsMailAgree);
		System.out.println("USER_SNSAGREE to be set: " + ("Y".equals(isSmsAgree) || "Y".equals(isNewsMailAgree) ? "Y" : "N"));


		// 중요한건 null이 아니라면 넣고 DAO 호출 해야함
		Map<String, Object> fieldsToUpdate = new HashMap<>();	        
		if (password != null) fieldsToUpdate.put("USER_PASSWORD", encryptedPassword);
		if (email != null) fieldsToUpdate.put("USER_EMAIL", email);
		if (phone != null) fieldsToUpdate.put("USER_TEL", phone);
		
		// 이건 둘 중 하나만 Y라도 DB의 USER_SNSAGREE 를 업데이트 해주기 위함이야
		fieldsToUpdate.put("USER_SNSAGREE", "Y".equals(isSmsAgree) || "Y".equals(isNewsMailAgree) ? "Y" : "N"); 
		if (birthDate != null) fieldsToUpdate.put("USER_BIRTH", birthDate);


		OhoraDAO ohoraDAO = new OhoraDAOImpl(ConnectionProvider.getConnection());
		boolean userUpdated = ohoraDAO.updateUser(userPk, fieldsToUpdate);

		boolean addressUpdated = false;
		if (postcode != null && addr1 != null) { //둘다 값이 있을 때만 호출하자
			// addr1과 postcode가 null이 아니면 updateOrInsertAddress 호출
			addressUpdated = ohoraDAO.updateAddress(userPk, postcode, addr1, addr2);
		}
		
		    System.out.println("User 업뎃: " + userUpdated);
		    if (postcode != null && addr1 != null) {
		        System.out.println("Address 업뎃: " + addressUpdated);
		    } else {
		        System.out.println("주소 DB 정보 없음");
		    }
		
		
		
		response.sendRedirect(request.getContextPath() + "/editstart.do?updateSuccess=true");
       		
		return null;
	}

	private String encryptPassword(String password) {
		// salt해준뒤 hashing 하기
		return BCrypt.hashpw(password, BCrypt.gensalt());
	}

}
