<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/is_cart.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>

<div id="wrap" style="padding-top: 156px !important;">
            <div id="container">
                <div id="contents">
                    
<!-- @layout(/layout/ohora/intro_layout.html)-->
<script>
    SMARTPC_GLOBAL_OBJECT.page = 'order';
</script>



<!-- 장바구니 금액 변경 및 적립금 변경 -->


<style>
    .freeDelmsg{display: none !important;}
    .SP_subSection .SP_subTitle *{font-family:"Noto Sans KR",sans-serif !important; }
    .SP_layoutFix{width:1050px;}
    .SP_subSection h2 span {width:100%; min-width:auto !important;}
</style>



<!------------------------------------------------- 장바구니 영역 ------------------------------------------------->

<div id="SP_order_wrap" class="sub_container basket_container">

    <div class="SP_layoutFix">

        <!-------- 타이틀 ------------->
        <div class="SP_subSection">
            <h2 class="SP_subTitle"><span class="eng_font">장바구니</span></h2>
        </div>
        <!-------- //타이틀 ------------->
        
        <div style="display:none;" class="xans-element- xans-order xans-order-normnormal xans-record-"><div class="xans-element- xans-order xans-order-list xans-record-"><!-- 일반 기본배송 -->
<script>
                    if(!jgo_products) var jgo_products =[];
                        jgo_products.push({
                            'id': '2104',
                            'name': 'N 딥 네일'.replace(/\<.*?\>/g,"").trim(),
                            'price': '12,580'.replace('&#8361;','').replace(/[^0-9]/g,''),
                            'brand': '',
                            'category': '121',
                            'quantity': '<input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text"  />'.substring('<input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text"  />'.indexOf('value=')+7,'<input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text"  />'.indexOf(' type=')-1)
                        });
                </script>
</div>
</div>

        
        
        <!---------------------------- 장바구니 모듈 Order_BasketPackage ------------------------->
        <div class="xans-element- xans-order xans-order-basketpackage  order_page"><!----------------------- 혜택 정보 ----------------------------->
<div style="display:none" class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  "><div class="SP_orderInformation_wrap">
                    <div class="information">
                        <div class="SP_contTitle">혜택정보</div>
                        <div class="description">
                            <div class="member ">
                                <p><strong>이시훈</strong> 님은, [Friend] 회원이십니다.</p>
                                <!-- 	<ul class="">
<li class="displaynone"><span class="displaynone">0</span> 이상 <span class="displaynone"></span> 구매시 <span></span>을 추가할인 받으실 수 있습니다. <span class="displaynone">(최대 0)</span></li>
<li class=""><span class="">1</span> 이상 <span class="displaynone"></span> 구매시 <span>1%</span>을 추가적립 받으실 수 있습니다. <span class="displaynone">(최대 )</span></li>
</ul> -->
                            </div>
                            <div class="SP_orderMileage_wrap">
                                <ul class="">
<li><a href="/myshop/mileage/historyList.html">가용적립금 : <strong>0원</strong></a></li>
                                    <li class="displaynone"><a href="/myshop/deposits/historyList.html">예치금 : <strong></strong></a></li>
                                    <li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>0개</strong></a></li>
                                </ul>
</div>
                            <div class="SP_optChangeGuide_wrap">
                                <ul class="">
<li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
                                    <li class="txtWarn txt11 displaynone">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</li>
                                </ul>
</div>
                        </div>
                    </div>
                </div>
</div>
<!----------------------- //혜택 정보 ----------------------------->
<!------------------------- 장바구니 정보 ------------------------->
<div class="xans-element- xans-order xans-order-tabinfo SP_order_tab displaynone "><ul class="menu">
<!-- <li class="selected "><a href="/order/basket.html">국내배송상품 (1)</a></li> --><!-- <li class=" "><a href="/order/basket.html?delvtype=B">해외배송상품 (0)</a></li> -->
</ul>
<p class="right ">장바구니에 담긴 상품은 14일 동안 보관됩니다.</p>
</div>
<!------------------------- //장바구니 정보 ------------------------->
<!--------------------- 장바구니에 상품 없을때 ----------------------->
<!--------------------- //장바구니에 상품 없을때 ----------------------->
<!---------------------- 장바구니에 상품 있을때 ------------------------>
<!-- @@ 장바구니 상품 있을때 -->
<div class="xans-element- xans-order xans-order-emptyitem toggleArea eToggle selected basket_item_wrapper "><!-- 선택상품 제어 버튼 -->
<div class="xans-element- xans-order xans-order-selectorder "><a href="#none" class="mini SMScart_allsel_btnTD selected" id="product_select_all" data-status="off"><div class="box"></div>
<span class="count">전체 상품 (<span class="all-count">1</span>)</span></a>
<!--<a href="#none" onclick="Basket.deleteBasket()" class="btnNormal mini SMScart_seldel_btnTD">선택삭제</a>-->
<!--a href="#none" onclick="Basket.moveOversea()" class=" btnStrong mini">해외장바구니로 이동</a-->
</div>
<div class="contents chk_custom_studio order_table">
                    <!-- 일반상품 (기본배송) -->
                    <div class="xans-element- xans-order xans-order-normnormal xans-record-"><!-- 주문 리스트 -->
