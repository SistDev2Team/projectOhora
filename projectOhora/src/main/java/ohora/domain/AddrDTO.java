package ohora.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AddrDTO {
	private int addr_id;
	private int user_id;
	private String addr_nick;
	private String addr_name;
	private String addr_htel;
	private String addr_tel;
	private String addr_address;
	private String addr_zipcode;
	private String addr_main;
}
