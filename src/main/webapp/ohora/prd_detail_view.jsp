<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라 상품 상세페이지</title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost/jspPro/images/SiSt.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="${contextPath}/resources/cdn-main/prd_detail_view.css">
<script src="../resources/cdn-main/example.js"></script>
<script src="../resources/js/cart_cookie.js"></script>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
</head>
<body>

	<%@include file="header.jsp"%>
	<!------------------------------ 상품 상세 영역 -------------------------------->
	<div class="SP_prdDtail_wrap renew_prdDetail">
		<!------------------------------ 레이아웃 -------------------------------->
		<div class="SP_layoutFix">
			<!------------------------------ product_detail 모듈 -------------------------------->
			<div class="xans-element- xans-product xans-product-detail">
				<!------------------------------ SP_detailArea_wrap -------------------------------->
				<div class="SP_detailThumbnail_wrap">
					<!-- 큰 이미지 -->
					<div class="SP_thumbnail">
						<img id="mainImage"
							src="${contextPath}/resources/images/prd_image/imgs/${pdtDetail.pdt_img_url}.jpg"
							alt="${pdtDetail.pdt_name}" class="BigImage">
					</div>
					<!-- 작은 이미지 목록 -->
					<div class="SP_listImg">
						<ul>
							<li><img
								src="${contextPath}/resources/images/prd_image/imgs/${pdtDetail.pdt_img_url}.jpg"
								alt="Thumb 1"
								onmouseover="changeImage('${contextPath}/resources/images/prd_image/imgs/${pdtDetail.pdt_img_url}.jpg')"></li>
							<li><img
								src="${contextPath}/resources/images/prd_image/imgs_hover/${pdtDetail.pdt_img_url}.jpg"
								alt="Thumb 2"
								onmouseover="changeImage('${contextPath}/resources/images/prd_image/imgs_hover/${pdtDetail.pdt_img_url}.jpg')"></li>
						</ul>
					</div>
				</div>
				<!------------------------------ //상품 이미지 영역 -------------------------------->
				<!------------------------------ 상품 정보 영역 -------------------------------->
				<div class="SP_detailPrdOpt_wrap" style="opacity: 1;">
					<!------------------------------ 상품 정보 영역 inner -------------------------------->
					<div class="SP_detailPrdOpt_inr">
						<div style="display: none"
							class="xans-element- xans-product xans-product-hashtag displaynone">
							<div class="heading">
								<strong>태그</strong>
							</div>
							<ul class="list">
								<li class=""></li>
								<li class=""></li>
							</ul>
						</div>
						<!-------------------------- 상품 정보 호출 ---------------------------->
						<div
							class="xans-element- xans-product xans-product-detaildesign SP_dtPrdOptionList_wrap">
							<ul class="SP_prdListItemInfo" style="display: block;">
								<li class="display_상품명 xans-record- SP_dfList_prdName"><span
									class="SP_detail_content" style=""> <span class="title"
										style="">${ pdtDetail.pdt_name }</span>
								</span></li>
								<li class="xans-record- review_count"><span
									class="SP_detail_content">리뷰 ${ pdtDetail.pdt_review_count }</span>
								</li>
								<li class="display_가격 xans-record- SP_dfList_price strike"
									style="display: list-item;"><span class="title">가격</span>
									<span class="SP_detail_content" style="">
										<c:choose>
										<c:when test="${ pdtDetail.pdt_discount_rate != 0 }">
											<span style="">
												<strong id="span_product_price_text" style="text-decoration: line-through;">
													<fmt:formatNumber value="${ pdtDetail.pdt_amount }" type="number" groupingUsed="true" />
												</strong>
												<input id="product_price" name="product_price" value="" type="hidden" style="">
											</span>
											<span class="salesPrice">
												<fmt:formatNumber value="${pdtDetail.pdt_discount_amount}" type="number" groupingUsed="true" />
											</span>
											<span class="dcPercent">${ pdtDetail.pdt_discount_rate }%</span>
										</c:when>
										<c:otherwise>
											<span class="salesPrice">
												<fmt:formatNumber value="${pdtDetail.pdt_discount_amount}" type="number" groupingUsed="true" />
											</span>
										</c:otherwise>
										</c:choose>
									</span>
								</li>

								<c:choose>
									<c:when test="${empty prdOptCmb}">
										<li class="xans-record- SP_dfList_quantity"
											style="display: list-item;"><span class="title">수량</span>
											<div class="SP_detail_content">
											    <a href="#none" class="down" ></a>
											    <input id="quantity_opt" class="quantity_opt" value="1" type="text" readonly="">
											    <a href="#none" class="up" ></a>
											</div>
										</li>
									</c:when>
									<c:otherwise>
										<div class="SP_prdOptTb_cont">
											<span class="title">길이 선택</span> <select
												option_product_no="1521"
												option_select_element="ec-option-select-finder"
												option_sort_no="1" option_type="F" item_listing_type=""
												option_title="길이 선택" product_type="product_option"
												product_option_area="product_option_1521_0" name="option1"
												id="product_option_id1" class="ProductOption0"
												option_style="select" required="true">
												<option value="*" selected="" link_image="">- [필수]
													옵션을 선택해 주세요 -</option>
												<option value="**" disabled="" link_image="">-------------------</option>
												<c:forEach items="${prdOptCmb}" var="poc" varStatus="status">
													<option value="P0000CGN000D" link_image="">0${ status.index + 1 }.
														${poc.opt_name}</option>
												</c:forEach>
											</select>
										</div>
									</c:otherwise>
								</c:choose>
							</ul>

							<div class="share_btn">
								<span class="kakaoShare" style=""> <img
									src="https://cdn-icons-png.flaticon.com/512/1828/1828960.png">
								</span>
							</div>
							<!-------------------------- //상품 정보 호출 ---------------------------->
						<!------------------------- //옵션 출력 ------------------------------>
						<!-- 추가 구성 상품 -->
						<div
							class="xans-element- xans-product xans-product-addproduct SP_productAddSet_wrap view open">
							<div class="SP_prdAddSet_title">
								<h3>추가구성상품</h3>
								<a href="javascript:void(0);"
									class="SP_js_toggle_btn SP_prdAddSetToggle"></a>
							</div>
							<ul class="SP_prdAddSetList_wrap">
								<c:choose>
									<c:when test="${ empty optionProducts }">
										<li>추가 구성상품 없음</li>
									</c:when>
									<c:otherwise>
										<c:forEach var="optprd" items="${ optionProducts }" varStatus="status">
											<li data-prd-num="${ status.index + 1 }" class="xans-record-">
												<div class="SP_addSetInfo">
													<div class="SP_addSetThumb">
														<a href="#"><img
															src="${contextPath}/resources/images/prd_image/imgs/${optprd.pdt_img_url}.jpg"
															alt="" id="ec-add-product-composed-product-1810"></a>
													</div>
													<div class="SP_prdAddSetList">
														<ul>
															<li class="SP_addSetList_tt">
																<!-- <div class="SP_prdAddSet_tt">상품명</div> -->
																<div class="SP_prdAddSet_cont SP_prdAddSet_prdtt">${optprd.pdt_name}</div>
															</li>
															<li class="desc">${optprd.pdt_description}</li>
															<li class=" add_prd_price">
																<!-- <div class="SP_prdAddSet_tt"><span>판매가 : </span></div> -->
																<div class="SP_prdAddSet_cont SP_prdAddSet_price">
																	<span class=""> <fmt:formatNumber
																			value="${optprd.pdt_discount_amount}" type="number"
																			pattern="#,##0" />
																	</span>
																</div>
															</li>
															<li class="displaynone add_prd_sale">
																<!-- <div class="SP_prdAddSet_tt"><span>할인판매가 : </span></div> -->
																<div class="SP_prdAddSet_cont">
																	<span class=""></span>
																</div>
															</li>
														</ul>
													</div>
													<div class="SP_prdAddSetOpt_wrap displaynone">
														<div
															class="xans-element- xans-product xans-product-noneoption xans-record-">
															<ul>
																<li><strong class="name">상품선택</strong>
																	<div class="SP_prdAddSetOptBox">
																		<select id="addproduct_option_id_1810_1"
																			name="addproduct_option_name_1810" required="true"
																			option_title="프로 네일 강화제">
																			<option value="*" selected="selected">- 상품
																				선택 -</option>
																			<option value="P0000CRQ000A">프로 네일 강화제</option>
																		</select>
																	</div></li>
															</ul>
														</div>
														<div class="displaynone selectButton" id="">
															<a href="#none" class="btnSubmit sizeS" onclick="">옵션선택</a>
														</div>
													</div>
													<div class="btn add-opt-click">
														<a href="#none">추가</a>
													</div>
												</div>
											</li>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>

						<!----------------------------------- 선택 상품 출력 영역 ----------------------------------->
						<div id="totalProducts" class="SP_totalProducts ">
							<table border="0" summary="">
								<caption>상품 목록</caption>
								<colgroup>
									<col style="width: auto">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">상품명</th>
										<th scrop="col">수량</th>
										<th scope="col">가격</th>
									</tr>
								</thead>
								<tbody class=" SP_addQuantity" style="display: none;">
									<tr>
										<td>수량</td>
										<td><span class="quantity"> <a href="#none"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
													alt="수량감소" class="QuantityDown down"></a> <input
												id="quantity" name="quantity_opt[]" style="" value="1"
												type="text"> <a href="#none"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
													alt="수량증가" class="QuantityUp up"></a>
										</span></td>
										<td class="right"><span class="quantity_price">14,800<input
												type="hidden" name="option_box_price"
												class="option_box_price" value="14800"
												item_code="P0000DCV000A"></span>원<span
											class="mileage displaynone" style="display: none;">(<img
												src=""> &nbsp;<span class="mileage_price"></span>)
										</span></td>
									</tr>
								</tbody>
								<tbody class="SP_addOptPrdTotal option_products">
								</tbody>
                                <tbody class="add_products">
                                </tbody>
							</table>
						</div>
						<!----------------------------------- //선택 상품 출력 영역 ----------------------------------->