<div class="xans-element- xans-order xans-order-list"><!-- 참고: 상품 반복 //////////////////////////////////////////////////// -->
<div class="prdInfo xans-record-">
                                <!-- 체크박스 -->
                                <input type="checkbox" id="basket_chk_id_0" name="basket_product_normal_type_normal"><label for="basket_chk_id_0" class="label_for_check"></label>
                                &nbsp;<!-- //체크박스 -->
                                <!-- 설명 -->
                                <div class="description">
                                    <!-- 상품 이미지 -->
                                    <p class="prdImg"><a href="/product/detail.html?product_no=2104&amp;cate_no=121"><img loading="lazy" src="//www.ohora.kr/web/product/tiny/202410/b8ead469934d039305eba65f492d0d2f.jpg" alt="" width="250" height="250"></a></p>
                                    <!-- //상품 이미지 -->
                                    <!-- 상품 설명 -->
                                    <div class="prdDesc">
                                        <!-- 상품명 -->
                                        <strong class="prdName" title="상품명"><a href="/product/detail.html?product_no=2104&amp;cate_no=121">N 딥 네일</a></strong>
                                        <!-- //상품명 -->
                                        <!-- 옵션 영역 -->
                                        <!-- //옵션 영역 --><!-- 정보 영역 --><ul class="info">
<li class="displaynone">배송 :
                                                <span class="">3,000<span class="displaynone"></span></span> [조건] / 기본배송 <span class="displaynone">(해외배송가능)</span>
                                            </li>
                                            <li title="적립금" class="mileage displaynone">적립금-</li>
                                            <li class="price">
                                                <span class="discount" title="판매가"><strong>14,800</strong> <span class="displaynone"></span></span>
                                                <span class="" title="할인판매가"><strong>12,580</strong> <span class=""></span></span><span class="dc_percent">15%</span>
                                            </li>
                                            <li class="quantity">
                                                <a href="javascript:void(0);"><img class="QuantityDown" alt="down" src="../ohora_html/minus.svg" width="25" height="25" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"></a>
                                                <input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text">                                                <a href="javascript:void(0);"><img class="QuantityUp" alt="up" src="../ohora_html/plus.svg" width="25" height="25" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"></a>
                                                <!--<span><a href="#none" class="btnBasic SMScart_option_send_btnTD" onclick="Basket.modifyQuantity()">변경</a></span>-->
                                            </li>
                                        </ul>
<!-- //정보 영역 --><!-- 합계 --><div class="prdTotal">
                                            합계 : <!----><strong>12,580</strong> <span class="displaynone"></span>
                                        </div>
                                        <!-- //합계 -->
                                    </div>
                                    <!-- //상품 설명 -->
                                </div>
                                <!-- //설명 -->
                                <!-- 버튼 영역 -->
                                <a href="#none" onclick="basketItemChk('basket_chk_id_0');" class="btnNormal SMScart_option_del_btnTD">삭제</a>
                                <div class="btnArea typeFull displaynone">
                                    <span class="gLeft">
                                        <a href="#none" onclick="selBasketDel('basket_chk_id_0');" class="btnNormal SMScart_option_del_btnTD">삭제</a>
                                        <a href="#none" onclick="BasketNew.moveWish(0);" class="btnNormal SMScart_option_wish_btnTD">관심상품</a>
                                    </span>
                                    <span class="gRight">
                                        <a href="#none" onclick="Basket.orderBasketItem(0);" class="btnStrong SMScart_option_buy_btnTD">주문하기</a>
                                    </span>
                                </div>
                                <!-- //버튼 영역 -->
                            </div>
