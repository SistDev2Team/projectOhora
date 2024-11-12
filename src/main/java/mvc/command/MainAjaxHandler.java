package mvc.command;

import java.sql.Connection;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import ohora.domain.ProductDTO;
import ohora.persistence.OhoraDAO;
import ohora.persistence.OhoraDAOImpl;
//MainAjaxHandler.java
public class MainAjaxHandler implements CommandHandler {
	// 가격 출력할때 0,000 포맷해주는 메서드
	public String formatNumber(int number) {
	    DecimalFormat formatter = new DecimalFormat("#,###");
	    return formatter.format(number);
	}
	
 @Override
 public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
     int categoryNumber = Integer.parseInt(request.getParameter("cate_no"));
     ArrayList<ProductDTO> bestProducts;

     try (Connection conn = ConnectionProvider.getConnection()) {
         OhoraDAO dao = new OhoraDAOImpl(conn);
         if( categoryNumber == 120 ) {
        	 bestProducts = dao.prdCate( 1, 10, categoryNumber ); // ALL 일때는 10개
         }else {
        	 bestProducts = dao.prdCate( 1, 5, categoryNumber ); // 카테고리별 상품 가져오기 ( 베스트 상품 중 네일 / 페디 / 케어 )
         }
     } catch (Exception e) {
         e.printStackTrace();
         response.getWriter().write("<div>상품을 불러오는 중 오류가 발생했습니다.</div>");
         return null;
     }

     StringBuilder htmlResponse = new StringBuilder();
     for (ProductDTO product : bestProducts) {
         htmlResponse.append("<li id=\"item").append(product.getPdt_id()).append("\" class=\"item-swiper-slide swiper-slide\">")
                     .append("<div class=\"container-complete\" data-prd-num=\"").append(product.getPdt_id()).append("\">")
                     .append("<dl>")
                     .append("<a href=\"/projectOhora/product/detail.do?pdt_id=").append(product.getPdt_id())
                     .append("&cate_no=121\" class=\"viewlink\"></a>")
                     .append("<div class=\"base-img\"><div class=\"thumb\">")
                     .append("<img loading=\"lazy\" alt=\"\" class=\"thumb_img\" width=\"800\" height=\"800\" src=\"../resources/images/prd_image/imgs/").append(product.getPdt_img_url()).append(".jpg\">")
                     .append("<img loading=\"lazy\" class=\"hover_img\" width=\"800\" height=\"800\" src=\"../resources/images/prd_image/imgs_hover/").append(product.getPdt_img_url()).append(".jpg\">")
                     .append("</div>");
         
         // coming soon....
         if (product.getPdt_count() == 0) {
             htmlResponse.append("<span class=\"soldout-img\" style=\"display: block;\">")
                         .append("<a href=\"\"><span>coming<br>soon</span></a>")
                         .append("</span>")
                         .append("</div>");
         } else {
             htmlResponse.append("<span class=\"soldout-img\" style=\"display: none;\">")
                         .append("<a href=\"\"><span>coming<br>soon</span></a>")
                         .append("</span>")
                         .append("</div>");
         }

         // 가격과 할인율 처리
         htmlResponse.append("<div class=\"base-mask\"><dd class=\"name-container\">")
                     .append("<p class=\"name\"><span>").append(product.getPdt_name()).append("</span></p>")
                     .append("</dd><dd class=\"price-container\">");

         // 할인율 적용 여부
         if (product.getPdt_discount_rate() != 0) {
             htmlResponse.append("<p class=\"normal-price\">")
                         .append(formatNumber(product.getPdt_amount())) // 원래 가격
                         .append("</p>")
                         .append("<p class=\"sale-price\">")
                         .append(formatNumber(product.getPdt_discount_amount())) // 할인된 가격
                         .append("</p>")
                         .append("<p class=\"discount\">")
                         .append(product.getPdt_discount_rate()) // 할인율
                         .append("%</p>");
         } else {
             htmlResponse.append("<p class=\"sale-price\">")
                         .append(formatNumber(product.getPdt_amount())) // 원래 가격
                         .append("</p>");
         }

         // 추가적인 정보
         htmlResponse.append("</dd><dd class=\"prdRegiDate\">등록일: ").append(product.getPdt_adddate()).append("</dd>")
                     .append("<div class=\"prdInfoBot\"><div class=\"rvCount\"><div class=\"rvWrap\">")
                     .append("<p class=\"rv_count_wrap\"><span class=\"rv_count_value\">").append(product.getPdt_review_count()).append("</span></p>")
                     .append("</div></div>")

                     // 장바구니 버튼
                     .append("<div class=\"cart-in\">")
                     .append("<img src=\"../resources/images/btn_list_cart.gif\" data-pdtid=\"").append(product.getPdt_id()).append("\" alt=\"장바구니 추가 버튼\" />")
                     .append("</div>")

                     .append("</div></dl></div></li>");
     }

     response.setContentType("text/html; charset=UTF-8");
     response.getWriter().write(htmlResponse.toString());
     return null;
 }
}

