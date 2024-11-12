package ohora.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OrderDetailDTO {
	
	private int opdtId;
    private int ordPk;
    private String opdtName;
    private int opdtAmount;
    private int opdtDcAmount;
    private String opdtOpName;
    private int opdtOpAmount;
    private int opdtCount;
    private String opdtState;
    private String opdtRefund;
    private String opdtDelCompany;
    private String opdtDelNumber;
    private char opdtConfirm;

}
