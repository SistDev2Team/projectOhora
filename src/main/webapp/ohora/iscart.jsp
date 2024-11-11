<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/iscart.css">
<script src="../resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>
    <!-- 장바구니 영역 -->
    <div id="SP_order_wrap" class="sub_container basket_container">
        <div class="SP_layoutFix">
            <!-- 타이틀 -->
            <div class="SP_subSection">
                <h2 class="SP_subTitle">
                    <span class="eng_font">장바구니</span>
                </h2>
            </div>
            <!-- 타이틀 -->
            <div style="display:none;" class="xans-element- xans-order xans-order-normnormal xans-record-">
                <div class="xans-element- xans-order xans-order-list xans-record-">
                    <!-- 일반 기본배송 -->
                </div>
            </div>
            <!-- 장바구니 모듈 -->
            <div class="xans-element- xans-order xans-order-basketpackage  order_page">
                <!-- 혜택 정보 -->
                <div style="display:none" class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  ">
                    <div class="SP_orderInformation_wrap">
                        <div class="information">
                            <div class="SP_contTitle">혜택정보</div>
                            <div class="description">
                                <div class="member ">
                                    <p>
                                        <strong>이시훈</strong>
                                        님은, [Friend] 회원이십니다.
                                    </p>
                                </div>
                                <div class="SP_orderMileage_wrap">
                                    <ul class>
                                        <li>
                                            <a href="/myshop/mileage/historyList.html">
                                                가용적립금 :
                                                <strong>0원</strong>
                                            </a>
                                        </li>
                                        <li class="displaynone">
                                            <a href="/myshop/deposits/historyList.html">
                                                예치금 :
                                                <strong></strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/myshop/coupon/coupon.html">
                                                쿠폰 :
                                                <strong>0개</strong>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="SP_optChangeGuide_wrap">
                                    <ul class>
                                        <li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
                                        <li class="txtWarn txt11 displaynone">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // 혜택 정보 -->

                <!-- 장바구니 정보 -->
                <div class="xans-element- xans-order xans-order-tabinfo SP_order_tab displaynone ">
                    <ul class="menu"></ul>
                    <p class="right ">장바구니에 담긴 상품은 14일 동안 보관됩니다.</p>
                </div>
                <!-- // 장바구니 정보 -->

                <!-- 장바구니 상품 있을 때 -->
                <div
                    class="xans-element- xans-order xans-order-emptyitem toggleArea eToggle selected basket_item_wrapper">

                    <!-- 선택상품 제어 버튼 -->
                    <div class="xans-element- xans-order xans-order-selectorder">
                        <a href="javascript:void(0)" class="mini SMScart_allsel_btnTD selected" id="product_select_all"
                            data-status="off">
                            <div class="box">
                                <div id="all_checkcolor"></div>
                            </div>
                            <span class="count">
                                전체 상품 (<span class="all-count">${cartItems.size()}</span>)
                            </span>
                        </a>
                    </div>
                        <!-- 초기 합계 설정 -->
                        <c:set var="totalAmount" value="0" scope="page" />
                        <c:set var="totalDiscount" value="0" scope="page" />

                        <!-- 각 상품 항목 출력 -->
                        <c:forEach var="dto" items="${cartItems}" varStatus="status">
                            <div class="prdInfo xans-record-">
                                <div class="xans-element- xans-order xans-order-normnormal xans-record-">
                                    <div class="xans-element- xans-order xans-order-list">


                                        <!-- 개별 체크박스 -->
                                        <input type="checkbox" id="basket_chk_id_${status.index}"
                                            name="basket_product_normal_type_normal_${status.index}"
                                            class="basket-checkbox checked">
                                        <label for="basket_chk_id_${status.index}" class="label_for_check">
                                            <div id="checkcolor${status.index}" class="checkcolor"
                                                style="background-color: black;"></div>
                                        </label>
                                        <input type="hidden" id="pdtId" name="pdtId" value="${dto.pdt_id}">
                                		<input type="hidden" id="pdtCount" name="pdtCount" value="${dto.pdt_count}">
                                        &nbsp;
                                        <!-- // 개별 체크박스 -->

                                        <!-- 설명 -->
                                        <div class="description">
                                            <p class="prdImg">
                                                <a href="view.do?pdt_id=${dto.pdt_id}">
                                                    <!-- 이미지파일 추가 후 아래코딩을 주석풀고 그아래를 삭제 -->
                                                    <img loading="lazy" src="../resources/images/prd_image/imgs/${dto.pdt_img_url}.jpg"
                                                    
                                                        alt="${dto.pdt_name}" width="250" height="250"
                                                        onerror="this.onerror=null; this.src='/resources/images/default_image.jpg';">
                                                        <%-- <img loading="lazy"
                                                            src="../resources/images/prd_image/마롱네일2.jpg"
                                                            alt="${dto.pdt_name}" width="250" height="250"
                                                            onerror="this.onerror=null; this.src='/resources/images/default_image.jpg';"> --%>
                                                </a>
                                            </p>

                                            <!-- 상품 설명 -->
                                            <div class="prdDesc">
                                                <strong class="prdName" title="상품명">
                                                    <a href="view.do?pdt_id=${dto.pdt_id}">${dto.pdt_name}</a>
                                                </strong>
                                                <ul class="info">
                                                    <li class="displaynone">
                                                        배송 : <span class="displaynone">3,000</span> [조건] / 기본배송
                                                        <span class="displaynone">(해외배송가능)</span>
                                                    </li>
                                                    <li title="적립금" class="mileage displaynone">적립금-</li>
                                                    <li class="price">
                                                    	<c:choose>
															<c:when test="${ dto.pdt_discount_rate != 0 }">
		                                                        <span class="discount" title="판매가">
		                                                            <strong>
		                                                                <fmt:formatNumber value="${dto.pdt_amount}"
		                                                                    type="number" pattern="#,##0" />
		                                                            </strong>
		                                                        </span>
		                                                        <span title="할인판매가">
		                                                            <strong>
		                                                                <fmt:formatNumber value="${dto.pdt_discount_amount}"
		                                                                    type="number" pattern="#,##0" />
		                                                            </strong>
		                                                        </span>
		                                                        <span class="dc_percent">${dto.pdt_discount_rate}%</span>
															</c:when>
															<c:otherwise>
		                                                        <span title="할인판매가">
		                                                            <strong>
		                                                                <fmt:formatNumber value="${dto.pdt_discount_amount}"
		                                                                    type="number" pattern="#,##0" />
		                                                            </strong>
		                                                        </span>
															</c:otherwise>
														</c:choose>
                                                    </li>

                                                    <!-- 수량 조절 (-/+) 버튼 -->
                                                    <li class="quantity product-row" data-price="${dto.pdt_amount}"
                                                        data-discount="${dto.pdt_amount - dto.pdt_discount_amount}">
                                                        <a href="javascript:void(0);" class="minusBtn">
                                                            <img class="QuantityDown" alt="down"
                                                                src="/SkinImg/img/minus.svg" width="25" height="25">
                                                        </a>
                                                        <input id="quantity_id_${dto.pdt_id}"
                                                            name="quantity_name_${dto.pdt_id}" size="2"
                                                            value="${dto.pdt_count}" type="text" class="quantityInput">
                                                        <a href="javascript:void(0);" class="plusBtn">
                                                            <img class="QuantityUp" alt="up" src="/SkinImg/img/plus.svg"
                                                                width="25" height="25">
                                                        </a>
                                                    </li>
                                                    <!-- // 수량 조절 -->

                                                    <!-- 합계 -->
                                                    <div class="prdTotal">
                                                        합계 : <strong class="itemTotal">
                                                            <fmt:formatNumber
                                                                value="${(dto.pdt_amount - dto.pdt_discount_amount) * dto.pdt_count}"
                                                                type="number" pattern="#,##0" />
                                                        </strong>
                                                    </div>

                                                </ul>
                                            </div>
                                        </div>

                                        <!-- 버튼 영역 -->
                                        <c:choose>
				                            <c:when test="${empty auth}">
				                                <a href="#none" onclick="deleteItem(${status.index});" class="btnNormal SMScart_option_del_btnTD">삭제</a>
				                            </c:when>
				                            <c:otherwise>
				                                <a href="${contextPath}/product/deletecart.do?pdtId=${dto.pdt_id}" class="btnNormal SMScart_option_del_btnTD">삭제</a>
				                            </c:otherwise>
				                        </c:choose>
                                        <div class="btnArea typeFull displaynone">
                                            <span class="gLeft">
                                                <a href="#none" onclick="selBasketDel('basket_chk_id_${status.index}');"
                                                   class="btnNormal SMScart_option_del_btnTD">삭제</a>
                                                <a href="#none" onclick="BasketNew.moveWish(${dto.pdt_id});"
                                                    class="btnNormal SMScart_option_wish_btnTD">관심상품</a>
                                            </span>
                                            <span class="gRight">
                                                <a href="#none" onclick="Basket.orderBasketItem(${dto.pdt_id});"
                                                    class="btnStrong SMScart_option_buy_btnTD">주문하기</a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- 누적 계산 -->
                                <c:set var="itemTotal" value="${dto.pdt_discount_amount * dto.pdt_count}" />
                                <c:set var="itemDiscount"
                                    value="${(dto.pdt_amount - dto.pdt_discount_amount) * dto.pdt_count}" />
                                <c:set var="totalAmount" value="${totalAmount + itemTotal}" scope="page" />
                                <c:set var="totalDiscount" value="${totalDiscount + itemDiscount}" scope="page" />
                            </div>
                        </c:forEach>

                        <!-- 총 주문금액 영역 -->
                        <c:set var="shippingFee" value="3000" scope="page" />

                        <!-- 최종 결제 예정 금액 계산: 50000원 이상일 때 배송비 제외 -->
                        <c:choose>
                            <c:when test="${totalAmount - totalDiscount >= 50000}">
                                <c:set var="finalAmount" value="${totalAmount - totalDiscount}" scope="page" />
                            </c:when>
                            <c:otherwise>
                                <c:set var="finalAmount" value="${totalAmount - totalDiscount + shippingFee}"
                                    scope="page" />
                            </c:otherwise>
                        </c:choose>
                </div>
                <!-- 결제 예정 금액 표시 -->
                <div class="xans-element- xans-order xans-order-emptyitem total_order_wrapper" style="top: 157px;">
                    <div class="total_order_inner">
                        <div class="xans-element- xans-order xans-order-totalsummary totalSummary">

                            <!-- 총 상품 금액 -->
                            <div class="toggleArea type1 eToggle">
                                <div class="total title item">
                                    <h3>총 상품금액</h3>
                                    <p>
                                        <strong class="prdPriceAll">
                                            <fmt:formatNumber value="${totalAmount}" type="number" pattern="#,##0" />
                                        </strong>
                                    </p>
                                </div>
                            </div>

                            <!-- 배송비 -->
                            <c:if test="${shippingFee > 0}">
                                <div class="toggleArea type1 eToggle">
                                    <div class="item total title">
                                        <h3>총 배송비</h3>
                                        <p class="delivery_price_wrap">
                                            <strong class="prdDelvAll">
                                                <fmt:formatNumber value="${shippingFee}" type="number"
                                                    pattern="#,##0" />
                                            </strong>
                                        </p>
                                        <div class="total_info_txt delv">
                                            <span class="amount">
                                                <fmt:formatNumber value="${50000 - (totalAmount - totalDiscount)}"
                                                    type="number" pattern="#,##0" />
                                            </span>
                                            원 추가 구매시 <b>무료배송</b>
                                        </div>
                                    </div>
                                </div>
                            </c:if>

                            <!-- 상품 할인 금액 -->
                            <div class="toggleArea type1 eToggle">
                                <div class="total title item">
                                    <h3>상품할인금액</h3>
                                    <p class="discountAll">
                                        -
                                        <span class="discount">
                                            <strong class="prdDiscountAll">
                                                <fmt:formatNumber value="${totalDiscount}" type="number"
                                                    pattern="#,##0" />
                                            </strong>
                                        </span>
                                    </p>
                                </div>
                            </div>

                            <!-- 결제예정금액 -->
                            <div class="toggleArea type1 eToggle order final">
                                <div class="item total title">
                                    <h3>총 결제예정금액</h3>
                                    <p class="price_final">
                                        <strong class="prdFinalAll">
                                            <fmt:formatNumber value="${finalAmount}" type="number" pattern="#,##0" />
                                        </strong>
                                    </p>

                                    <!-- 예상 적립금 (배송비 제외) -->
                                    <div class="mileage total_info_txt">
                                        <div class="xans-element- xans-layout xans-layout-statelogon member">
                                            <div class="xans-element- xans-order xans-order-dcinfo displaynone">
                                                <div class="group_name">Friend</div>
                                            </div>
                                            <div class="mileage_txt">
                                            	<!-- 비회원 -->
                                                <b>로그인 후 회원혜택과 적립금을 확인하세요.</b>
                                                <!-- 회원 -->
                                                <%-- 구매시 <fmt:formatNumber
                                                    value="${(totalAmount - totalDiscount) * 0.01}" type="number"
                                                    pattern="#,##0" />원
                                                <b>적립예정</b> --%>
                                            </div>

                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 주문하기 버튼 -->
                        <div class="xans-element- xans-order xans-order-totalorder SP_tableBtn_wrap">
                            <div class="SP_tableBtnAlign_right">
                                <div class="btn buy_btn">
                                	<a href="" class="SP_cm_btn">구매하기</a>

                                </div>
                                <div class="displaynone">
                                    <a href="/" class="SP_cm_btn">계속 쇼핑하기</a>
                                    <a href="#none" onclick="Basket.orderSelectBasket(this)"
                                        link-order="/order/orderform.html?basket_type=all_buy"
                                        link-login="/member/login.html" class="SP_cm_btn ">선택상품 주문</a>
                                    <a href="#none" onclick="Basket.orderAll(this)"
                                        link-order="/order/orderform.html?basket_type=all_buy"
                                        link-login="/member/login.html" class="SP_cm_btn   ">전체 상품주문</a>
                                    <div id="appPaymentButtonBox"
                                        style="display:block; max-width:365px; margin:10px auto 0; text-align:center;">
                                    </div>
                                </div>
                                <div id="NaverChk_Button" class="naver_Wrap displaynone"></div>
                            </div>
                        </div>
                        <!-- // 주문하기 버튼 -->
                    </div>
                </div>
                <!-- // 총 주문금액 영역 -->
            </div>
            <div class="common_list_container reco_new_container">
                <div class="text_area">
                    <h3 class="basketRcmdTit">추천 상품</h3>
                </div>
                <div class="SMS_Product_display SMSprdSortTarget common_list_box" data-sort="2col">
                    <div class="swiper-container swiper-lazy-init swiper-container-initialized swiper-container-horizontal"
                        data-swiper-key="reconewContainer">
                        <!-- 상품리스트영역 ul -->
                        <ul class="items SMSitems common_items swiper-wrapper"
                            style="transition-duration: 0ms; transform: translate3d(-2543.33px, 0px, 0px);">

                            <li class="xans-record- append_item swiper-slide"
                                style="width: 323.333px; margin-right: 40px;">
                                <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                                    <dl>
                                        <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1"
                                            class="viewlink"></a>
                                        <div class="base_img">
                                            <div class="BR_icon">
                                                <p>
                                                    <b>BEST</b>
                                                    리뷰
                                                </p>
                                            </div>
                                            <div class="thumb">
                                                <img loading="lazy"
                                                    class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded"
                                                    data-original alt width="800" height="800"
                                                    src="https://www.ohora.kr/web/product/medium/202206/b6fe4302016acc84bfbf25e779d307f2.jpg">
                                                <img loading="lazy" decoding="async"
                                                    class="*lazyload hover_img swiper-lazy swiper-lazy-loaded"
                                                    data-original alt width="800" height="800" src="">
                                                <div class="sticker">
                                                    <div class="new">NEW</div>
                                                    <div class="percent">
                                                        <div class="dcPercent"></div>
                                                    </div>
                                                    <div class="best">BEST</div>
                                                </div>
                                                <span class="soldout_img" style="display: none;">
                                                    <span>
                                                        coming
                                                        <br>
                                                        soon
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="base_mask">
                                            <dd class="info_container">
                                                <p class="name">
                                                    <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리
                                                        네일</span>
                                                </p>
                                                <p class="subname"></p>
                                                <p class="subnameSimple"></p>
                                            </dd>
                                            <dd class="soldout_container" style="display: none;">
                                                <p class="soldout">(품절)</p>
                                            </dd>
                                            <dd class="price_container">
                                                <p class="custom_price displaynone">0</p>
                                                <p class="setCustomPrice displaynone">0</p>
                                                <p class="price">
                                                    14,800
                                                </p>
                                                <p class="sale_price displaynone"></p>
                                            </dd>
                                            <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class=" prdInfo_bottom">
                                                <div class="crema_container">
                                                    <div class="crema_wrap">
                                                        <p class="rv_value">
                                                            <span class="crema-product-reviews-score crema-applied"
                                                                data-product-code="776" data-star-style="single"
                                                                data-format="{{{stars}}} {{{score}}}"
                                                                data-hide-if-zero="1" data-applied-widgets="["
                                                                .crema-product-reviews-score"]">
                                                                <div class="crema_product_reviews_score__container"
                                                                    style="display: inline-block; font-family: inherit;">
                                                                    <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full "
                                                                        style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                            width="20" height="20" viewBox="0 0 20 20"
                                                                            class="crema_product_reviews_score_star_wrapper__star "
                                                                            style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                                            <defs>
                                                                                <path id="star-full"
                                                                                    d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z">
                                                                                </path>
                                                                            </defs>
                                                                            <use xlink:href="#star-full"></use>
                                                                        </svg>
                                                                    </div>
                                                                    4.9
                                                                </div>
                                                            </span>
                                                        </p>
                                                        <p class="rv_count">
                                                            <span class="rv_icon">
                                                                <img src="/web/upload/rv_icon2.png">
                                                            </span>
                                                            <span
                                                                class="count crema-product-reviews-count crema-applied"
                                                                data-product-code="776" data-format="{{{count}}}"
                                                                data-hide-if-zero="1" data-applied-widgets="["
                                                                .crema-product-reviews-count"]">
                                                                1,817
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="hash_container done">
                                            <div class="hash_wrap"></div>
                                        </div>
                                        <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                                            <img src="https://www.ohora.kr/web/upload/common/mobile/icon_cart_gray.png"
                                                onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');"
                                                alt="장바구니 담기" class="ec-admin-icon cart">
                                        </div>
                                        <div class="rv_icon">
                                            <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                                <img src="/web/upload/rv_icon1.png">
                                                <span class="count crema-product-reviews-count crema-applied"
                                                    data-product-code="776" data-format="{{{count}}}"
                                                    data-hide-if-zero="1" data-applied-widgets="["
                                                    .crema-product-reviews-count"]">1,817</span>
                                            </a>
                                        </div>
                                        <div class="only_info_chk displaynone">
                                            <div class="xans-element- xans-product xans-product-listitem">
                                                <div class=" display_가격 xans-record-">
                                                    <strong class="title displaynone">
                                                        <span
                                                            style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                                    </strong>
                                                    <span
                                                        style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                                    <span id="span_product_tax_type_text"
                                                        style="text-decoration:line-through;"> </span>
                                                </div>
                                                <div class=" display_사용후기 xans-record-">
                                                    <strong class="title displaynone">
                                                        <span style="font-size:12px;color:#555555;">사용후기</span>
                                                    </strong>
                                                    <span style="font-size:12px;color:#555555;">234</span>
                                                </div>
                                                <div class="xans-record-">
                                                    <strong class="title displaynone"></strong>
                                                </div>
                                                <div class=" display_해시태그 xans-record-">
                                                    <strong class="title displaynone">
                                                        <span style="font-size:12px;color:#555555;">해시태그</span>
                                                    </strong>
                                                    <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블
                                                        #가을네일</span>
                                                </div>
                                                <div class=" display_상품필터값 xans-record-">
                                                    <strong class="title displaynone">
                                                        <span style="font-size:12px;color:#555555;">상품필터값</span>
                                                    </strong>
                                                    <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="restockIcon"></div>
                                </div>
                                </dl>
                    </div>
                    </li>

                    <li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;">
                        <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                            <dl>
                                <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1"
                                    class="viewlink"></a>
                                <div class="base_img">
                                    <div class="BR_icon">
                                        <p>
                                            <b>BEST</b>
                                            리뷰
                                        </p>
                                    </div>
                                    <div class="thumb">
                                        <img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded"
                                            data-original alt width="800" height="800"
                                            src="https://www.ohora.kr/web/product/medium/202207/a01ac461b36b71f78270548dbc29b121.jpg">
                                        <img loading="lazy" decoding="async"
                                            class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original alt
                                            width="800" height="800" src="">
                                        <div class="sticker">
                                            <div class="new">NEW</div>
                                            <div class="percent">
                                                <div class="dcPercent"></div>
                                            </div>
                                            <div class="best">BEST</div>
                                        </div>
                                        <span class="soldout_img" style="display: none;">
                                            <span>
                                                coming
                                                <br>
                                                soon
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="base_mask">
                                    <dd class="info_container">
                                        <p class="name">
                                            <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span>
                                        </p>
                                        <p class="subname"></p>
                                        <p class="subnameSimple"></p>
                                    </dd>
                                    <dd class="soldout_container" style="display: none;">
                                        <p class="soldout">(품절)</p>
                                    </dd>
                                    <dd class="price_container">
                                        <p class="custom_price displaynone">0</p>
                                        <p class="setCustomPrice displaynone">0</p>
                                        <p class="price">
                                            14,800
                                        </p>
                                        <p class="sale_price displaynone"></p>
                                    </dd>
                                    <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class=" prdInfo_bottom">
                                        <div class="crema_container">
                                            <div class="crema_wrap">
                                                <p class="rv_value">
                                                    <span class="crema-product-reviews-score crema-applied"
                                                        data-product-code="776" data-star-style="single"
                                                        data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1"
                                                        data-applied-widgets="[" .crema-product-reviews-score"]">
                                                        <div class="crema_product_reviews_score__container"
                                                            style="display: inline-block; font-family: inherit;">
                                                            <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full "
                                                                style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                                    xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                    width="20" height="20" viewBox="0 0 20 20"
                                                                    class="crema_product_reviews_score_star_wrapper__star "
                                                                    style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                                    <defs>
                                                                        <path id="star-full"
                                                                            d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z">
                                                                        </path>
                                                                    </defs>
                                                                    <use xlink:href="#star-full"></use>
                                                                </svg>
                                                            </div>
                                                            4.9
                                                        </div>
                                                    </span>
                                                </p>
                                                <p class="rv_count">
                                                    <span class="rv_icon">
                                                        <img src="/web/upload/rv_icon2.png">
                                                    </span>
                                                    <span class="count crema-product-reviews-count crema-applied"
                                                        data-product-code="776" data-format="{{{count}}}"
                                                        data-hide-if-zero="1" data-applied-widgets="["
                                                        .crema-product-reviews-count"]">
                                                        1,817
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                </div>
                                <div class="hash_container done">
                                    <div class="hash_wrap"></div>
                                </div>
                                <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                                    <img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
                                        onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');"
                                        alt="장바구니 담기" class="ec-admin-icon cart">
                                </div>
                                <div class="rv_icon">
                                    <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                        <img src="/web/upload/rv_icon1.png">
                                        <span class="count crema-product-reviews-count crema-applied"
                                            data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1"
                                            data-applied-widgets="[" .crema-product-reviews-count"]">1,817</span>
                                    </a>
                                </div>
                                <div class="only_info_chk displaynone">
                                    <div class="xans-element- xans-product xans-product-listitem">
                                        <div class=" display_가격 xans-record-">
                                            <strong class="title displaynone">
                                                <span style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                            </strong>
                                            <span
                                                style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                            <span id="span_product_tax_type_text" style="text-decoration:line-through;">
                                            </span>
                                        </div>
                                        <div class=" display_사용후기 xans-record-">
                                            <strong class="title displaynone">
                                                <span style="font-size:12px;color:#555555;">사용후기</span>
                                            </strong>
                                            <span style="font-size:12px;color:#555555;">234</span>
                                        </div>
                                        <div class="xans-record-">
                                            <strong class="title displaynone"></strong>
                                        </div>
                                        <div class=" display_해시태그 xans-record-">
                                            <strong class="title displaynone">
                                                <span style="font-size:12px;color:#555555;">해시태그</span>
                                            </strong>
                                            <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블
                                                #가을네일</span>
                                        </div>
                                        <div class=" display_상품필터값 xans-record-">
                                            <strong class="title displaynone">
                                                <span style="font-size:12px;color:#555555;">상품필터값</span>
                                            </strong>
                                            <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="restockIcon"></div>
                        </div>
                        </dl>
                </div>
                </li>

                <li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;">
                    <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                        <dl>
                            <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1"
                                class="viewlink"></a>
                            <div class="base_img">
                                <div class="BR_icon">
                                    <p>
                                        <b>BEST</b>
                                        리뷰
                                    </p>
                                </div>
                                <div class="thumb">
                                    <img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded"
                                        data-original alt width="800" height="800"
                                        src="https://www.ohora.kr/web/product/medium/202409/91c66d67ae4ff36b421aebdc8bb4d028.jpg">
                                    <img loading="lazy" decoding="async"
                                        class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original alt
                                        width="800" height="800" src="">
                                    <div class="sticker">
                                        <div class="new">NEW</div>
                                        <div class="percent">
                                            <div class="dcPercent"></div>
                                        </div>
                                        <div class="best">BEST</div>
                                    </div>
                                    <span class="soldout_img" style="display: none;">
                                        <span>
                                            coming
                                            <br>
                                            soon
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="base_mask">
                                <dd class="info_container">
                                    <p class="name">
                                        <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span>
                                    </p>
                                    <p class="subname"></p>
                                    <p class="subnameSimple"></p>
                                </dd>
                                <dd class="soldout_container" style="display: none;">
                                    <p class="soldout">(품절)</p>
                                </dd>
                                <dd class="price_container">
                                    <p class="custom_price displaynone">0</p>
                                    <p class="setCustomPrice displaynone">0</p>
                                    <p class="price">
                                        14,800
                                    </p>
                                    <p class="sale_price displaynone"></p>
                                </dd>
                                <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class=" prdInfo_bottom">
                                    <div class="crema_container">
                                        <div class="crema_wrap">
                                            <p class="rv_value">
                                                <span class="crema-product-reviews-score crema-applied"
                                                    data-product-code="776" data-star-style="single"
                                                    data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1"
                                                    data-applied-widgets="[" .crema-product-reviews-score"]">
                                                    <div class="crema_product_reviews_score__container"
                                                        style="display: inline-block; font-family: inherit;">
                                                        <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full "
                                                            style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" width="20"
                                                                height="20" viewBox="0 0 20 20"
                                                                class="crema_product_reviews_score_star_wrapper__star "
                                                                style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                                <defs>
                                                                    <path id="star-full"
                                                                        d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z">
                                                                    </path>
                                                                </defs>
                                                                <use xlink:href="#star-full"></use>
                                                            </svg>
                                                        </div>
                                                        4.9
                                                    </div>
                                                </span>
                                            </p>
                                            <p class="rv_count">
                                                <span class="rv_icon">
                                                    <img src="/web/upload/rv_icon2.png">
                                                </span>
                                                <span class="count crema-product-reviews-count crema-applied"
                                                    data-product-code="776" data-format="{{{count}}}"
                                                    data-hide-if-zero="1" data-applied-widgets="["
                                                    .crema-product-reviews-count"]">
                                                    1,817
                                                </span>
                                            </p>
                                        </div>
                                    </div>
                            </div>
                            <div class="hash_container done">
                                <div class="hash_wrap"></div>
                            </div>
                            <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                                <img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
                                    onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');"
                                    alt="장바구니 담기" class="ec-admin-icon cart">
                            </div>
                            <div class="rv_icon">
                                <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                    <img src="/web/upload/rv_icon1.png">
                                    <span class="count crema-product-reviews-count crema-applied"
                                        data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1"
                                        data-applied-widgets="[" .crema-product-reviews-count"]">1,817</span>
                                </a>
                            </div>
                            <div class="only_info_chk displaynone">
                                <div class="xans-element- xans-product xans-product-listitem">
                                    <div class=" display_가격 xans-record-">
                                        <strong class="title displaynone">
                                            <span style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                        </strong>
                                        <span
                                            style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                        <span id="span_product_tax_type_text" style="text-decoration:line-through;">
                                        </span>
                                    </div>
                                    <div class=" display_사용후기 xans-record-">
                                        <strong class="title displaynone">
                                            <span style="font-size:12px;color:#555555;">사용후기</span>
                                        </strong>
                                        <span style="font-size:12px;color:#555555;">234</span>
                                    </div>
                                    <div class="xans-record-">
                                        <strong class="title displaynone"></strong>
                                    </div>
                                    <div class=" display_해시태그 xans-record-">
                                        <strong class="title displaynone">
                                            <span style="font-size:12px;color:#555555;">해시태그</span>
                                        </strong>
                                        <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블 #가을네일</span>
                                    </div>
                                    <div class=" display_상품필터값 xans-record-">
                                        <strong class="title displaynone">
                                            <span style="font-size:12px;color:#555555;">상품필터값</span>
                                        </strong>
                                        <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                    </div>
                                </div>
                            </div>
                            <div class="restockIcon"></div>
                    </div>
                    </dl>
            </div>
            </li>

            <li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;">
                <div class="complete container " data-prd-no="776" data-filter="#마블#데일리">
                    <dl>
                        <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1" class="viewlink"></a>
                        <div class="base_img">
                            <div class="BR_icon">
                                <p>
                                    <b>BEST</b>
                                    리뷰
                                </p>
                            </div>
                            <div class="thumb">
                                <img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded"
                                    data-original alt width="800" height="800"
                                    src="https://www.ohora.kr/web/product/medium/202410/8b4bb562a09100244fa6cd0ef361f550.jpg">
                                <img loading="lazy" decoding="async"
                                    class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original alt
                                    width="800" height="800" src="">
                                <div class="sticker">
                                    <div class="new">NEW</div>
                                    <div class="percent">
                                        <div class="dcPercent"></div>
                                    </div>
                                    <div class="best">BEST</div>
                                </div>
                                <span class="soldout_img" style="display: none;">
                                    <span>
                                        coming
                                        <br>
                                        soon
                                    </span>
                                </span>
                            </div>
                        </div>
                        <div class="base_mask">
                            <dd class="info_container">
                                <p class="name">
                                    <span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span>
                                </p>
                                <p class="subname"></p>
                                <p class="subnameSimple"></p>
                            </dd>
                            <dd class="soldout_container" style="display: none;">
                                <p class="soldout">(품절)</p>
                            </dd>
                            <dd class="price_container">
                                <p class="custom_price displaynone">0</p>
                                <p class="setCustomPrice displaynone">0</p>
                                <p class="price">
                                    14,800
                                </p>
                                <p class="sale_price displaynone"></p>
                            </dd>
                            <dd class="icons  displaynone" style="display: none;" "></dd>
                                    <div class=" prdInfo_bottom">
                                <div class="crema_container">
                                    <div class="crema_wrap">
                                        <p class="rv_value">
                                            <span class="crema-product-reviews-score crema-applied"
                                                data-product-code="776" data-star-style="single"
                                                data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1"
                                                data-applied-widgets="[" .crema-product-reviews-score"]">
                                                <div class="crema_product_reviews_score__container"
                                                    style="display: inline-block; font-family: inherit;">
                                                    <div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full "
                                                        style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;">
                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                            xmlns:xlink="http://www.w3.org/1999/xlink" width="20"
                                                            height="20" viewBox="0 0 20 20"
                                                            class="crema_product_reviews_score_star_wrapper__star "
                                                            style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
                                                            <defs>
                                                                <path id="star-full"
                                                                    d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z">
                                                                </path>
                                                            </defs>
                                                            <use xlink:href="#star-full"></use>
                                                        </svg>
                                                    </div>
                                                    4.9
                                                </div>
                                            </span>
                                        </p>
                                        <p class="rv_count">
                                            <span class="rv_icon">
                                                <img src="/web/upload/rv_icon2.png">
                                            </span>
                                            <span class="count crema-product-reviews-count crema-applied"
                                                data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1"
                                                data-applied-widgets="[" .crema-product-reviews-count"]">
                                                1,817
                                            </span>
                                        </p>
                                    </div>
                                </div>
                        </div>
                        <div class="hash_container done">
                            <div class="hash_wrap"></div>
                        </div>
                        <div class="Prev_Cart" onclick="basketConfirmShow(this);">
                            <img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
                                onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');"
                                alt="장바구니 담기" class="ec-admin-icon cart">
                        </div>
                        <div class="rv_icon">
                            <a href="/product/detail.html?product_no=776&cate_no=120&display_group=1">
                                <img src="/web/upload/rv_icon1.png">
                                <span class="count crema-product-reviews-count crema-applied" data-product-code="776"
                                    data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="["
                                    .crema-product-reviews-count"]">1,817</span>
                            </a>
                        </div>
                        <div class="only_info_chk displaynone">
                            <div class="xans-element- xans-product xans-product-listitem">
                                <div class=" display_가격 xans-record-">
                                    <strong class="title displaynone">
                                        <span style="font-size:12px;color:#555555;font-weight:bold;">가격</span>
                                    </strong>
                                    <span
                                        style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span>
                                    <span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span>
                                </div>
                                <div class=" display_사용후기 xans-record-">
                                    <strong class="title displaynone">
                                        <span style="font-size:12px;color:#555555;">사용후기</span>
                                    </strong>
                                    <span style="font-size:12px;color:#555555;">234</span>
                                </div>
                                <div class="xans-record-">
                                    <strong class="title displaynone"></strong>
                                </div>
                                <div class=" display_해시태그 xans-record-">
                                    <strong class="title displaynone">
                                        <span style="font-size:12px;color:#555555;">해시태그</span>
                                    </strong>
                                    <span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블 #가을네일</span>
                                </div>
                                <div class=" display_상품필터값 xans-record-">
                                    <strong class="title displaynone">
                                        <span style="font-size:12px;color:#555555;">상품필터값</span>
                                    </strong>
                                    <span style="font-size:12px;color:#555555;">마블,데일리</span>
                                </div>
                            </div>
                        </div>
                        <div class="restockIcon"></div>
                </div>
                </dl>
        </div>
        </li>

        </ul>
        <!-- // 상품리스트영역 ul -->
        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
    </div>
    <div class="swiper-button-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide"
        aria-disabled="true"></div>
    <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
    <div class="swiper-scrollbar"></div>
    </div>
    </div>
    </div>
    <!-- // 장바구니 영역 -->
    <div id="spm_page_type" style="display:none">sq_basket_page</div>
    <div id="spm_banner_main"></div>
    <div id="spm_cafe_basket_wrap" style="display:none" class="xans-element- xans-order xans-order-totalsummary ">
        <input type="hidden" id="sf_basket_total_price" value="14,800">
        &nbsp;
    </div>
    </div>
	
	<script>

	// 비회원 장바구니 쿠키 함수, 14일간 유지
	const CookieUtil = {
	    setCookie: function (name, value, days = 14) {
	        let expires = "";
	        if (days) {
	            const date = new Date();
	            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
	            expires = "; expires=" + date.toUTCString();
	        }
	        document.cookie = name + "=" + encodeURIComponent(value) + expires + "; path=/";
	    },

	    getCookie: function (name) {
	        const nameEQ = name + "=";
	        const ca = document.cookie.split(';');
	        for (let i = 0; i < ca.length; i++) {
	            let c = ca[i].trim();
	            if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length));
	        }
	        return null;
	    },

	    saveCartItems: function (items) {
	        const simplifiedItems = items.map(item => ({
	            pdtId: item.pdtId,
	            quantity: item.quantity
	        }));
	        this.setCookie('cartItems', JSON.stringify(simplifiedItems), 14);
	    },

	    setBasketId: function () {
	        let basketId = this.getCookie('basketId');
	        if (!basketId) {
	            basketId = Math.random().toString(36).substring(2, 10);
	            this.setCookie('basketId', basketId, 14);
	        }
	        return basketId;
	    },

	    getCartItems: function () {
	        const cartCookie = this.getCookie('cartItems');
	        try {
	            return cartCookie ? JSON.parse(cartCookie) : [];
	        } catch (e) {
	            console.error("Error parsing cart items from cookie:", e);
	            return [];
	        }
	    }
	};

	// 장바구니에 아이템 추가 함수
	function addToCart(pdtId) {
	    const basketId = CookieUtil.setBasketId();
	    const cartItems = CookieUtil.getCartItems();
	    const existingItem = cartItems.find(item => item.pdtId === pdtId);

	    if (existingItem) {
	        const userConfirmed = confirm("같은 상품이 존재합니다. 추가하시겠습니까?");
	        if (!userConfirmed) return;
	        existingItem.quantity += 1;
	    } else {
	        cartItems.push({
	            pdtId: pdtId,
	            quantity: 1
	        });
	    }

	    CookieUtil.saveCartItems(cartItems);
	    alert("장바구니에 상품이 추가되었습니다.");
	    updateCartCount();
	}

	// 장바구니 카운트 업데이트 함수
	function updateCartCount() {
	    const cartItems = CookieUtil.getCartItems();
	    const uniquepdtIds = new Set(cartItems.map(item => item.pdtId));
	    const cartCount = uniquepdtIds.size;
	    $(".count.EC-Layout-Basket-count").text(cartCount);
	}

	$(document).on("click", ".cart-in img", function () {
	        const pdtId = $(this).data("pdtid");
	        addToCart(pdtId);
	        updateCartCount();
	      
	    });

	// 이벤트 바인딩
	$(document).ready(function () {
		if (userPk == 0){
	    	updateCartCount();			
		}

	    
	});
	</script>

    <script>
        // 쿠키) 비회원 장바구니 상품 갯수
        const CookieUtil = {
            getCookie: function (name) {
                const nameEQ = name + "=";
                const ca = document.cookie.split(';');
                for (let i = 0; i < ca.length; i++) {
                    let c = ca[i].trim();
                    if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length));
                }
                return null;
            },
            getCartItems: function () {
                const cartCookie = this.getCookie('cartItems');
                try {
                    return cartCookie ? JSON.parse(cartCookie) : [];
                } catch (e) {
                    console.error("Error parsing cart items from cookie:", e);
                    return [];
                }
            }
        };

        // 장바구니 카운트 업데이트 함수
        function updateCartCount() {
            const cartItems = CookieUtil.getCartItems();

            // 고유한 pdtId의 개수를 세기 위해 Set을 사용
            const uniquePdtIds = new Set(cartItems.map(item => item.pdtId));
            const cartCount = uniquePdtIds.size;

            // HTML에 카운트 업데이트
            $(".count.EC-Layout-Basket-count").text(cartCount);
        }

        // 이벤트 바인딩
        $(document).ready(function () {
            // 페이지 로드 시 장바구니 카운트 초기화
            updateCartCount();
            

            // 장바구니 추가 버튼 클릭 시
            $(document).on("click", ".cart-in img", function () {
                const pdtId = $(this).data("pdtid");
                addToCart(pdtId); // 장바구니에 추가
                updateCartCount(); // 장바구니 카운트 업데이트
            });
        });
    </script>


    <script>
        // 체크박스, 수량 - / + 버튼  총합계 반영되는 함수
        $(document).ready(function () {
            const SHIPPING_FEE = 3000;
            const FREE_SHIPPING_THRESHOLD = 50000;
            const REWARD_RATE = 0.01;

            // 초기 설정: 모든 체크박스를 선택 상태로 설정하고 배경색을 검정으로 설정
            $(".basket-checkbox").addClass("checked").prop("checked", true);
            $(".checkcolor").css("background-color", "black");

            // 페이지 로드 시 초기 합계 계산
            updateTotalAmount();

            // 상위 체크박스 역할을 하는 .box 클릭 이벤트 (전체 선택/해제)
            $(".box").on("click", function () {
                const allChecked = $(".basket-checkbox").first().hasClass("checked");

                // 전체 체크박스의 `checked` 클래스 토글 및 배경색 설정
                $(".basket-checkbox").toggleClass("checked", !allChecked).prop("checked", !allChecked);
                $(".checkcolor").css("background-color", !allChecked ? "black" : "#eee");

                // 상위 체크박스 .box의 배경색도 변경
                $(this).css("background-color", !allChecked ? "black" : "#eee");

                // 총합 업데이트
                updateTotalAmount();
            });

            // 개별 체크박스 클릭 이벤트
            $(document).on("click", ".basket-checkbox", function () {
                const isChecked = $(this).hasClass("checked");
                const index = $(this).attr("id").replace("basket_chk_id_", "");  // 인덱스 추출
                const checkColorDiv = $(`#checkcolor\${index}`);

                // `checked` 클래스 토글 및 색상 변경
                $(this).toggleClass("checked", !isChecked);
                checkColorDiv.css("background-color", !isChecked ? "black" : "#eee");

                // 모든 개별 체크박스가 선택된 상태인지 확인하여 상위 체크박스의 색상 결정
                const allChecked = $(".basket-checkbox").length === $(".basket-checkbox.checked").length;
                $(".box").css("background-color", allChecked ? "black" : "#eee");

                // 총합 업데이트
                updateTotalAmount();
            });

            // 수량 감소 버튼 클릭 이벤트 (이벤트 위임 사용)
            $(document).on("click", ".minusBtn", function () {
                const inputField = $(this).siblings(".quantityInput");
                let value = parseInt(inputField.val()) || 1;
                if (value > 1) {
                    inputField.val(value - 1);
                    updateTotalAmount(); // 합계 업데이트
                }
            });

            // 수량 증가 버튼 클릭 이벤트 (이벤트 위임 사용)
            $(document).on("click", ".plusBtn", function () {
                const inputField = $(this).siblings(".quantityInput");
                let value = parseInt(inputField.val()) || 1;
                inputField.val(value + 1);
                updateTotalAmount(); // 합계 업데이트
            });

            // 총합 계산 함수 정의
            function updateTotalAmount() {
                let totalAmount = 0;
                let totalDiscount = 0;

                // `checked` 클래스가 있는 상품만 금액 합산
                $(".prdInfo").each(function () {
                    const checkbox = $(this).find(".basket-checkbox");

                    if (checkbox.hasClass("checked")) {
                        const productRow = $(this).find(".product-row");
                        const unitPrice = parseFloat(productRow.data("price")) || 0;
                        const discountAmount = parseFloat(productRow.data("discount")) || 0;
                        const quantity = parseInt(productRow.find(".quantityInput").val()) || 1;

                        // 상품 가격과 할인 금액 계산
                        totalAmount += unitPrice * quantity;
                        totalDiscount += discountAmount * quantity;
                    }
                });

                // 배송비 계산
                const shippingFee = (totalAmount - totalDiscount) >= FREE_SHIPPING_THRESHOLD ? 0 : SHIPPING_FEE;

                // 최종 결제 금액 계산
                const finalAmount = totalAmount - totalDiscount + shippingFee;

                // 무료배송까지 남은 금액 계산
                const remainingForFreeShipping = Math.max(0, FREE_SHIPPING_THRESHOLD - (totalAmount - totalDiscount));

                // UI에 업데이트
                $(".prdPriceAll").text(totalAmount.toLocaleString());
                $(".prdDiscountAll").text(totalDiscount.toLocaleString());
                $(".prdFinalAll").text(finalAmount.toLocaleString());

                // 총 배송비와 무료배송 안내 표시/숨김
                if (shippingFee === 0) {
                    $(".prdDelvAll").closest(".delivery_price_wrap").hide(); // 총 배송비가 0원일 때 숨김
                    $(".total_info_txt.delv").hide(); // 무료배송 안내 문구 숨김
                    $(".item.total.title:contains('총 배송비')").hide();
                } else {
                    $(".prdDelvAll").text(shippingFee.toLocaleString()).closest(".delivery_price_wrap").show();
                    $(".total_info_txt.delv").show().find(".amount").text(remainingForFreeShipping.toLocaleString());
                    $(".item.total.title:contains('총 배송비')").show();
                }
            }
        });
    </script>


    <script>
        // X 누르면 상품 삭제
        document.addEventListener("DOMContentLoaded", function () {
            function deleteItem(itemId) {
                console.log("삭제하려는 itemId:", itemId);  // 디버깅: itemId 값 확인

                // 체크박스 ID를 기반으로 요소를 찾기
                const itemCheckbox = document.getElementById(`basket_chk_id_\${itemId}`);

                if (itemCheckbox) {
                    // 체크박스와 같은 `product-row` 클래스가 있는 상품 행을 정확히 찾기
                    const itemRow = $(itemCheckbox).closest(".prdInfo");  // `product-row` 대신 `prdInfo`로 찾음
                    if (itemRow.length) {
                        itemRow.remove();  // 상품 행 삭제
                        console.log("상품 행 삭제됨:", itemRow);  // 디버깅: 삭제되는 행 확인
                        updateTotalAmount();  // 총 합계 업데이트
                    } else {
                        console.error(`삭제할 상품 행을 찾을 수 없습니다. itemRow가 null입니다. (itemId: \${itemId})`);
                    }
                } else {
                    console.error(`삭제할 체크박스를 찾을 수 없습니다. itemCheckbox가 null입니다. (ID: basket_chk_id_\${itemId})`);
                }
            }

            // 총 합계를 다시 계산하는 함수
            function updateTotalAmount() {
                let totalAmount = 0;
                let totalDiscount = 0;

                // 각 상품의 가격과 수량을 기반으로 총 합계를 계산
                $(".product-row").each(function () {
                    const unitPrice = parseFloat($(this).data("price")) || 0;
                    const discount = parseFloat($(this).data("discount")) || 0;
                    const quantity = parseInt($(this).find(".quantityInput").val()) || 1;

                    const itemTotal = unitPrice * quantity;
                    const itemDiscount = discount * quantity;

                    totalAmount += itemTotal;
                    totalDiscount += itemDiscount;
                });

                // 합계 업데이트
                $(".prdPriceAll").text(totalAmount.toLocaleString());
                $(".prdDiscountAll").text(totalDiscount.toLocaleString());

                // 배송비 및 최종 결제 금액 계산
                const shippingFee = totalAmount - totalDiscount >= 50000 ? 0 : 3000;
                const finalAmount = totalAmount - totalDiscount + shippingFee;

                $(".prdDelvAll").text(shippingFee.toLocaleString());
                $(".prdFinalAll").text(finalAmount.toLocaleString());

                // 무료 배송 안내 표시 여부
                if (shippingFee === 0) {
                    $(".total_info_txt.delv").hide();
                } else {
                    $(".total_info_txt.delv").show();
                    const remainingAmount = 50000 - (totalAmount - totalDiscount);
                    $(".total_info_txt.delv .amount").text(remainingAmount.toLocaleString());
                }

                // 적립금 업데이트
                const rewardPoints = Math.floor((totalAmount - totalDiscount) * 0.01);
                $(".mileage_txt").text(`로그인 후 회원혜택과 적립금을 확인하세요.`);

                /* 회원에 사용
                $(".mileage_txt").text(`로그인 후 구매시 \${rewardPoints.toLocaleString()} 원 적립예정`); */
            }

            // 디버깅용 콘솔 로그로 `deleteItem` 함수와 `itemId`가 제대로 전달되는지 확인
            window.deleteItem = deleteItem;
        });
    </script>

    <script>
    
    $("a.SP_cm_btn").on("click", function createOrderUrl(e) {
    	e.preventDefault();
        let Path = "/projectOhora/product/orderpage.do?";
        
        $(".basket-checkbox.checked:checked").each(function () {
            const pdtId = $(this).nextAll("input#pdtId").val();
            const pdtCount = $(this).nextAll("input#pdtCount").val();

            if (pdtId !== undefined && pdtCount !== undefined) {
                Path += "pdtId=" + pdtId + "&pdtCount=" + pdtCount + "&";
            }
        });

        // 마지막 & 제거
        Path = Path.slice(0, -1);
        location.href = Path;
    });

    </script>

    <!-- 스와이퍼 스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".swiper-container", {
            slidesPerView: 3,
            spaceBetween: 30,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            scrollbar: {
                el: ".swiper-scrollbar",
                hide: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });

        swiper.update();
    </script>

</body>
<%@include file="footer.jsp" %>
</html>