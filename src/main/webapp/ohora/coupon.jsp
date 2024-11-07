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
<link rel="stylesheet" href="../resources/cdn-main/coupon.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<body>
<%@include file="header.jsp" %>
<div id="SP_mypage_wrap">
	<div class="SP_subSection">
		<h2 class="SP_subTitle Nunito_Sans_font"><span class="eng_font">MY COUPON</span></h2>
	</div>

	<!-- 나의 쇼핑몰 이용 정보 -->
	<!-- 스크립트 import 파일 맨 하단에 위치해 있음 -->
<div class="xans-element- xans-myshop xans-myshop-asyncbenefit SP_mypageInfomation_wrap"><div class="mypageInformation_inner memberInfo ">
		<div class="SP_Message ">
			<div class="SP_information">
				<!-- <p class="thumbnail"><img src="" alt="" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" class="myshop_benefit_group_image_tag" /></p> -->
				  <!--
				<div class="myProgress">
					<div class="bar"></div>
					<span></span>
				</div>
				-->
				<div id="gauge1" class="gauge-container one displaynone"><svg viewBox="8 8 84 84" class="gauge"><path class="dial" fill="none" stroke="#eee" stroke-width="2" d="M 50 10 A 40 40 0 1 1 49.999 10"></path><text x="50" y="50" fill="#999" class="value-text" font-size="100%" font-family="sans-serif" font-weight="normal" text-anchor="middle" alignment-baseline="middle" dominant-baseline="central">0%</text><path class="value" fill="none" stroke="#666" stroke-width="2.5" d="M 50 10 A 40 40 0 0 1 50 10"></path></svg></div>
                
                
                <!-- progress -->
              
                <div class="member-radius ">

                    <div class="radius-box" id="radiusBox">
                       <canvas id="doughnut1" width="170" height="170" ></canvas>
                                        
                                        <!-- 원 그리는 스크립트 -->
                                        <script>
                                            // 1. canvas 엘리먼트 취득
                                            const canvas = document.getElementById('doughnut1');
                                            
                                            // 2. 2d모드의 그리기 객체 취득
                                            const ctx = canvas.getContext("2d");
                                
                                            // 3. path 그리기 시작 설정
                                            ctx.beginPath();
                                
                                            // 4. 외곽선
                                            ctx.lineWidth = 1.5; // 선 굵기 설정 (5픽셀)
                                            ctx.strokeStyle = "gray"; // 외곽선 색상 설정
                                
                                            // 5. 원 모양 설정
                                            // 중심 (85, 85), 반지름 85, 시작 각도 0, 끝 각도 2*Math.PI (완전한 원)
                                            ctx.arc(85, 85, 80, 0, 2 * Math.PI);
                                
                                            // 6. 내부 채우기 및 외곽선 그리기

                                            ctx.stroke();
                                        </script>
