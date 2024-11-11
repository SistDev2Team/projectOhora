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
public class CouponDTO {
	private int icpn_id;
	private int user_id;
	private int cpn_id;
	private Date icpn_issuedate;
	private String icpn_isused;
	
	private String cpn_info;
	private int cpn_discount_rate;
	private int cpn_max_amount;
	private int cpn_con_value;
	private String cpn_apply;
	private String cpn_con_type;
	private String cpn_discount_type;
	private Date cpn_startdate;
	private Date cpn_enddate;
	
}
