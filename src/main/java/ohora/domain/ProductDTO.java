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
	private int pdt_id;					// 상품 ID
	private int cat_id;					// 카테고리 ID
	private int scat_id;				// 하위카테고리 ID
	private int pdt_number;				// 옵션갯수
	private String pdt_name;			// 상품명
	private int pdt_amount;				// 상품가격
	private int pdt_discount_rate;		// 할인율
	private String pdt_img_url;			// 이미지경로
	private int pdt_count;				// 재고수량
	private int pdt_review_count;		// 리뷰 수
	private int pdt_sales_count;		// 판매 수량
	private Date pdt_adddate;			// 상품 등록일
	private int pdt_viewcount;			// 조회수
	private String pdt_description;		// 상품 설명 ( 추가 구성 상품 부분만 적용 )
	
	private int pdt_discount_amount;	// 할인된 가격 ( 아래와 같이 적용 )
	/* pdt_amount - (int)(pdt_amount * pdt_discount_rate / 100.0f ) // 할인율 적용 */	
	
	
	
	
	private int opt_id;				// 옵션 ID
	private String opt_name;		// 옵션 ID
	private int opt_amount;			// 옵션 가격
	private int opt_count;			// 옵션 수량
	
}