<!-- //참고 -->
<!-- 참고: 상품 반복 //////////////////////////////////////////////////// -->
<!-- //참고 -->
</div>
<!-- //주문 리스트 -->
<!-- 주문 요약 -->
<div class="totalPrice toggleArea type2 eToggle displaynone">
                            <h3 class="txtTitle title">[기본배송]</h3>
                            <div class="contents">
                                상품구매금액 <strong>14,800</strong> 
                                <span class="displaynone">()</span> 
                                <span class="displaynone"></span>
                                + 배송비 <strong>3,000</strong> 
                                <span class="displaynone"></span>
                                <span class="sale "> - 상품할인금액 <strong>2,220</strong> </span> =<br>
                                합계 :                                 <strong class="total">15,580</strong>
                                 
                                <span class="displaynone">                                </span>
                            </div>
                        </div>
<!-- //주문 요약 -->
</div>
                    <!-- 일반상품 (기본배송) 끝 -->


                    <!-- 일반상품 (업체기본배송) -->
                                        <!-- 일반상품 (업체기본배송) 끝 -->

                    <!-- 일반상품 (개별배송) -->
                                        <!-- 일반상품 (개별배송) 끝 -->

                    <!-- 해외 배송 영역 -->
                    
                    <!-- 일반상품 (해외배송) -->
                                        <!-- // 일반상품 (해외배송) 끝 -->


                    <!-- 무이자 할부 상품 -->
                                        <!-- //무이자 할부 상품 -->

                    <!-- 무이자상품 (기본배송)-->
                                        <!-- 무이자상품 (기본배송) 끝 -->

                    <!-- 무이자상품 (개별배송)-->
                                        <!-- 무이자상품 (개별배송) 끝-->

                    

                    <!-- 무이자상품 (해외배송)-->
                                    </div>
</div>
<!-- @@ // 장바구니 상품 있을때 -->
<!---------------------- //장바구니에 상품 있을때 ------------------------>
<!--div module="Order_AllotmentInfo">
<p></p>
<p class="info displaynone">총 주문금액이 5만원 미만일시에는 카드결제 시 무이자할부가 적용되지 않습니다.</p>
</div-->
<!--
<div module="Order_BasketPriceInfoGuide" class="displaynone">
<p class="info displaynone">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</p>
<p class="info displaynone">결제예정금액은 배송비가 포함된 금액이므로 주문서작성에서 확인 가능합니다.</p>
<p class="info displaynone">추가증정 이벤트 상품의 옵션 및 수량 변경은 상품상세에서 가능합니다.</p>
</div>
-->
<!--
<div module="Order_SelectOrder" class="SP_submitBtn_wrap type2">
<div class="SP_submitBtn_left">
<a href="#none" class="SP_cm_btn SP_btn_gray_bd" onclick=""><i class="icoDelete"></i> 삭제하기</a>
<a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd displaynone">관심상품등록</a>
<a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd SP_wrodCart_btn displaynone">해외배송상품 장바구니로 이동</a>
<a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd displaynone">상품조르기</a>
</div>
<div class="SP_submitBtn_right">
<a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd displaynone" link-order="/order/orderform.html" link-login="/member/login.html">스토어픽업 상품 선택</a>
<a href="#none" class="SP_cm_btn SP_btn_gray_bd" onclick="">장바구니비우기</a>
<a href="#none" class="SP_cm_btn SP_btn_gray_bd" onclick="" link="/estimate/userform.html">견적서출력</a>
</div>
</div>
-->
<!------------------ 총 주문금액 영역 ----------------------->
<div class="xans-element- xans-order xans-order-emptyitem total_order_wrapper " style="top: 156px;"><div class="total_order_inner">
                    <!-- 총 주문금액 : 국내배송상품 -->
                    <div class="xans-element- xans-order xans-order-totalsummary  totalSummary "><!-- 총 상품 금액 -->
<div class="toggleArea type1 eToggle">
                            <div class="total title item">
                                <h3>총 상품금액</h3>
                                <p>
                                    <strong class="prdPriceAll">14,800</strong>                                    <span class="refer displaynone"><span class="total_product_price_display_back"></span></span>
                                </p>
                            </div>
                            <div class="more contents displaynone">
                                <ul>
<li>
<strong>상품금액</strong><span><span class="total_product_price_display_front_mobile">0</span></span>
</li>
                                    <li>
<strong>부가세</strong><span><span class="total_product_vat_price_front_mobile">0</span></span>
</li>
                                </ul>
</div>
                        </div>