</div>
                </div>
                <!-- //progress -->
				
                
				<div class="SP_infoMegBox_wrap">
					<p class="ment" style="margin-bottom: 12px"><strong><span><span class="xans-member-var-name">이시훈</span></span></strong>님 반갑습니다.</p>
					<p class="grade">회원님의 등급은 <!--img src="" alt="" class="myshop_benefit_group_icon_tag" / --><strong class="group">[<span class="groupName" id="groupName"><span class="xans-member-var-group_name">Friend</span><span class="myshop_benefit_ship_free_message"></span></span>]</strong>입니다. </p>
					<p class="gradeValue  gradeGuide" id="sGradeAutoDisplayArea">다음 등급까지 <span id="changePrd" class="price  sAutoGradeDisplay"><span class="xans-member-var-sGradeIncreasePrice">150,000</span>원</span> 남았습니다.</p>
                    <p class="order_total_ 현재까지주문금액"><span class="xans-member-var-sPeriodOrderPrice">0</span></p>
					<div class="SP_infoUserUtilLink_wrap">
						<a href="/article/%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD/1/1/%20%20">등급 혜택보기</a>
						<a href="/myshop/order/list.html?order_status=shipped_complate">후기쓰러가기</a>
                        <a href="https://oe9lp.channel.io/home">1:1문의하기</a>
                        <!--<a href="/myshop/board_list.html">내 게시글</a>-->
					</div>
				</div>
			</div>
		</div>
		<!-- 추가 -->
                <div class=" gBlank5" id="sAutomaticGradeShowArea" style="display:none">
                    <p class=" sAutoGradeDisplay ">구매금액 <span class="xans-member-var-sPeriodOrderPrice">0</span>으로 회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>] 입니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">구매건수 <span class="xans-member-var-sPeriodOrderCount">0건</span>으로 회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>] 입니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">구매금액 <span class="xans-member-var-sPeriodOrderPrice">0</span>, 구매건수 <span class="xans-member-var-sPeriodOrderCount">0건</span>으로 회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>] 입니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">구매금액 <span class="xans-member-var-sPeriodOrderPrice">0</span>, 또는 구매건수 <span class="xans-member-var-sPeriodOrderCount">0건</span>으로 회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>] 입니다.</p>
                     <p class=" sAutoGradeDisplay ">[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를 위해서 구매금액 <span class="xans-member-var-sCurrentGradeIncreasePrice">0</span>이 추가로 필요합니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를 위해서 구매건수 <span class="xans-member-var-sCurrentGradeIncreaseCount">0건</span>이 추가로 필요합니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를 위해서 구매금액 <span class="xans-member-var-sCurrentGradeIncreasePrice">0</span>, 구매건수 <span class="xans-member-var-sCurrentGradeIncreaseCount">0건</span>이 추가로 필요합니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를 위해서 구매금액 <span class="xans-member-var-sCurrentGradeIncreasePrice">0</span>, 또는 구매건수 <span class="xans-member-var-sCurrentGradeIncreaseCount">0건</span>이 추가로 필요합니다.</p>
                    <p class=" sAutoGradeDisplay ">또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을 원하시면 구매금액 <span class="xans-member-var-sGradeIncreasePrice">150,000</span>이 추가로 필요합니다</p>
                    <p class="displaynone sAutoGradeDisplay ">또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을 원하시면 구매건수 <span class="xans-member-var-sGradeIncreaseCount">0건</span>이 추가로 필요합니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을 원하시면 구매금액 <span class="xans-member-var-sGradeIncreasePrice">150,000</span>, 구매건수 <span class="xans-member-var-sGradeIncreaseCount">0건</span>이 추가로 필요합니다.</p>
                    <p class="displaynone sAutoGradeDisplay ">또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을 원하시면 구매금액 <span class="xans-member-var-sGradeIncreasePrice">150,000</span>, 또는 구매건수 <span class="xans-member-var-sGradeIncreaseCount">0건</span>이 추가로 필요합니다.</p>
                    <p class="txtInfo txt11">승급 기준에 따른 예상 금액이므로 총주문 금액과 다를 수 있습니다.</p>
                </div>
<!-- //추가 -->

		<!-- <div class="invite ec-base-box typeThinBg gMerge displaynone">
			<strong class="txtEm">주소를 복사하여 친구를 쇼핑몰에 초대해보세요.</strong>
			<p class="copy">
				<input type="text" id="" value="///?reco_id=" readonly="readonly" />
				&nbsp;<a href="#none" onclick="" class="btnSubmit">주소복사</a>
			</p>
			<ul>
				<li>- 친구에게는 가입즉시 의 이 지급됩니다.</li>
				<li>- </li>
			</ul>
		</div> -->

		<div class="SP_myOrderInfo_wrap">
			<div class="xans-element- xans-myshop xans-myshop-bankbook orderinfo_pay "><ul class="SP_myOrderInfoList">
<li>
						<div class="SP_displayTable">
							<div class="SP_displayTableInr">
								<div class="SP_myOrderInfoTitle">my point</div>
								<div class="SP_myOrderInfoCont"><a href="/myshop/mileage/historyList.html" class="SP_mileageCount" style="">0</a></div>
							</div>
						</div>
					</li>
					<li class="">
						<div class="SP_displayTable">
							<div class="SP_displayTableInr">
								<div class="SP_myOrderInfoTitle">my coupon</div>
								<div class="SP_myOrderInfoCont"><a href="/myshop/coupon/coupon.html">0</a></div>
							</div>
						</div>
					</li>
				</ul>
</div>
		</div>
    </div>
</div>
<script type="text/javascript" src="/smartpc/_js/gauge.js"> </script>

<!-- @js(/iv/js/iv_myshop.js)-->

	<div class="SP_layoutFix">
		<form id="frmSerialCoupon" name="" action="/exec/front/myshop/couponSerial" method="post" target="_self" enctype="multipart/form-data"><div class="xans-element- xans-myshop xans-myshop-couponserial SP_couponInputBox_wrap "><h3 class="tit">쿠폰 등록하기</h3>
<div class="ec-base-box typeThinBg couponSerial">
				<!--
					$login_page_url = /member/login.html
				-->
				<fieldset>
<legend>쿠폰번호 등록</legend>
					<input id="coupon_code" name="coupon_code" fw-filter="" fw-label="쿠폰인증번호" fw-msg="" class="inputTypeText" placeholder="" maxlength="35" value="" type="text">					<a href="#none" class="SP_cm_btn SP_btn_gray_bg" onclick="coupon_code_submit();">쿠폰번호 인증</a>
					<p>반드시 쇼핑몰에서 발행한 쿠폰번호만 입력해주세요. (10~35자 일련번호 '-' 제외)</p>
				</fieldset>
</div>
</div>
</form>
		<form id="frmCouponlist" name="frmCouponlist" action="" method="post" target="_self" enctype="multipart/form-data"><div class="xans-element- xans-myshop xans-myshop-couponlist couponListTable"><!--
				$product_list_url = coupon_product_list.html
			-->
<h3 class="SP_contTitle">마이쿠폰 목록 (총 0장)</h3>
<div class="ec-base-table typeList">
				<table border="1" summary="" class="SP_tableSt01_isThead">
<caption>마이 쿠폰 목록</caption>
					<colgroup>
<!-- <col style="width:45px" /> --><col style="width:300px">
<col style="width:120px">
<!-- <col style="width:130px" class="" /> --><col style="width:120px">
<col style="width:120px">
<col style="width:150px">
<col style="width:auto">
</colgroup>
<thead><tr>
<!-- <th scope="col">번호</th> --><th scope="col">쿠폰명</th>
							<th scope="col">할인</th>
							<th scope="col">적립</th>
							<th scope="col">구매금액 조건</th>
							<!-- <th scope="col" class="">결제수단</th> -->
							<!-- <th scope="col">쿠폰 혜택</th> -->
							<th scope="col">적용상품</th>
							<th scope="col">사용기간</th>
						</tr></thead>
<tbody class="displaynone center">
<tr class="">
<!-- <td></td> --><td class="left"></td>
							<td></td>
							<td></td>
							<td></td>
							<!-- <td class="left "></td> -->
							<!-- <td></td> -->
							<td></td>
							<td class="left useDate"></td>
						</tr>
<tr class="">
<!-- <td></td> --><td class="left"></td>
							<td></td>
							<td></td>
							<td></td>
							<!-- <td class="left "></td> -->
							<!-- <td></td> -->
							<td></td>
							<td class="left useDate"></td>
						</tr>
</tbody>
<tbody class=""><tr>
<td colspan="7" class="SP_message">보유하고 계신 쿠폰 내역이 없습니다</td>
						</tr></tbody>
</table>
</div>
<p class="ec-base-button displaynone"><span class="gRight"><a href="#none" class="btnSubmitFix sizeM" onclick="COUPON.useCoupon()">사용하기</a></span></p>
</div>
</form>
		<div class="xans-element- xans-myshop xans-myshop-couponlistpaging SP_pagenation_wrap"><div class="SP_page_prev_wrap">
    <a href="/myshop/coupon/coupon.html?page=1" class="SP_pg_prevAll_btn"></a>
    <a href="/myshop/coupon/coupon.html?page=1" class="SP_pg_prev_btn"></a>
</div>
<div class="SP_page_num_list">
    <ol>
<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
            </ol>
</div>
<div class="SP_page_next_wrap">
    <a href="/myshop/coupon/coupon.html?page=1" class="SP_pg_next_btn"></a>
    <a href="/myshop/coupon/coupon.html?page=1" class="SP_pg_nextAll_btn"></a>
</div>
</div>
	</div>
		
	<div class="xans-element- xans-myshop xans-myshop-head SP_pageGuideText_wrap "><div class="inner SP_layoutFix">
			<h3 class="SP_pageGuideTxt_tt bottom">쿠폰 안내사항</h3>
			<div class="SP_pageGuideTxt_cont bottom">
				<ol class="xans-element- xans-myshop xans-myshop-historyinfo "><li class="item1">- 쿠폰은 주문 시 1개의 쿠폰만 적용 가능하며, 중복 할인 및 적용은 불가합니다</li>
<li class="item2">- 쿠폰은 주문 건 전체 취소/반품 시 자동 복원됩니다.<br>(교환, 부분 취소/반품 시 쿠폰 복원 불가)<br>(쿠폰 사용기간 이 후 취소/반품의 경우 원복 및 재발급이 되지 않습니다.)</li>
<li class="item3">- 쿠폰은 사용 기한이 지나면 자동 소멸되며, 기한 만료로 인한 재발급은 불가합니다.</li>
<li class="item4">- 쇼핑몰에서 발행한 종이 쿠폰/시리얼 쿠폰/모바일 쿠폰 등은 쿠폰번호를 등록하시면 온라인에서 사용이 가능합니다</li>
</ol>
</div>
		</div>
</div>
</div>

<%@include file="footer.jsp" %>
</body>

</html>