<!-- 페이지 콘텐츠 -->



						<!----------------------------------- 최종 금액 ----------------------------------->
						<div id="totalPrice" class="SP_totalPrice">
						    <strong>총 상품금액 (개수)</strong> : 
						    <span class="total SP_totalPriceNum">
						    <c:choose>
									<c:when test="${empty prdOptCmb}">
										<strong>
								            <em id="totalAmount">
								                <fmt:formatNumber value="${pdtDetail.pdt_discount_amount}" type="number" groupingUsed="true" />
								            </em>
								            (<span id="totalQuantityDisplay">1</span>개)
								        </strong>
									</c:when>
									<c:otherwise>
										<em id="totalAmount">
								                <fmt:formatNumber value="0" type="number" groupingUsed="true" />
								            </em>
								            (<span id="totalQuantityDisplay">0</span>개)
									</c:otherwise>
							</c:choose>
						        
						    </span>
						</div>
						<!----------------------------------- //최종 금액 ----------------------------------->
						<div class="action_btn_wrap">
							<div class="xans-element- xans-product xans-product-action "
								style="width: 100%;">
								<div class="SP_totalPrdOrderBtn_wrap">
									<a href="#none" class="SP_cm_btn SP_btn_black_bg SP_buyBtn ">
										<!-- onclick="product_submit(1, '/exec/front/order/basket/', this)" -->
										<span id="btnBuy">바로 구매</span>
									</a>
									<!-- //바로 구매 버튼 -->
									<!-- 장바구니 버튼 -->
									<a href="#none" class="SP_cm_btn SP_cartBtn "
										onclick="addtoCart();">장바구니 담기</a>
									<!-- //장바구니 버튼 -->
								</div>
								<div id="appPaymentButtonBox"
									style="margin: 20px auto 0; display: inline-flex; flex-wrap: wrap; gap: 10px;">
									<div id="kakao-checkout-button"></div>
								</div>
							</div>
							<!----------------------------------- //액션 버튼 영역 ----------------------------------->
						</div>

						<!----------------------------------- //액션 버튼 영역 ----------------------------------->
					</div>
					<!------------------------- 배송 정보 / 오늘 도착 팝업------------------------------>
					<div class="deliver_con">
						<table>
							<tbody class="delvtype">
								<tr class="">
									<th scope="row">기본배송</th>
									<td class="delv_price">
										<div>기본 3,000원 (5만원 이상 구매 시 무료)</div>
										<div>제주 및 특수 도서 산간 지역 3,000원 추가</div>
									</td>
								</tr>
								<tr class="same_day displaynone">
								</tr>
								<tr class="delvtoday displaynone">
							</tbody>
						</table>

						</script-->
						<!---------------------------------- //상세페이지 배너 ------------------------------------->
						<!------------------------------------ 공급사:판매사정보 ------------------------------------------>
						<div class="supplyInfo displaynone"></div>
						<!------------------------------------ //공급사:판매사정보 ------------------------------------------>
						<!------------------------------------ //이벤트 ------------------------------------------>
					</div>
					<!------------------------------ //product_detail 모듈 -------------------------------->
				</div>
				<!------------------------------ //레이아웃 -------------------------------->

				<!------------------------------ 레이아웃 -------------------------------->
				<div class="SP_layoutFix">
					<!------------------------------ 쿠폰 다운로드 -------------------------------->
					<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
					<link rel="shortcut icon"
						href="/web/upload/favicon_20190801113230.ico">
					<link rel="stylesheet" type="text/css"
						href="/ind-script/optimizer.php?filename=nc1LCoAwDIThfXHrOYLeqC3xAU2mpCno7RW8gHQ7zMdPB4RpWY2qYbcoZNzQLTPl1mgzqFOGCHR6h5n-_DmHhtL9hIaEaxB299FoiTfbGPWYCg9S1FBO5ZCi6td_AA&amp;type=css&amp;k=37c9481ac0212340e132f81eba4d1049fee7f18e&amp;t=1681776733">
					<link rel="stylesheet" type="text/css"
						href="/ind-script/optimizer_user.php?filename=DcpBCoAgEAXQA9hdfkablkEXsXFISx1xFDp-LR88BMkMJjOUm0KCNLfMdkMdZ4pkQs8J6tl41ngV6BOLXVeQKrL4kRgko0pBbT-pH9xdTPvt3uk_Hw&amp;type=css&amp;k=2cedd6c865ee5376ea9f12b533086a4d92e2a502&amp;t=1680740726&amp;user=T">
					<div
						class="xans-element- xans-coupon xans-coupon-productdetailajax">
						<div class="couponSkinArea"></div>
					</div>
					<script type="text/javascript"
						src="//t1.kakaocdn.net/kakao_js_sdk/v1/kakao.min.js"
						charset="utf-8"></script>

				</div>
			</div>
			<!------------------------------ //쿠폰 다운로드 -------------------------------->
		</div>
		<!------------------------------ //레이아웃 -------------------------------->
		<!------------------------------ SP_detailRelationPrd_wrap -------------------------------->
		<div class="SP_layoutFix">
			<!------------------------------ 레이아웃 -------------------------------->
			<div class="SP_detailLayout">
				<!------------------------------ product_additional -------------------------------->
				<div class="xans-element- xans-product xans-product-additional ">
					<!------------------------------ 리뷰 -------------------------------->
					<div id="prdReview" class="ec-base-tab grid5">
						<!-------------------- 탭 영역 ------------------------->
						<ul class="SP_detailPrdTab_wrap">
							<li class="selected"><a href="#prdReview">리뷰 <b
									class="Brev crema-product-reviews-count crema-applied"
									data-product-code="2101" data-format="({{{count}}})"
									data-install-method="hardcoded" data-observed-install="false"
									data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">${ pdtDetail.pdt_review_count }</b></a>
							</li>
							<li><a href="#prdDetail">상세정보</a></li>
							<!--li><a href="#recmdPrdWiget" class="best_design">추천디자인</a></li-->
							<li><a href="#prdQnA">쇼핑안내</a></li>
							<!--li><a href="#prdFAQ">FAQ</a></li-->
						</ul>
						<!-------------------- //탭 영역 ------------------------->
						<div class="SP_detailContainer">
							<div class="SP_detailContants">
								<div class="SP_detailBoard_wrap">
									<!-- <div class="review_img"><img src="/web/upload/review/reviewPlus_2.png"></div> -->
									<!-- cre.ma / 리스트 위젯 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
									<style>
									#prdReview .nodata {
										display: none;
									}
									
									.review_img {
										text-align: center;
									}
									</style>
									<iframe src="${pageContext.request.contextPath}/review/reviewlist.do?pdt_id=<%= request.getParameter("pdt_id") %>" width="100%" height="1200px"></iframe>
								</div>
							</div>
						</div>
					</div>
					<!------------------------------ //리뷰 -------------------------------->
					<!------------------------------ 상품 상세 정보 -------------------------------->
					<div id="prdDetail" class="ec-base-tab grid5">
						<!-------------------- 탭 영역 ------------------------->
						<ul class="SP_detailPrdTab_wrap">
							<li><a href="#prdReview">리뷰 <b
									class="Brev crema-product-reviews-count crema-applied"
									data-product-code="2101" data-format="({{{count}}})"
									data-install-method="hardcoded" data-observed-install="false"
									data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">${ pdtDetail.pdt_review_count }</b></a>
							</li>
							<li class="selected"><a href="#prdDetail">상세정보</a></li>
							<!--li><a href="#recmdPrdWiget" class="best_design">추천디자인</a></li-->
							<li><a href="#prdQnA">쇼핑안내</a></li>
							<!--li><a href="#prdFAQ">FAQ</a></li-->
						</ul>
						<!-------------------- //탭 영역 ------------------------->

						<div id="prdDetail" class="ec-base-tab grid5">
							<div class="SP_detailContainer" id="SP_prdView" value="a"
								data-src="hh">
								<p>
									<br>
								</p>
								<br> <img data-result="success"
									data-name="8th_ECBFA0EC9E89_detail_1.jpg"
									data-size="1000px/1506px" data-filesize="1,20 MB" data-error=""
									style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;"
									src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_1.jpg"><br>
								<img data-result="success"
									data-name="8th_ECBFA0EC9E89_detail_2.jpg"
									data-size="1000px/2541px" data-filesize="1.018,16 kB"
									data-error=""
									style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;"
									src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_2.jpg"><br>
								<img data-result="success"
									data-name="8th_ECBFA0EC9E89_detail_3.jpg"
									data-size="1000px/1496px" data-filesize="1,31 MB" data-error=""
									style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;"
									src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_3.jpg"><br>
								<img data-result="success"
									data-name="8th_ECBFA0EC9E89_detail_4.jpg"
									data-size="1000px/1577px" data-filesize="674,87 kB"
									data-error=""
									style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;"
									src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_4.jpg"><br>
								<img data-result="success"
									data-name="8th_ECBFA0EC9E89_detail_5.jpg"
									data-size="1000px/1678px" data-filesize="1,25 MB" data-error=""
									style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;"
									src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_5.jpg"><br>
								<img data-result="success"
									data-name="8th_ECBFA0EC9E89_detail_7.jpg"
									data-size="1000px/2138px" data-filesize="1,60 MB" data-error=""
									style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;"
									src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_7.jpg"><br>
								<img data-result="success"
									data-name="8th_ECBFA0EC9E89_detail_8.jpg"
									data-size="1000px/685px" data-filesize="120,14 kB"
									data-error=""
									style="display: block; vertical-align: top; margin: 0px auto; text-align: center;"
									src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_8.jpg"><br>
								<!-- 에코마케팅 상품상세 슬라이드 -->
								<!------------------------------------ product_no (1081) 상품 슬라이드 -------------------------------->
								<div id="product_1081" style="display: none;">
									<!-- gif 슬라이드 start -->
									<div
										class="gif_slide swiper-container swiper_gif slide_1081 swiper-container-initialized swiper-container-horizontal">
										<ul class="swiper-wrapper" style="transition-duration: 0ms;">
											<!-- 디테일 영역 -->
											<li class="swiper-slide"><img loading="lazy" alt="틴트 브릭"
												src="/web/upload/product_detail/0804_customparts/Gif_1-min.gif"></li>
											<li class="swiper-slide"><img loading="lazy"
												alt="틴트 래디쉬"
												src="/web/upload/product_detail/0804_customparts/Gif_2-min.gif"></li>
											<li class="swiper-slide"><img loading="lazy" alt="틴트 레드"
												src="/web/upload/product_detail/0804_customparts/Gif_3-min.gif"></li>
										</ul>
										<div class="swiper-scrollbar">
											<div class="swiper-scrollbar-drag"></div>
										</div>
										<span class="swiper-notification" aria-live="assertive"
											aria-atomic="true"></span>
									</div>
									<!-- gif 슬라이드 end -->
									<div style="text-align: center; width: 100%; margin: 0 auto;">
										<img loading="lazy" alt="width ohora 오호라 커스텀 파츠"
											src="/web/upload/product_detail/0804_customparts/slide_01.jpg">
										&nbsp;
										<!-- 파츠 버튼 클릭 시 변경되는 슬라이드 영역 start -->
										<div class="custom_parts" id="c_parts">
											<div class="parts_wapper">
												<div class="parts_thumbnail_box">
													<img loading="lazy" class="parts parts1 parts_select"
														onclick="parts('drop_img', 'parts1');" alt="drop"
														style="width: 15% !important;"
														src="/web/upload/product_detail/0804_customparts/button_drop_1.jpg">
													&nbsp;<img loading="lazy" class="parts parts2"
														onclick="parts('heart_img', 'parts2');" alt="heart"
														style="width: 15% !important;"
														src="/web/upload/product_detail/0804_customparts/button_heart_1.jpg">
													&nbsp;<img loading="lazy" class="parts parts3"
														onclick="parts('planet_img', 'parts3');" alt="planet"
														style="width: 15% !important;"
														src="/web/upload/product_detail/0804_customparts/button_planet_1.jpg">
													&nbsp;
												</div>
												<!-- drop 파츠 슬라이드 영역 -->
												<div
													class="parts_img_box swiper-container slide_1081 drop_img show swiper-container-initialized swiper-container-horizontal">
													<ul class="swiper-wrapper"
														style="transition-duration: 0ms;">
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 브릭"
															src="/web/upload/product_detail/0804_customparts/drop_01.jpg"></li>
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 래디쉬"
															src="/web/upload/product_detail/0804_customparts/drop_02.jpg"></li>
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 레드"
															src="/web/upload/product_detail/0804_customparts/drop_03.jpg"></li>
													</ul>
													<div class="swiper-scrollbar">
														<div class="swiper-scrollbar-drag"></div>
													</div>
													<span class="swiper-notification" aria-live="assertive"
														aria-atomic="true"></span>
												</div>
												<!-- heart 파츠 슬라이드 영역 -->
												<div
													class="parts_img_box swiper-container slide_1081 heart_img swiper-container-initialized swiper-container-horizontal">
													<ul class="swiper-wrapper"
														style="transition-duration: 0ms;">
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 브릭"
															src="/web/upload/product_detail/0804_customparts/heart_01.jpg"></li>
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 래디쉬"
															src="/web/upload/product_detail/0804_customparts/heart_02.jpg"></li>
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 레드"
															src="/web/upload/product_detail/0804_customparts/heart_03.jpg"></li>
													</ul>
													<div class="swiper-scrollbar">
														<div class="swiper-scrollbar-drag"></div>
													</div>
													<span class="swiper-notification" aria-live="assertive"
														aria-atomic="true"></span>
												</div>
												<!-- planet 파츠 슬라이드 영역 -->
												<div
													class="parts_img_box swiper-container slide_1081 planet_img swiper-container-initialized swiper-container-horizontal">
													<ul class="swiper-wrapper"
														style="transition-duration: 0ms;">
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 브릭"
															src="/web/upload/product_detail/0804_customparts/planet_01.jpg"></li>
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 래디쉬"
															src="/web/upload/product_detail/0804_customparts/planet_02.jpg"></li>
														<li class="swiper-slide"><img loading="lazy"
															alt="틴트 레드"
															src="/web/upload/product_detail/0804_customparts/planet_03.jpg"></li>
													</ul>
													<div class="swiper-scrollbar">
														<div class="swiper-scrollbar-drag"></div>
													</div>
													<span class="swiper-notification" aria-live="assertive"
														aria-atomic="true"></span>
												</div>
											</div>
										</div>
										<!-- 파츠 버튼 클릭 시 변경되는 슬라이드 영역 end -->
									</div>
									<img loading="lazy" alt=""
										style="display: block; margin: 0 auto; padding-top: 150px;"
										src="/web/upload/product_detail/0804_customparts/06_%EB%B6%80%EC%B0%A9%ED%8C%8C%EC%B8%A0_how%20to%20use.jpg">
									&nbsp;
								</div>
								<!------------------------------------ //product_no (1081) 상품 슬라이드 -------------------------------->


								<!------------------------------------ product_no (1304) 상품 슬라이드 -------------------------------->
								<div id="product_1304"
									style="display: none; text-align: center; font-size: 0;">
									<img loading="lazy" alt="" src="/web/product/basic/01re.jpg">
									&nbsp;<img loading="lazy" alt=""
										src="/web/product/basic/02.jpg"> &nbsp;<img
										loading="lazy" alt="" src="/web/product/basic/03ill.jpg">
									&nbsp;
									<div
										class="swiper-container swiper-container-initialized swiper-container-horizontal">
										<ul class="swiper-wrapper" style="transition-duration: 0ms;">
											<li class="swiper-slide"><img loading="lazy" alt=""
												src="/web/product/basic/04-1.jpg"></li>
											<li class="swiper-slide"><img loading="lazy" alt=""
												src="/web/product/basic/04-2.jpg"></li>
											<li class="swiper-slide"><img loading="lazy" alt=""
												src="/web/product/basic/04-3.jpg"></li>
											<li class="swiper-slide"><img loading="lazy" alt=""
												src="/web/product/basic/04-4.jpg"></li>
										</ul>
										<div
											class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
										<span class="swiper-notification" aria-live="assertive"
											aria-atomic="true"></span>
									</div>

									<img loading="lazy" alt="" src="/web/product/basic/05re.jpg">
									&nbsp;<img loading="lazy" alt=""
										src="/web/product/basic/06re.jpg"> &nbsp;<img
										loading="lazy" alt="" src="/web/product/basic/07re.jpg">
									&nbsp;<img loading="lazy" alt=""
										src="/web/product/basic/08re.jpg"> &nbsp;<img
										loading="lazy" alt="" src="/web/product/basic/09rere.jpg">
									&nbsp;<img loading="lazy" alt=""
										src="/web/product/basic/10re.jpg"> &nbsp;<img
										loading="lazy" alt="" src="/web/product/basic/11.jpg">
									&nbsp;<img loading="lazy" alt=""
										src="/web/product/basic/12rere.jpg"> &nbsp;
									<div id="vediowapper1137">
										<iframe
											src="https://player.vimeo.com/video/661969294?autopause=false&amp;autoplay=1&amp;loop=1&amp;muted=1&amp;title=0&amp;byline=0&amp;portrait=0&amp;controls=0"
											frameborder="0" width="1000" height="800"
											allow="autoplay; fullscreen; picture-in-picture;"
											allowfullscreen=""></iframe>
									</div>

									<img loading="lazy" alt="" src="/web/product/basic/13rere.jpg">
									&nbsp;<img loading="lazy" alt=""
										src="/web/product/basic/14rere.jpg"> &nbsp;<img
										loading="lazy" alt="" src="/web/product/2+1/notice.jpg">
									&nbsp;
								</div>
								<!------------------------------------// product_no (1304) 상품 슬라이드 -------------------------------->


								<!------------------------------------ product_no (1367, 1372) 상품 슬라이드 -------------------------------->
								<div id="product_1367"
									style="display: none; text-align: center; font-size: 0;">
									<img loading="lazy" alt=""
										src="/web/product/creampastel/bg_rere.jpg"> &nbsp;
									<div class="swiperBG">
										<div
											class="swiper-container swiper-container-initialized swiper-container-horizontal">
											<ul class="swiper-wrapper" style="transition-duration: 0ms;">
												<li class="swiper-slide"><img loading="lazy" alt=""
													src="/web/product/creampastel/3_1rere.png"></li>
												<li class="swiper-slide"><img loading="lazy" alt=""
													src="/web/product/creampastel/3_2rere.png"></li>
											</ul>
											<div
												class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
											<span class="swiper-notification" aria-live="assertive"
												aria-atomic="true"></span>
										</div>
									</div>

									<img loading="lazy" alt=""
										src="/web/upload/NNEditor/20220223/4.jpg"> &nbsp;<img
										loading="lazy" alt=""
										src="/web/upload/NNEditor/20220223/5.jpg"> &nbsp;<img
										loading="lazy" alt=""
										src="/web/upload/NNEditor/20220223/6.jpg"> &nbsp;<img
										loading="lazy" alt=""
										src="/web/upload/NNEditor/20220223/7.jpg"> &nbsp;<img
										loading="lazy" alt=""
										src="/web/upload/NNEditor/20220223/8.jpg"> &nbsp;<img
										loading="lazy" alt=""
										src="/web/upload/NNEditor/20220223/9.jpg"> &nbsp;<img
										loading="lazy" alt=""
										src="/web/upload/NNEditor/20220223/10.jpg"> &nbsp;<img
										loading="lazy" alt="" class="notice1367"
										style="display: none;" src="/web/product/creampastel/fix.png">
									&nbsp;<img loading="lazy" alt="" class="notice1372"
										style="display: none;" src="/web/product/creampastel/free.png">
									&nbsp;
								</div>
								<!------------------------------------// product_no (1367, 1372) 상품 슬라이드 -------------------------------->

								<!------------------------------------ product_no (1414) 상품 슬라이드 -------------------------------->
								<div id="product_1414" style="display: none; font-size: 0;">
									<!-- slide -->
									<img loading="lazy" alt=""
										src="/web/product/cherryblossom/slide_tex.jpg"> &nbsp;
									<div class="parts_btn">
										<img loading="lazy" class="mirror_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_1_1.jpg"> &nbsp;<img
											loading="lazy" class="heart_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_2_2.jpg"> &nbsp;<img
											loading="lazy" class="drop_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_3_2.jpg"> &nbsp;<img
											loading="lazy" class="flower_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_4_2.jpg"> &nbsp;
									</div>
									<div class="parts_detail">
										<div
											class="swiper-container mirror_slide on swiper-container-initialized swiper-container-horizontal">
											<ul class="swiper-wrapper" style="transition-duration: 0ms;">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/mirror_mixmatch1.jpg"></li>
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/mirror_mixmatch2.jpg"></li>
											</ul>
											<div
												class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
											<span class="swiper-notification" aria-live="assertive"
												aria-atomic="true"></span>
										</div>
										<div
											class="swiper-container heart_slide swiper-container-initialized swiper-container-horizontal">
											<ul class="swiper-wrapper" style="transition-duration: 0ms;">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/heart_mixmatch1.jpg"></li>
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/heart_mixmatch2.jpg"></li>
											</ul>
											<div
												class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
											<span class="swiper-notification" aria-live="assertive"
												aria-atomic="true"></span>
										</div>
										<div
											class="swiper-container drop_slide swiper-container-initialized swiper-container-horizontal">
											<ul class="swiper-wrapper" style="transition-duration: 0ms;">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/drop_mixmatch1.jpg"></li>
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/drop_mixmatch2.jpg"></li>
											</ul>
											<div
												class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
											<span class="swiper-notification" aria-live="assertive"
												aria-atomic="true"></span>
										</div>
										<div
											class="swiper-container flower_slide swiper-container-initialized swiper-container-horizontal">
											<ul class="swiper-wrapper" style="transition-duration: 0ms;">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/flower_mixmatch1.jpg"></li>
												<li class="swiper-slide"><img loading="lazy"
													src="/web/customparts/blossom/flower_mixmatch2.jpg"></li>
											</ul>
											<div
												class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
											<span class="swiper-notification" aria-live="assertive"
												aria-atomic="true"></span>
										</div>
									</div>
									<img loading="lazy" alt=""
										src="/web/product/cherryblossom/slide_bottom.jpg">
									&nbsp;
									<!-- how to use -->
									<img loading="lazy" alt=""
										src="/web/upload/NNEditor/20220307/04_EBB680ECB0A9ED8C8CECB8A0_how20to20use.jpg">
									&nbsp;
								</div>
								<!------------------------------------ //product_no (1414) 상품 슬라이드 -------------------------------->

								<!------------------------------------ product_no (1420) 상품 슬라이드 -------------------------------->
								<div id="product_1420" style="display: none; font-size: 0;">
									<!-- slide -->
									<img loading="lazy" alt=""
										src="/web/product/cherryblossom/slide_tex.jpg"> &nbsp;
									<div class="parts_btn">
										<img loading="lazy" class="mirror_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_1_1.jpg"> &nbsp;<img
											loading="lazy" class="heart_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_2_2.jpg"> &nbsp;<img
											loading="lazy" class="drop_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_3_2.jpg"> &nbsp;<img
											loading="lazy" class="flower_slide"
											style="width: calc(100%/ 4) !important; display: inline-block; padding: 8px;"
											src="/web/customparts/blossom/bt_4_2.jpg"> &nbsp;
									</div>
									<div class="parts_detail">
										<div class="swiper-container mirror_slide on">
											<ul class="swiper-wrapper">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/product/cherryblossom/mirror_2.jpg"></li>
											</ul>
											<div class="swiper-pagination"></div>
										</div>
										<div class="swiper-container heart_slide">
											<ul class="swiper-wrapper">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/product/cherryblossom/heart_2.jpg"></li>
											</ul>
											<div class="swiper-pagination"></div>
										</div>
										<div class="swiper-container drop_slide">
											<ul class="swiper-wrapper">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/product/cherryblossom/drop_2.jpg"></li>
											</ul>
											<div class="swiper-pagination"></div>
										</div>
										<div class="swiper-container flower_slide">
											<ul class="swiper-wrapper">
												<li class="swiper-slide"><img loading="lazy"
													src="/web/product/cherryblossom/flower_2.jpg"></li>
											</ul>
										</div>
									</div>
									<img loading="lazy" alt=""
										src="/web/product/cherryblossom/slide_bottom.jpg">
									&nbsp;
									<!-- how to use -->
									<img loading="lazy"
										src="/web/upload/NNEditor/20220307/copy-1646641038-7_crewreview.jpg">
									&nbsp;<img loading="lazy"
										src="/web/upload/NNEditor/20220307/copy-1646641038-8_howto.jpg">
									&nbsp;
									<div id="videowapper1420">
										<iframe
											src="https://player.vimeo.com/video/685371586?autopause=false&amp;autoplay=1&amp;loop=1&amp;muted=1&amp;title=0&amp;byline=0&amp;portrait=0&amp;controls=0"
											frameborder="0" width="1000" height="800"
											allow="autoplay; fullscreen; picture-in-picture;"
											allowfullscreen=""></iframe>
									</div>
									<img loading="lazy"
										src="/web/upload/NNEditor/20220307/copy-1646641038-10_nailcomponents.jpg">
									&nbsp;<img loading="lazy"
										src="/web/upload/NNEditor/20220307/copy-1646641038-11_partscomponents.jpg">
									&nbsp;<img loading="lazy"
										src="/web/upload/NNEditor/20220307/copy-1646641038-12_blank.jpg">
									&nbsp;
								</div>
								<input type="text" value="OHORA2021DOG" id="couponText_dog"
									readonly=""
									style="display: block; position: absolute; left: -10000px;">
								&nbsp;
								<!-- //쿠폰 코드-->
								<!-- 쿠폰 코드 : 코드 변경 시 value값을 수정해주세요. 고양이-->
								<input type="text" value="OHORA2021CAT" id="couponText_cat"
									readonly=""
									style="display: block; position: absolute; left: -10000px;">
								&nbsp;
								<!-- //복사하기 버튼 클릭 시 텍스트 복사 -->
								<!------------------------------------ //product_no (1137) 상품 슬라이드 -------------------------------->
								<!-- //에코마케팅 상품상세 슬라이드 -->

								<!--<center><img src="/smartpc/_img/common/shopping_G_NEW_V4_1.jpg" /></a></center>-->
								<div id="detail_info_img" style="text-align: center">
									<!--<img src="https://www.ohora.kr/smartpc/_img/common/_detail/06.jpg"/><br/>-->
									<img loading="lazy"
										src="https://www.ohora.kr/smartpc/_img/common/_detail/notice_final.jpg"><br>
									<!-- <img loading="lazy" id="detail_img_change" src="/web/product/notice/2211/nail_Info.jpg"/><br/> -->
									<img loading="lazy" id="detail_img_change"
										src="	https://www.ohora.kr/optimize/images/pc/detail/nail_Info.webp"><br>
								</div>
							</div>
						</div>
					</div>
					<!------------------------------ //상품 상세 정보 -------------------------------->
					<!---------------------------------------- 오호라 크루 추천 ------------------------------------------->
					<div class="prdDetail_crew not_slide">
						<!--오호라 크루 추천-->
						<div class="common_reco_section recommend_crew swiper-container">
							<h3>오호라 크루 추천</h3>
							<div df-banner-code="common-recommend"
								class="recommend_banner_wrap swiper-wrapper df-bannermanager df-bannermanager-common-recommend">
								<div df-banner-clone="" class="SP_eventBn_li swiper-slide">
									<a
										href="https://events.payco.com/web/share.nhn?evntPageNm=75c7Pl3&amp;pubCode=PUBSTJUOE9"><div
											class="imgBox">
											<img
												src="	https://www.ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/94fad6d6474acf635b9c771591480a7c.png"
												alt="페이코 상시 12% 할인">
										</div>
										<div class="txtBox">페이코 상시 12% 할인</div></a>
								</div>
								<div df-banner-clone="" class="SP_eventBn_li swiper-slide">
									<a
										href="https://play.google.com/store/apps/details?id=com.cafe24.ec.plusohora2019"><div
											class="imgBox">
											<img
												src="https://www.ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/4cd90f97beaaeddde49bbad02da10bc5.webp"
												alt="앱 다운 시 무료배송">
										</div>
										<div class="txtBox">앱 다운 시 무료배송</div></a>
								</div>
								<div df-banner-clone="" class="SP_eventBn_li swiper-slide">
									<a href="https://www.ohora.kr/event/event6.html"><div
											class="imgBox">
											<img
												src="https://www.ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/0b48933209882b54093f40d23cb23246.webp"
												alt="신규회원 젤램프 증정">
										</div>
										<div class="txtBox">신규회원 젤램프 증정</div></a>
								</div>
							</div>
							<!-- Add Pagination -->
							<div class="swiper-scrollbar"></div>
						</div>
						<!--// 오호라 크루 추천-->
					</div>
					<!--------------------------------------// 오호라 크루 추천 ------------------------------------------->
					<div id="prdQnA" class="SP_detailBoard_wrap">
						<!-------------------- 탭 영역 ------------------------->
						<ul class="SP_detailPrdTab_wrap">
							<li><a href="#prdReview">리뷰 <b
									class="Brev crema-product-reviews-count crema-applied"
									data-product-code="2101" data-format="({{{count}}})"
									data-install-method="hardcoded" data-observed-install="false"
									data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">${ pdtDetail.pdt_review_count }</b></a>
							</li>
							<li><a href="#prdDetail">상세정보</a></li>
							<!--li class="selected"><a href="#recmdPrdWiget" class="best_design">추천디자인</a></li-->
							<li class="selected"><a href="#prdQnA">쇼핑안내</a></li>
							<!--li class=""><a href="#prdFAQ">FAQ</a></li-->
						</ul>

						<!-------------------- //탭 영역 ------------------------->
						<div class="SP_detailContainer">
							<div class="SP_detailContants">
								<div class="SP_detailBoard_wrap">
									<h3 class="infoTit">배송안내</h3>
									<table class="infoTbl">
										<colgroup>
											<col width="215px">
											<col width="*">
										</colgroup>
										<tbody>
											<tr>
												<th>배송방법</th>
												<td><b> 기본 배송 : 롯데택배(1588-2121) </b><br></td>
											</tr>
											<tr>
												<th>배송지역</th>
												<td><b> 기본 배송 : 전국</b><br></td>
											</tr>
											<tr>
												<th>배송비</th>
												<td><b> 기본 배송 : 3,000원 (5만원 이상 구매 시 무료배송)</b><br>
													* 제주 및 특수 도서 산간 지역은 3,000원의 별도 추가 운임비 발생<br></td>
											</tr>
											<tr>
												<th>배송기간</th>
												<td><b>[기본 배송]</b><br> <b>* 평일 오후 2시 결제 완료 시
														당일 출고됩니다. (주말/공휴일 제외)</b><br> <b>* 상품 출고 시 송장 번호가 알림톡
														또는 SMS로 발송됩니다.</b><br> <b>* 모든 배송은 지역 택배사 사정과 천재지변으로
														지연될 수 있습니다.</b><br> <b>* 배송 폭주, 입고지연, 품절 등으로 인한 미출고 시
														별도 안내 드립니다.</b> <br></td>
											</tr>
											<tr>
												<th>주의사항</th>
												<td><b>* 주문 내역의 교환/취소/주소지 변경을 원하실 경우 고객센터로 연락 바랍니다.</b><br>
													<b>* 주문 취소를 희망하는 경우 MY PAGE -&gt; 주문 상세정보에서 직접 접수
														가능합니다.</b><br> (배송준비중 상태의 주문 건을 취소 접수할 경우, 출고 상황에 따라 취소가
													거부될 수 있습니다.)<br></td>
											</tr>
											<tr>
												<th>고객센터</th>
												<td>카카오톡 상담 (@ohora), 게시판 상담 (1:1 문의하기) <br> 운영시간
													: 평일 09:00 - 18:00 (Lunch 12:30 - 13:30) <br>
												</td>
											</tr>
										</tbody>
									</table>
									<br> <br>

									<h3 class="infoTit">교환/반품 안내</h3>
									<table class="infoTbl">
										<colgroup>
											<col width="215px">
											<col width="*">
										</colgroup>
										<tbody>
											<tr>
												<th>교환/반품 신청기준</th>
												<td><b>&lt;교환/반품 신청이 가능한 경우&gt;</b><br> * 단순 변심으로
													인한 교환 및 반품은 <b>제품 수령 후 주말 및 공휴일 포함 7일 이내</b>에 가능합니다. (배송비
													고객부담)<br> * 상품 불량으로 인한 교환 및 반품은 상품 공급일로부터 3개월 이내에
													가능합니다. (기간엄수)<br> (단, 상품 불량의 경우, 고객센터를 통한 불량 검수 후 정상
													처리 여부가 결정됩니다.)<br> * 옵션 오선택으로 인한 반품 및 교환 시에는 추가 배송비가
													발생할 수 있습니다.<br> * 상품 불량으로 인한 반품 및 교환을 원하시는 경우, 카톡
													플러스친구 상담으로 접수 부탁드립니다.<br> (불량 여부 확인 및 제품 품질 개선을 위하여
													내용물 사진 등 제품에 대한 상세한 정보를 준비 부탁드립니다.)<br> <br> <b>&lt;교환/반품이
														불가능한 경우&gt;</b><br> * 소비자의 귀책 사유에 의한 상품 훼손(개봉) 및 사용에 의해
													상품 가치가 현저히 감소한 경우 교환 및 반품이 불가합니다.<br> * 교환 및 반품으로 인해
													사은품 혜택 기준에 미달되었을 경우, 사은품도 함께 보내주셔야 정상적으로 처리 가능합니다.<br></td>
											</tr>
											<tr>
												<th>교환/반품 배송비</th>
												<td>제품 하자가 아닌 단순 변심에 의한 경우 배송비를 제외한 나머지 금액만 환불 처리됩니다.</td>
											</tr>
											<tr>
												<th>교환/반품 접수방법</th>
												<td>* 교환 및 반품 접수 문의는 고객센터로 연락 부탁드립니다.<br> * 제품 수거는
													교환 및 반품 신청 접수 후 오호라에서 순차 처리합니다.
												</td>
											</tr>
											<tr>
												<th>주의사항</th>
												<td>* 교환 및 반품 신청 시 신청 가능 기간을 엄수해주세요.</td>
											</tr>
											<tr>
												<th>고객센터</th>
												<td>카카오톡 상담 (@ohora), 게시판 상담 (1:1 문의하기) <br> 운영시간
													: 평일 09:00 - 18:00 (Lunch 12:30 - 13:30) <br>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!------------------------------ //prdQnA --------------------------------->


					<!------------------------------ //product_additional -------------------------------->

					<!------------------------------ //레이아웃 -------------------------------->
				</div>
				<!------------------------------ //SP_detailRelationPrd_wrap -------------------------------->
			</div>