<!-- //총 상품 금액 -->
<!-- 배송비 -->
<div class="toggleArea type1 eToggle">
                            <div class="item total title">
                                <h3>총 배송비</h3>
                                <p class="delivery_price_wrap">
                                    <strong class="prdDelvAll">3,000</strong>                                    <span class="refer displaynone"><span class="total_delv_price_back"></span></span>
                                </p>
                                <div class="shippingArea displaynone">(<span></span>
                                    <div class="shippingFee">
                                        <a href="#none" class="btnNormal" id="">자세히</a>)
                                        <div class="ec-base-tooltip" style="display: none;">
                                            <h3>배송비할인</h3>
                                            <div class="content">
                                                <h4></h4>
                                                <table border="1" summary="">
<caption>배송비 할인 이벤트 정보</caption>
                                                    <tbody>
<tr>
<th scope="row">혜택</th>
                                                            <td>
                                                                <strong class="txtEm"></strong>
                                                                <p></p>
                                                            </td>
                                                        </tr>
<tr class="displaynone">
<th scope="row">기간</th>
                                                            <td>
                                                                <strong class="txtEm"></strong>
                                                                <p></p>
                                                            </td>
                                                        </tr>
<tr class="displaynone">
<th scope="row">대상</th>
                                                            <td></td>
                                                        </tr>
</tbody>
</table>
</div>
                                            <a href="#none" class="btnClose"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif" alt="닫기"></a>
                                            <span class="edge"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="total_info_txt delv">
<span class="amount">37,420</span>원 추가 구매시 <b>무료배송<b></b></b>
</div>
                            </div>
                            <!-- 스마트스킨 배송비 문구 : 임시감춤처리하고 total_info_txt 텍스트로 문구 영역 변경-->
                            <div id="SMS_freeDelv" class="displaynone">
                                <p class="ment">
                                    <b id="needPrice">0</b>
                                    추가 주문 시,
                                    <span id="delvPrice" class="xans-element- xans-order xans-order-totalsummary "><span class="total_delv_price_front">3,000</span></span>
                                    <b>무료배송</b>
                                </p>
                            </div>
                            <!-- //스마트스킨 배송비 문구 -->
                        </div>
<!-- //배송비 -->
<!-- 상품할인금액 -->
<div class="toggleArea type1 eToggle ">
                            <div class="total title item">
                                <h3>상품할인금액</h3> <!-- 총 상품 할인 금액 -->
                                <p class="discountAll">
                                    -
                                    <span class="discount"><strong class="prdDiscountAll">2,220</strong></span>
                                    <span class="refer displaynone"></span>                 
                                </p>
                            </div>
                            <div class="more contents displaynone ">
                                <ul>
<li class="">
<strong>기간할인</strong><span id="mBenefitPeriodSale">2,220</span>
</li>
                                    <li class="displaynone">
<strong>회원할인</strong><span id="mBenefitMemberSale">0</span>
</li>
                                    <li class="displaynone">
<strong>재구매할인</strong><span id="mBenefitRebuySale">0</span>
</li>
                                    <li class="displaynone">
<strong>대량구매할인</strong><span id="mBenefitBulkSale">0</span>
</li>
                                    <li class="displaynone">
<strong>바로가기(링콘)할인</strong><span id="mBenefitLivelinkonSale">0</span>
</li>
                                    <li class="displaynone">
<strong>어바웃pbp할인</strong><span id=""></span>
</li>
                                    <li class="displaynone">
<strong>신규상품할인</strong><span id="mBenefitNewproductSale">0</span>
</li>
                                    <li class="displaynone">
<strong>결제수단할인</strong><span id=""></span>
</li>
                                    <li class="displaynone">
<strong>회원등급할인</strong><span id="mBenefitMembergroupSale">0</span>
</li>
                                </ul>
</div>
                        </div>
<!-- //상품할인금액 -->
<!-- 결제예정금액 -->
<div class="toggleArea type1 eToggle order final">
                            <div class="item total title">
                                <h3>총 결제예정금액</h3>
                                <p class="price_final">
                                    <strong class="prdFinalAll">15,580</strong>                                    <span class="refer displaynone"></span>
                                </p>
                                <!-- 예상 적립금 -->
                                <div class="mileage total_info_txt">
                                    <!-- 회원 -->
                                    <div class="xans-element- xans-layout xans-layout-statelogon member "><div class="xans-element- xans-order xans-order-dcinfo displaynone "><div class="group_name">Friend</div>
</div>
<div class="mileage_txt">구매시 125원 <b>적립예정</b></div>
</div>
                                    <!-- 비회원 -->
                                                                    </div>
                                <!-- //예상 적립금 -->
                            </div>
                        </div>
