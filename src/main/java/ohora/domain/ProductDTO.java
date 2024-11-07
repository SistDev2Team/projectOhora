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
public class ProductDTO {
	private int pdt_id;
	private int cat_id;
	private int scat_id;
	private int pdt_number;
	private String pdt_name;
	private int pdt_amount;
	private int pdt_discount_rate;
	private String pdt_img_url;
	private int pdt_count;
	private int pdt_review_count;
	private int pdt_sales_count;
	private Date pdt_adddate;
	private int pdt_viewcount;
	private String pdt_description;
	
	private int pdt_discount_amount;
	
	
	private int opt_id;				// 옵션 ID
	private String opt_name;		// 옵션 ID
	private int opt_amount;			// 옵션 가격
	private int opt_count;			// 옵션 수량
	
}
