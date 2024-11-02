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
	
	private int pdt_discount_amount;
}