<!-- //결제예정금액 -->
</div>
                    <!-- 총 주문금액 : 해외배송상품 -->
                    <div class="xans-element- xans-order xans-order-totaloversea displaynone totalSummary "><div class="type1 eToggle">
                            <div class="total title">
                                <h3>총 상품금액</h3>
                                <p>
                                    <strong><span class="total_product_price_display_front">14,800</span></strong>                                    <span class="refer displaynone"><span class="total_product_price_display_back"></span></span>
                                </p>
                            </div>
                            <div class="more contents displaynone">
                                <ul>
<li>
<strong>상품금액</strong><span><span class="total_product_price_display_front_mobile">0</span></span>
</li>
                                    <li>
<strong>부가세</strong><span><span class="total_product_vat_price_front_mobile">0</span></span>
</li>
                                </ul>
</div>
                        </div>
<div class="toggleArea type1 eToggle ">
                            <div class="total title item">
                                <h3>총 할인금액</h3>
                                <p>
                                    <strong>2,220</strong>                                    <span class="refer displaynone"></span>                 
                                </p>
                            </div>
                            <div class="more contents displaynone ">
                                <ul>
<li class="">
<strong>기간할인</strong><span id="mBenefitPeriodSale">2,220</span>
</li>
                                    <li class="displaynone">
<strong>회원할인</strong><span id="mBenefitMemberSale">0</span>
</li>
                                    <li class="displaynone">
<strong>재구매할인</strong><span id="mBenefitRebuySale">0</span>
</li>
                                    <li class="displaynone">
<strong>대량구매할인</strong><span id="mBenefitBulkSale">0</span>
</li>
                                    <li class="displaynone">
<strong>바로가기(링콘)할인</strong><span id="mBenefitLivelinkonSale">0</span>
</li>
                                    <li class="displaynone">
<strong>어바웃pbp할인</strong><span id=""></span>
</li>
                                    <li class="displaynone">
<strong>신규상품할인</strong><span id="mBenefitNewproductSale">0</span>
</li>
                                    <li class="displaynone">
<strong>결제수단할인</strong><span id=""></span>
</li>
                                    <li class="displaynone">
<strong>회원등급할인</strong><span id="mBenefitMembergroupSale">0</span>
</li>
                                </ul>
</div>
                        </div>
<div class="total title">
                            <h3>총 합계</h3>
                            <p>
                                <strong>15,580</strong>                                <span class="refer displaynone"></span>
                            </p>
                        </div>
</div>



                    <div class="xans-element- xans-order xans-order-totalorder SP_tableBtn_wrap"><div class="SP_tableBtnAlign_right">
                            <div class="btn buy_btn">
                            	<a href="/projectOhora/product/orderpage.do?pdtId=2&pdtId=3&pdtId=5&pdtCount=1&pdtCount=2&pdtCount=1" onclick="Basket.orderSelectBasket(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="SP_cm_btn ">구매하기</a>
                            </div>
                            <div class="displaynone">
                                <a href="/" class="SP_cm_btn">계속 쇼핑하기</a>
                                <a href="#none" onclick="Basket.orderSelectBasket(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="SP_cm_btn ">선택상품 주문</a>                    
                                <a href="#none" onclick="Basket.orderAll(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="SP_cm_btn   ">전체 상품주문</a>                            <div id="appPaymentButtonBox" style="display:block; max-width:365px; margin:10px auto 0; text-align:center;"></div></div>
                            
                            <!-- 네이버,카카오 체크아웃 구매 버튼  -->
                            <!--<div id="appPaymentButtonBox"></div>
                            <p class="npay_info" module="Layout_statelogoff">비로그인 카카오페이 결제 시 카카오페이 구매 포인트 10% 적립!<br/>카카오페이 구매 시 공식몰 이벤트 혜택이 적용되지 않을 수 있습니다.</p>
                            <style>#appPaymentButtonBox .__checkout_buy_container .__checkout_buy_contents .__checkout_btn_buy{ width:98% !important; margin-right:1%; float:right; }</style>-->
                            
                            <div id="NaverChk_Button" class="naver_Wrap displaynone"></div>
                                                        <!-- // 네이버,카카오 체크아웃 구매 버튼  -->
                        </div>
</div>
                </div>