<!-- Swiper JS -->
<script	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script>
    // 모든 탭 링크에 부드러운 스크롤 적용하기
    document.querySelectorAll('.SP_detailPrdTab_wrap a').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();

            const targetId = this.getAttribute('href').substring(1); // 링크된 id 추출
            const targetElement = document.getElementById(targetId);

            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
    
</script>


<script>
    // 큰 이미지를 변경하는 function
    function changeImage(imageSrc) {
        document.getElementById('mainImage').src = imageSrc;
    }
</script>


<!-- 가로스크롤 -->
<script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
</script>
<script>
// 추가 구성상품 토글 function
document.querySelector(".SP_prdAddSetToggle").onclick = function() {
    var element = document.querySelector(".SP_prdAddSetList_wrap");
    if (element.style.display === "none" || element.style.display === "") {
        element.style.display = "block";  // 보이게 설정
    } else {
        element.style.display = "none";   // 숨기기
    }
};
</script>
<script>
$(document).ready(function () {
    let maxCount = $(".add-opt-click a").length; // 최대 개수 (예: 추가구성상품의 갯수)

    // '추가' 버튼 클릭 이벤트
    $(document).on("click", ".add-opt-click a", function() {
        const existingTotalQuantity = parseInt($("#totalQuantityDisplay").text(), 10) || 0;
        const existingTotalAmount = parseInt($("#totalAmount").text().replace(/[^0-9.-]+/g, ""), 10) || 0;
    	
        if ($(".add_product").length >= maxCount) {
            alert("더 이상 추가할 수 없습니다.");
            return; 
        }

        const $this = $(this);
        const productId = $this.closest("li").data("prd-num");

        // 중복 확인
        if ($(`tr[data-product-id='\${productId}']`).length > 0) {
            alert("해당 옵션이 이미 추가되었습니다.");
            return;
        }

        const productName = $this.closest("li").find(".SP_prdAddSet_cont.SP_prdAddSet_prdtt").text().trim();
        const productDiscountAmount = parseInt($this.closest("li").find(".SP_prdAddSet_price span").text().trim().replace(/[^0-9.-]+/g, ""));

        const newProductRow = `<tr class="add_product" data-product-id="\${productId}">
            <td>
                <p class="product">\${productName}<br> - <span>\${productName}</span></p>
            </td>
            <td>
                <span class="quantity" style="width:65px;">
                    <input type="text" name="quantity_opt[]" class="quantity_opt" value="1" product-no="\${productId}">
                    <a href="#none" class="up"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" alt="수량증가"></a>
                    <a href="#none" class="down"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" alt="수량감소"></a>
                </span>
                <a href="#none" class="delete"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제"></a>
            </td>
            <td class="right">
                <span class="ec-front-product-item-price">\${formatPrice(productDiscountAmount)}</span>
            </td>
        </tr>`;

        $(".add_products").append(newProductRow);

        $("#totalQuantityDisplay").text(existingTotalQuantity + 1);
        $("#totalAmount").text(formatPrice(existingTotalAmount + productDiscountAmount));
    });
    

    // 추가구성상품 수량 증가 및 감소 이벤트
    $(document).on("click", ".quantity .up", function () {
        const quantityInput = $(this).siblings("input.quantity_opt");
        let currentQuantity = parseInt(quantityInput.val(), 10);
        const pricePerUnit = parseInt($(this).closest("tr").find(".ec-front-product-item-price").text().replace(/[^0-9.-]+/g, ""), 10) / currentQuantity;
        const existingTotalQuantity = parseInt($("#totalQuantityDisplay").text(), 10) || 0;
        const existingTotalAmount = parseInt($("#totalAmount").text().replace(/[^0-9.-]+/g, ""), 10) || 0;
        
        currentQuantity++;
        quantityInput.val(currentQuantity);
        updateAmount($(this).closest("tr"), pricePerUnit * currentQuantity);

        $("#totalQuantityDisplay").text(existingTotalQuantity + 1);
        $("#totalAmount").text(formatPrice(existingTotalAmount + pricePerUnit));
    });

    $(document).on("click", ".quantity .down", function () {
        const quantityInput = $(this).siblings("input.quantity_opt");
        let currentQuantity = parseInt(quantityInput.val(), 10);
        const pricePerUnit = parseInt($(this).closest("tr").find(".ec-front-product-item-price").text().replace(/[^0-9.-]+/g, ""), 10) / currentQuantity;
        const existingTotalQuantity = parseInt($("#totalQuantityDisplay").text(), 10) || 0;
        const existingTotalAmount = parseInt($("#totalAmount").text().replace(/[^0-9.-]+/g, ""), 10) || 0;
        
        if (currentQuantity > 1) {
            currentQuantity--;
            quantityInput.val(currentQuantity);
            updateAmount($(this).closest("tr"), pricePerUnit * currentQuantity);

            $("#totalQuantityDisplay").text(existingTotalQuantity - 1);
            $("#totalAmount").text(formatPrice(existingTotalAmount - pricePerUnit));
        }
    });

    // 삭제 이벤트
    $(document).on("click", ".delete", function () {
    	const quantityInput = $(this).closest("tr").find("input.quantity_opt");
        let currentQuantity = parseInt(quantityInput.val(), 10);
        const pricePerUnit = parseInt($(this).closest("tr").find(".ec-front-product-item-price").text().replace(/[^0-9.-]+/g, ""), 10);
        
        const existingTotalQuantity = parseInt($("#totalQuantityDisplay").text(), 10) || 0;
        const existingTotalAmount = parseInt($("#totalAmount").text().replace(/[^0-9.-]+/g, ""), 10) || 0;
    	
        $("#totalQuantityDisplay").text(existingTotalQuantity - currentQuantity);
        $("#totalAmount").text(formatPrice(existingTotalAmount - pricePerUnit));
        
        $(this).closest("tr").remove();
    });

    // 합계 금액 업데이트 함수
    function updateAmount($row, newTotal) {
        $row.find(".ec-front-product-item-price").text(formatPrice(newTotal));
    }

    // 기존 상품 수량 증가 이벤트
       $(document).on("click", ".SP_detail_content .up", function () {
           const quantityInput = $(this).siblings("input.quantity_opt");
           let currentQuantity = parseInt(quantityInput.val(), 10);
           const pricePerUnit = parseInt($(".SP_detail_content .salesPrice").text().replace(/[^0-9.-]+/g, ""), 10);

           // 수량 증가
           currentQuantity++;

           // 기존의 총 수량과 총 금액 가져오기
           const existingTotalQuantity = parseInt($("#totalQuantityDisplay").text(), 10) || 0;
           const existingTotalAmount = parseInt($("#totalAmount").text().replace(/[^0-9.-]+/g, ""), 10) || 0;

           // 새로운 총 수량 및 총 금액 계산
           const updatedTotalQuantity = existingTotalQuantity + 1;
           const updatedTotalAmount = existingTotalAmount + pricePerUnit;

           // 값 업데이트
           quantityInput.val(currentQuantity);
           $("#totalQuantityDisplay").text(updatedTotalQuantity);
           $("#totalAmount").text(formatPrice(updatedTotalAmount));
       });


       $(document).on("click", ".SP_detail_content .down", function () {
           const quantityInput = $(this).siblings("input.quantity_opt");
           let currentQuantity = parseInt(quantityInput.val(), 10);
           const pricePerUnit = parseInt($(".SP_detail_content .salesPrice").text().replace(/[^0-9.-]+/g, ""), 10);

           if (currentQuantity > 1) {
               currentQuantity--;

               // 기존의 총 수량과 총 금액 가져오기
               const existingTotalQuantity = parseInt($("#totalQuantityDisplay").text(), 10) || 0;
               const existingTotalAmount = parseInt($("#totalAmount").text().replace(/[^0-9.-]+/g, ""), 10) || 0;

               // 새로운 총 수량 및 총 금액 계산
               const updatedTotalQuantity = existingTotalQuantity - 1;
               const updatedTotalAmount = existingTotalAmount - pricePerUnit;

               // 값 업데이트
               quantityInput.val(currentQuantity);
               $("#totalQuantityDisplay").text(updatedTotalQuantity);
               $("#totalAmount").text(formatPrice(updatedTotalAmount));
           }
       });
       
       
       
       
       $(document).on("change", "#product_option_id1", function () {

           const existingTotalQuantity = parseInt($("#totalQuantityDisplay").text(), 10) || 0;
           const existingTotalAmount = parseInt($("#totalAmount").text().replace(/[^0-9.-]+/g, ""), 10) || 0;
    	   
           const $select = $(this);
           const selectedOption = $select.find("option:selected");
           const optionText = selectedOption.text().trim();
           const optionValue = selectedOption.val();

           // 이미 선택된 옵션 값 추적
           const selectedOptions = [];
           $(".add_product .product span").each(function () {
               selectedOptions.push($(this).text().trim());
           });

           // 이미 선택된 옵션이 있는지 확인
           if (selectedOptions.includes(optionText)) {
               alert("이 옵션은 이미 선택되었습니다. 다시 선택할 수 없습니다.");
               $select.val("*");  // 기본값으로 되돌리기
               return;  // 함수 종료, 옵션 추가 안 함
           }
           
           // 상품 정보 가져오기
           const productName = `${pdtDetail.pdt_name}`;
           const productId = `${pdtDetail.pdt_id}`;
           const productDiscountAmount = `${pdtDetail.pdt_discount_amount}`;

           // 새 옵션 행 생성
           const newProductRow = `
               <tr class="add_product" data-product-id="\${productId}">
                   <td>
                       <p class="product">\${productName}<br> - <span>\${optionText}</span></p>
                   </td>
                   <td>
                       <span class="quantity" style="width:65px;">
                           <input type="text" name="quantity_opt[]" class="quantity_opt" value="1" product-no="\${productId}">
                           <a href="#none" class="up"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" alt="수량증가"></a>
                           <a href="#none" class="down"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" alt="수량감소"></a>
                       </span>
                       <a href="#none" class="delete"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제"></a>
                   </td>
                   <td class="right">
                       <span class="ec-front-product-item-price">\${formatPrice(parseInt(productDiscountAmount))}</span>
                   </td>
               </tr>`;

           $(".add_products").append(newProductRow);

           // 옵션 기본값으로 되돌리기
           $select.val("*");

           $("#totalQuantityDisplay").text(existingTotalQuantity + 1);
           $("#totalAmount").text(formatPrice(existingTotalAmount + parseInt(productDiscountAmount)));
       });
       
    // 가격 포맷 함수
    function formatPrice(price) {
        return price.toLocaleString('ko-KR');
    }
    
});
</script>

  
			<%@include file="footer.jsp"%>
</body>
</html>
