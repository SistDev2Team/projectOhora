package ohora.domain;

import java.util.ArrayList;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewDTO {
	private int rev_id;
	private int user_id;
	private int ord_pk;
	private int opdt_id;  //주문상세번호
	private String rev_content;
	private Date rev_writedate;
	private int rev_rating;
	private int rev_good_count;
	private int rev_bad_count;
	private int rev_comment_count;
	private String rev_isrecommend;
	private String rev_isphoto;
	private String rev_age_group;
	private String rev_option; //구매상품 옵션
	private int pdt_id;
	private String user_name;
	
	private boolean newImg; // 컬럼 추가
	private int mediacount;
	
//	미디어를 위한
	ArrayList<RevMedia>  revMediaList;

	private int mediaCnt;
	
	private int allRevCnt;
}