</div>
<!------------------ 총 주문금액 영역 ----------------------->
</div>
        <!---------------------------- //장바구니 모듈 Order_BasketPackage ------------------------->
            
        <!-- @JGO/240611 - Enhanced Ecommerce Tag -->
        <script>
        //Npay Event
            window.addEventListener("DOMContentLoaded", function(){

                setTimeout(function() {
                console.log('네이버페이 준비');

                    $('.npay_btn_pay').one('click', function(){
                    console.log('네이버페이 실행');

                        var productTotalPrice = 0;

                        if(jgo_products.length > 0) {
                            for(var i in jgo_products) {
                                productTotalPrice += jgo_products[i].price * jgo_products[i].quantity
                            }
                        }

                        if(jgo_products.length > 0 && productTotalPrice > 0) {

                            var NaverPayPrice = getCookie('NAVERPAY_PRICE');

                            if(NaverPayPrice != "" && !isNaN(parseInt(NaverPayPrice)) && parseInt(NaverPayPrice) == productTotalPrice) {
                                console.log(productTotalPrice + " 으로 금액이 같거나, 중복으로 클릭됨");
                                return false;
                            }

                            if(NaverPayPrice == null || NaverPayPrice == "" || (NaverPayPrice != "" && !isNaN(parseInt(NaverPayPrice)) && parseInt(NaverPayPrice) != productTotalPrice)) {
                                setCookie('NAVERPAY_PRICE', productTotalPrice, 1);
                            }

                            var date = new Date();
                            var orderId = date.getUTCFullYear();
                            orderId += (parseInt(date.getMonth())+1) < 10 ? '0'+ (parseInt(date.getMonth())+1) : (parseInt(date.getMonth())+1) + '';
                            orderId += date.getDate() < 10 ? '0'+ date.getDate() : date.getDate() + '';
                            orderId += '-Npay-';
                            orderId += Math.round(Math.random()*8888888+1111111);

                            dataLayers.push({
                                'event': 'nPayClick',
                                'ecommerce': {
                                    'purchase': {
                                        'actionField': {
                                            'id': orderId,
                                            'revenue': productTotalPrice,
                                        },
                                        'products': jgo_products
                                    }
                                }
                            });
                        }

                    });

                }, 1000);

            });

            var jgo_products = jgo_products||[];

            if(jgo_products){

                dataLayers.push({
                    'event': 'viewcart',
                    'ecommerce': {
                        'checkout': {
                            'products': jgo_products
                        }
                    }
                });
            }

        </script>

        <div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList displaynone xans-record-"><!--
$login_page = /member/login.html
$count = 5
$mode = basket
-->
<h3 class="SP_contTitle">관심상품</h3>
<table border="1" summary="" class="SP_tableSt01_isThumNail">
<caption>관심상품 목록</caption>
                <colgroup>
<col style="width:92px">
<col style="width:auto">
<col style="width:105px">
<col style="width:100px">
<col style="width:100px">
<col style="width:85px">
<col style="width:105px">
<col style="width:110px">
</colgroup>
<thead><tr>
<th scope="col">이미지</th>
                        <th scope="col">상품정보</th>
                        <th scope="col">판매가</th>
                        <!--<th scope="col" class="mileage">적립금</th>-->
                        <th scope="col">배송구분</th>
                        <th scope="col">배송비</th>
                        <th scope="col">합계</th>
                        <th scope="col"></th>
                    </tr></thead></table>
