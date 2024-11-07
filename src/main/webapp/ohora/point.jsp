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
<link rel="stylesheet" href="../resources/cdn-main/point.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>
	<div id="container">
		<div id="contents">

			<script>
				SMARTPC_GLOBAL_OBJECT.page = 'mypage';
			</script>
			<div id="SP_mypage_wrap">
				<div
					class="xans-element- xans-myshop xans-myshop-head SP_subSection">
					<h2 class="SP_subTitle Nunito_Sans_font">
						<span class="eng_font">MY POINT</span>
					</h2>
				</div>

				<div
					class="xans-element- xans-myshop xans-myshop-asyncbenefit SP_mypageInfomation_wrap">
					
					<div class="mypageInformation_inner memberInfo ">
					
						<div class="SP_Message ">
							<div class="SP_information">
							
								<div id="gauge1" class="gauge-container one displaynone">
									<svg viewBox="8 8 84 84" class="gauge">
										<path class="dial" fill="none" stroke="#eee" stroke-width="2"
											d="M 50 10 A 40 40 0 1 1 49.999 10"></path>
										<text x="50" y="50" fill="#999" class="value-text"
											font-size="100%" font-family="sans-serif"
											font-weight="normal" text-anchor="middle"
											alignment-baseline="middle" dominant-baseline="central">27%</text>
										<path class="value" fill="none" stroke="#666"
											stroke-width="2.5" d="M 50 10 A 40 40 0 0 1 89.685 55.013"></path></svg>
								</div>


								<!-- progress -->

								<div class="member-radius">
                                    <div class="radius-box" id="radiusBox">
                                        <canvas id="doughnut1" width="170" height="170" ></canvas>
                                        <canvas id="member1" width="170" height="170" class="line"></canvas>
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
									<p class="ment">
										<strong><span><span
												class="xans-member-var-name">선우</span></span></strong>님 반갑습니다.
									</p>
									<p class="grade">
										회원님의 등급은
										<!--img src="" alt="" class="myshop_benefit_group_icon_tag" / -->
										<strong class="group">[<span class="groupName"
											id="groupName"><span
												class="xans-member-var-group_name">Friend</span><span
												class="myshop_benefit_ship_free_message"></span></span>]
										</strong>입니다.
									</p>
									<p class="gradeValue  gradeGuide" id="sGradeAutoDisplayArea">
										다음 등급까지 <span id="changePrd" class="price  sAutoGradeDisplay"><span
											class="xans-member-var-sGradeIncreasePrice">108,300</span>원</span>
										남았습니다.
									</p>
									<p class="order_total_ 현재까지주문금액">
										<span class="xans-member-var-sPeriodOrderPrice">41,700</span>
									</p>
									<div class="SP_infoUserUtilLink_wrap">
										<a
											href="/article/%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD/1/1/%20%20">등급
											혜택보기</a> <a
											href="/myshop/order/list.html?order_status=shipped_complate">후기쓰러가기</a>
										<a href="https://oe9lp.channel.io/home">1:1문의하기</a>
										<!--<a href="/myshop/board_list.html">내 게시글</a>-->
									</div>
								</div>
							</div>
						</div>
						<!-- 추가 -->
						<div class=" gBlank5" id="sAutomaticGradeShowArea"
							style="display: none">
							<p class=" sAutoGradeDisplay ">
								구매금액 <span class="xans-member-var-sPeriodOrderPrice">41,700</span>으로
								회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>]
								입니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								구매건수 <span class="xans-member-var-sPeriodOrderCount">2건</span>으로
								회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>]
								입니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								구매금액 <span class="xans-member-var-sPeriodOrderPrice">41,700</span>,
								구매건수 <span class="xans-member-var-sPeriodOrderCount">2건</span>으로
								회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>]
								입니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								구매금액 <span class="xans-member-var-sPeriodOrderPrice">41,700</span>,
								또는 구매건수 <span class="xans-member-var-sPeriodOrderCount">2건</span>으로
								회원님의 예상등급은 [<span class="xans-member-var-sRealtimeGrade">Friend</span>]
								입니다.
							</p>
							<p class=" sAutoGradeDisplay ">
								[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를
								위해서 구매금액 <span
									class="xans-member-var-sCurrentGradeIncreasePrice">0</span>이
								추가로 필요합니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를
								위해서 구매건수 <span
									class="xans-member-var-sCurrentGradeIncreaseCount">0건</span>이
								추가로 필요합니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를
								위해서 구매금액 <span
									class="xans-member-var-sCurrentGradeIncreasePrice">0</span>,
								구매건수 <span class="xans-member-var-sCurrentGradeIncreaseCount">0건</span>이
								추가로 필요합니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								[<span class="xans-member-var-sCurrentGrade">Friend</span>] 유지를
								위해서 구매금액 <span
									class="xans-member-var-sCurrentGradeIncreasePrice">0</span>, 또는
								구매건수 <span class="xans-member-var-sCurrentGradeIncreaseCount">0건</span>이
								추가로 필요합니다.
							</p>
							<p class=" sAutoGradeDisplay ">
								또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을
								원하시면 구매금액 <span class="xans-member-var-sGradeIncreasePrice">108,300</span>이
								추가로 필요합니다
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을
								원하시면 구매건수 <span class="xans-member-var-sGradeIncreaseCount">0건</span>이
								추가로 필요합니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을
								원하시면 구매금액 <span class="xans-member-var-sGradeIncreasePrice">108,300</span>,
								구매건수 <span class="xans-member-var-sGradeIncreaseCount">0건</span>이
								추가로 필요합니다.
							</p>
							<p class="displaynone sAutoGradeDisplay ">
								또한 [<span class="xans-member-var-sNextGrade">Family</span>] 승급을
								원하시면 구매금액 <span class="xans-member-var-sGradeIncreasePrice">108,300</span>,
								또는 구매건수 <span class="xans-member-var-sGradeIncreaseCount">0건</span>이
								추가로 필요합니다.
							</p>
							<p class="txtInfo txt11">승급 기준에 따른 예상 금액이므로 총주문 금액과 다를 수
								있습니다.</p>
						</div>
						<!-- //추가 -->
						<div class="SP_myOrderInfo_wrap">
							<div
								class="xans-element- xans-myshop xans-myshop-bankbook orderinfo_pay ">
								<ul class="SP_myOrderInfoList">
									<li>
										<div class="SP_displayTable">
											<div class="SP_displayTableInr">
												<div class="SP_myOrderInfoTitle">my point</div>
												<div class="SP_myOrderInfoCont">
													<a href="/myshop/mileage/historyList.html"
														class="SP_mileageCount" style="">1,170</a>
												</div>
											</div>
										</div>
									</li>
									<li class="">
										<div class="SP_displayTable">
											<div class="SP_displayTableInr">
												<div class="SP_myOrderInfoTitle">my coupon</div>
												<div class="SP_myOrderInfoCont">
													<a href="/myshop/coupon/coupon.html">0</a>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript" src="/smartpc/_js/gauge.js">
					
				</script>

				<!-- @js(/iv/js/iv_myshop.js)-->

				<div class="SP_layoutFix">
					<div
						class="xans-element- xans-myshop xans-myshop-mileagehistorypackage ">
						<div class="SP_myMileagelist_tab SP_subSection">
							<ul class="menu">
								<li class="selected"><a
									href="/myshop/mileage/historyList.html">적립내역</a></li>
								<li><a href="/myshop/mileage/unavailList.html">미가용 적립금</a></li>
								<li><a href="/myshop/mileage/couponList.html">미가용쿠폰/회원등급적립내역</a></li>
							</ul>
						</div>
						<div class="xans-element- xans-myshop xans-myshop-historylist">
							<!--
					$only_html = no
					$count = 10
					$login_page = /member/login.html
				-->
							<div class="ec-base-table typeList">
								<table border="1" summary="" class="SP_tableSt01_isThead">
									<caption>적립금 내역</caption>
									<colgroup>
										<col style="width: 15%">
										<col style="width: 15%">
										<col style="width: 25%">
										<col style="width: auto">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">주문날짜</th>
											<th scope="col">적립금</th>
											<th scope="col">관련 주문</th>
											<th scope="col">내용</th>
										</tr>
									</thead>
									<tbody class=" center">
										<tr class="xans-record-">
											<td style="opacity: 1;">2024.08.28</td>
											<td class="right" style="opacity: 1;">259원</td>
											<td style="opacity: 1;"><a
												href="/myshop/order/detail.html?order_id=20240807-0000408">20240807-0000408</a></td>
											<td style="opacity: 1;">회원등급 적립금</td>
										</tr>
										<tr class="xans-record-">
											<td style="opacity: 1;">2024.08.26</td>
											<td class="right" style="opacity: 1;">100원</td>
											<td style="opacity: 1;"><a
												href="/myshop/order/detail.html?order_id=20240807-0000408">20240807-0000408</a></td>
											<td style="opacity: 1;">P 마블 소다 페디</td>
										</tr>
										<tr class="xans-record-">
											<td style="opacity: 1;">2024.08.05</td>
											<td class="right" style="opacity: 1;">128원</td>
											<td style="opacity: 1;"><a
												href="/myshop/order/detail.html?order_id=20240713-0000323">20240713-0000323</a></td>
											<td style="opacity: 1;">회원등급 적립금</td>
										</tr>
										<tr class="xans-record-">
											<td style="opacity: 1;">2024.01.12</td>
											<td class="right" style="opacity: 1;">118원</td>
											<td style="opacity: 1;"><a
												href="/myshop/order/detail.html?order_id=20231221-0006231">20231221-0006231</a></td>
											<td style="opacity: 1;">회원등급 적립금</td>
										</tr>
										<tr class="xans-record-">
											<td style="opacity: 1;">2021.08.03</td>
											<td class="right" style="opacity: 1;">296원</td>
											<td style="opacity: 1;"><a
												href="/myshop/order/detail.html?order_id=20210709-0029815">20210709-0029815</a></td>
											<td style="opacity: 1;">회원등급 적립금</td>
										</tr>
										<tr class="xans-record-">
											<td style="opacity: 1;">2021.07.23</td>
											<td class="right" style="opacity: 1;">269원</td>
											<td style="opacity: 1;"><a
												href="/myshop/order/detail.html?order_id=20210627-0044221">20210627-0044221</a></td>
											<td style="opacity: 1;">회원등급 적립금</td>
										</tr>
									</tbody>
								</table>
								<p class="SP_message displaynone">적립금 내역이 없습니다.</p>
							</div>
						</div>
					</div>

					<div
						class="xans-element- xans-myshop xans-myshop-historypaging SP_pagenation_wrap">
						<div class="SP_page_prev_wrap">
							<a href="/myshop/mileage/historyList.html?page=1"
								class="SP_pg_prevAll_btn"></a> <a
								href="/myshop/mileage/historyList.html?page=1"
								class="SP_pg_prev_btn"></a>
						</div>
						<div class="SP_page_num_list">
							<ol>
								<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
							</ol>
						</div>
						<div class="SP_page_next_wrap">
							<a href="/myshop/mileage/historyList.html?page=1"
								class="SP_pg_next_btn"></a> <a
								href="/myshop/mileage/historyList.html?page=1"
								class="SP_pg_nextAll_btn"></a>
						</div>
					</div>

				</div>
				<div
					class="xans-element- xans-myshop xans-myshop-head SP_pageGuideText_wrap ">
					<div class="inner SP_layoutFix">
						<h3 class="SP_pageGuideTxt_tt bottom">적립금 안내사항</h3>
						<div class="SP_pageGuideTxt_cont bottom">
							<ol class="xans-element- xans-myshop xans-myshop-historyinfo">
								<li class="item1 ">- 적립금은 배송비 및 적립금 사용금액을 제외한 실 결제금액 기준으로
									적립이 됩니다.</li>
								<li class="item2 ">- 주문으로 발생한 적립금은 배송 완료 후 20일부터 실제 사용 가능한
									적립금으로 전환됩니다. 배송 완료 시점으로부터 20일 동안은 미가용 적립금으로 분류됩니다.</li>
								<li class="item3 ">- 미가용 적립금은 반품, 구매 취소 등을 대비한 임시 적립금으로 사용
									가능 적립금으로 전환되기까지 상품 구매에 사용하실 수 없습니다.</li>
								<li class="item4 ">- 사용 가능 적립금(총 적립금 - 미가용 적립금 - 사용된 적립금)은
									구매 금액 상관없이 누적 적립금 3,000원 이상부터 바로 사용이 가능합니다.</li>
								<li class="item5 ">- 적립금은 휴면 회원 전환 시 전체 소멸됩니다.</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@include file="footer.jsp" %>
</html>