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
public class CommentDTO {
	private int cmt_id;
	private int rev_id;
	private int user_id;
	private Date cmt_writedate;
	private String cmt_content;
	
	private String user_name;

}