<p class="SP_message ">관심상품 내역이 없습니다.</p>
</div>
        <!---------------------------- //Order_BasketPackage ------------------------->

            </div>

    <!-- 장바구니 페이지 배너 -->
    <!--<div style="margin-top:25px;" class="basket_banner_wrap"><a href="/event/event8.html"><img src="/web/_event/210701_event8_2/PC_cart_2nd.jpg"></a></div>-->
    <!-- 장바구니 페이지 배너 -->

    <!--------------------------------- @@ 개발2차 베스트 카테고리로 연결 : 추천디자인 ---------------------------------->
    <div class="common_list_container reco_new_container"> 
        <div class="text_area"> 
            <h3 class="basketRcmdTit">추천 상품</h3>  
        </div>  
        <!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
        <div class="SMS_Product_display SMSprdSortTarget common_list_box" data-sort="2col">  
            <div class="swiper-container swiper-lazy-init swiper-container-initialized swiper-container-horizontal" data-swiper-key="reconewContainer">  
               <!----------------------------------------@@ 상품리스트영역 ul. common_items ------------------------------------->
                <ul class="items SMSitems common_items swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-2543.33px, 0px, 0px);"><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="776" data-filter="#마블#데일리"><dl><a href="/product/detail.html?product_no=776&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/medium/202206/b6fe4302016acc84bfbf25e779d307f2.jpg" alt="" width="800" height="800"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/big/202206/14b40534a2d41f77034f32ff583e7bed.jpg" alt="" width="800" height="800"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 멀베리 네일</span></p><p class="subname"></p><p class="subnameSimple"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">8,880</p><p class="discount">40%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="776" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.9</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">1,814</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('776','120', '1', 'A0000', false, '1', 'P0000BDW', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=776&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="776" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">1,814</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">8,880</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">234</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #아트 #버건디 #레드 #마블 #가을네일</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">마블,데일리</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2101" data-filter="#네일#자석#데일리"><dl><a href="/product/detail.html?product_no=2101&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/medium/202410/17d1808286f360f7cd1ddf77141b0fbd.jpg" alt="" width="800" height="800"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/big/202410/677fb310eddc9731eb72c7f8a9dd22d2.jpg" alt="" width="800" height="800"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 쿠잉 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">12,580</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2101" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.9</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2101" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">43</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2101','120', '1', 'A0000', false, '1', 'P0000DCV', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2101&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2101" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">43</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">12,580</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">4</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #젤스트립 #핑크 #자석 #데일리 #글리터</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">네일,자석,데일리</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="265" data-filter="#글리터#웨딩"><dl><a href="/product/detail.html?product_no=265&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/medium/202207/a01ac461b36b71f78270548dbc29b121.jpg" alt="" width="800" height="800"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/big/202207/7443f5c504b947b8a33feec01460312c.jpg" alt="" width="800" height="800"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 픽시더스트 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">12,800</p><p class="sale_price">8,320</p><p class="discount">35%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="265" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.9</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="265" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">4,831</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('265','120', '1', 'A0000', false, '1', 'P00000KF', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=265&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="265" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">4,831</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">12,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">8,320</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">485</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #풀컬러 #핑크 #글리터 #파티 #분홍 #코랄핑크 #봄네일 #event3</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">글리터,웨딩</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2103" data-filter="#데일리#그라데이션#네일"><dl><a href="/product/detail.html?product_no=2103&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/medium/202410/8b4bb562a09100244fa6cd0ef361f550.jpg" alt="" width="800" height="800"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/big/202410/d0feef871c1272d03457fc47caadded6.jpg" alt="" width="800" height="800"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 애쉬 올리브 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">12,580</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2103" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 5.0</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2103" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">13</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2103','120', '1', 'A0000', false, '1', 'P0000DCX', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2103&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2103" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">13</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">12,580</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">1</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #젤스트립 #그라데이션 #마블 #카키 #그린 #데일리</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">데일리,그라데이션,네일</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2086" data-filter="#데일리"><dl><a href="/product/detail.html?product_no=2086&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202409/91c66d67ae4ff36b421aebdc8bb4d028.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202409/64f6f46c6fd496b185804eee67f80d26.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 마롱 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">11,100</p><p class="discount">25%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2086" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.9</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2086" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">35</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2086','120', '1', 'A0000', false, '1', 'P0000DCG', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2086&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2086" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">35</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">11,100</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">6</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #그라데이션 #브라운 #데일리 #가을네일</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">데일리</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2091" data-filter="#네일#데일리#마블#드로잉#파츠"><dl><a href="/product/detail.html?product_no=2091&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202409/29d61ad537d1373ea4b92957e5ad1075.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202409/1b14d5938cfa64851ba7e28680b38799.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 젤리 피치 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">16,800</p><p class="sale_price">12,600</p><p class="discount">25%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2091" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.8</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2091" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">40</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2091','120', '1', 'A0000', false, '1', 'P0000DCL', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2091&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2091" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">40</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">16,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">12,600</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">4</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #데일리 #마블 #핑크 #피치 #드로잉 #파츠</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">네일,데일리,마블,드로잉,파츠</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide swiper-slide-prev" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2045" data-filter="#드로잉# 자석# 파츠#데일리#그라데이션"><dl><a href="/product/detail.html?product_no=2045&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202403/06326cfa17b555b5a2638186fef6f115.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202403/bed0c38fcc5637fe89b2790f8be539fd.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 베어 업 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">16,800</p><p class="sale_price">13,440</p><p class="discount">20%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2045" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.9</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2045" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">265</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2045','120', '1', 'A0000', false, '1', 'P0000DAR', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2045&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2045" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">265</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">16,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">13,440</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">43</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #그라데이션 #자석 #파츠 #드로잉 #치크 #코랄 #곰돌이 #n차재입고</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">드로잉, 자석, 파츠,데일리,그라데이션</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide swiper-slide-active" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="1257" data-filter="#자개#글리터#그라데이션"><dl><a href="/product/detail.html?product_no=1257&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202206/5af3664bc32b70f2b346698dd236121f.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202206/1ae8900e246ebbe3c5ebfde70c0f9080.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 브릴리언트 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">9,620</p><p class="discount">35%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="1257" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.9</div></span><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="1257" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">1,049</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('1257','120', '1', 'A0000', false, '1', 'P0000BWJ', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=1257&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="1257" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">1,049</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">9,620</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">164</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #아트 #레드 #자개 #글리터 #레드버건디 #그라데이션 #가을네일</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">자개,글리터,그라데이션</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide swiper-slide-next" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2088" data-filter="#데일리#드로잉#네일"><dl><a href="/product/detail.html?product_no=2088&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202409/3545f9dce1b3b7dbeda9f8cf2169ad4a.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202409/7ddb4471098a13e89ddb36edff9cf988.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 데이라이트 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">11,100</p><p class="discount">25%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2088" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 5.0</div></span><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2088" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">32</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2088','120', '1', 'A0000', false, '1', 'P0000DCI', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2088&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2088" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">32</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">11,100</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">1</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #체크 #시럽 #민트 #데일리 #드로잉</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">데일리,드로잉,네일</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2106" data-filter="#네일#자석"><dl><a href="/product/detail.html?product_no=2106&amp;cate_no=120&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202410/6bd59d9845fa4bf4e097e33bdf733027.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202410/55b871332f5bbb75de9221fd6f0d5cd9.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 워터리 문 네일</span></p><p class="subname"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">12,580</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2106" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
    <defs>
        <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
    </defs>
    <use xlink:href="#star-full"></use>
