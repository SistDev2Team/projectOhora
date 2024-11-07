package ohora.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserDTO {
	private int user_id;
	private int mem_id;
	private int auth_id;
	private String user_login_id;
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_tel;
	private Date user_birth;
	private int user_point;
	private String user_snsagree;
	private Date user_joindate;
}
