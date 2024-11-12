package ohora.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OrderDTO {
	
	    private int ordPk;
	    private String ordId;
	    private int userId;
	    private int icpnId;
	    private String ordName;
	    private String ordAddress;
	    private String ordZipcode;
	    private String ordTel;
	    private String ordEmail;
	    private String ordPassword;
	    private Date ordOrderDate;
	    private int ordTotalAmount;
	    private int ordCpnDiscount;
	    private int ordPdtDiscount;
	    private int ordUsePoint;
	    private String ordPayOption;
	    private int ordDeliveryFee;
	    
	    private List<OrderDetailDTO> orderDetails;

}