</svg>
</div> 4.8</div></span><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2106" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">20</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2106','120', '1', 'A0000', false, '1', 'P0000DDA', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2106&amp;cate_no=120&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2106" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">20</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">12,580</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">3</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #젤스트립 #실버 #자석 #그레이</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">네일,자석</span></div></div></div><div class="restockIcon"></div></div></dl></div></li></ul><!----------------------------------------@@ 상품리스트영역 ul. common_items -------------------------------------><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>   
            <div class="swiper-button-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true"></div>   
           <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>   
        <div class="swiper-scrollbar"></div></div>    
    </div>    
    <!--------------------------------- @@ 개발2차 베스트 카테고리로 연결 : 추천디자인 ---------------------------------->

</div>
<!------------------------------------------------- //장바구니 영역 ------------------------------------------------->

<!-- @js(/iv/js/iv_basket_cafe24.js)-->
<!-- //장바구니 금액 변경 및 적립금 변경 -->


<!-- cre.ma / init 스크립트 (PC) / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
<!--script>(function(i,s,o,g,r,a,m){if(s.getElementById(g)){return};a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.id=g;a.async=1;a.src=r;m.parentNode.insertBefore(a,m)})(window,document,'script','crema-jssdk','https://widgets.cre.ma/ohora.kr/init.js');</script-->
<!-- cre.ma / init 스크립트 (PC) / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
<script>
    (function(i,s,o,g,r,a,m){if(s.getElementById(g)){return};a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.id=g;a.async=1;a.src=r;m.parentNode.insertBefore(a,m)})(window,document,'script','crema-jssdk','//widgets.cre.ma/ohora.kr/init.js');    // 리뷰 수와 상품 평점을 업데이트하는 함수
    function UpdateCountAndScore() {
        if (typeof crema == "object" && typeof crema.run == "function") {
            crema.run();
        }
        console.log("%c[CREMA]%c REVIEWS COUNT AND SCORE WAS UPDATED.", "font-weight: bold; color: black;", "color: green");
    }
</script>

<!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
<!---- snappush  start contact mail: support@snapvi.co.kr --->
<div id="spm_page_type" style="display:none">sq_basket_page</div>
<script async="" type="text/javascript" src="//cdn.snapfit.co.kr/js/spm_f_common.js" charset="utf-8"></script>
<div id="spm_banner_main"></div>
<div id="spm_cafe_basket_wrap" style="display:none" class="xans-element- xans-order xans-order-totalsummary "><input type="hidden" id="sf_basket_total_price" value="14,800">

&nbsp;
</div>
<!---- snappush  end -->
                </div>
            </div>
        </div>

</body>
<%@include file="footer.jsp" %>
</html>