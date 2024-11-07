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
}
