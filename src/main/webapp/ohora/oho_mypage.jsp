<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cdn-main/oho_myPage.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>

    <div id="main-container">

        <div id="contents">

            <div id="myPage-wrap">

                <div class="subSection">
                    <h2 class="subTitle">
                        <span>MY PAGE</span>
                    </h2>
                </div>
            
                

                <div class="profile-container">
                    <div class="member-info-wrap">

                        <div class="member-info"> 
                        <!-- 얘가 SP_Message임 -->
                            
                            <div class="info-msg">
                            
                                <div class="member-radius">
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


                                <div class="infoMegBox_wrap">
                                    <p class="ment">
                                        <strong><span><span class="member-name">${user.user_name}</span></span></strong>님 반갑습니다.
                                    </p>
                                    
										<p class="grade">회원님의 등급은 
										    <strong class="group">[
										        <span class="groupName-wrap" id="groupName">
										            <span class="group_name">
										                ${user.mem_id == 1 ? 'friend' : user.mem_id == 2 ? 'family' : user.mem_id == 3 ? 'crew' : ''}
										            </span>
										        </span>
										    ]</strong>입니다.
										</p>
									
        
								  <p class="gradeValue" id="toNextGrade">다음 등급까지
								   
								    <span id="changePrd" class="toNext-won">
								        <span class="toNext-value">
								        						            
								            <c:set var="totalSum" value="0" />
								            
								            <c:forEach var="entry" items="${groupedOrders}">
								            
								                <c:forEach var="orderDetail" items="${entry.value}">
								                    <c:set var="totalSum" value="${totalSum + orderDetail.ORD_TOTAL_AMOUNT}" />
								                </c:forEach>
								                
								            </c:forEach>
																            
								            <c:choose>								               
								                <c:when test="${user.mem_id == 3}">
								                    이미 최고 등급에 도달하셨습니다.
								                </c:when>
								               								               
								                <c:otherwise>
								                    <c:set var="goalAmount" value="${user.mem_id == 1 ? 150000 : 400000}" />
								                    <fmt:formatNumber value="${ goalAmount - totalSum < 0 ? 0 :goalAmount - totalSum }" type="number" pattern="#,##0" />원 남았습니다.								   							                    
								                </c:otherwise>
								                
								            </c:choose>
							            
								        </span>
								    </span> 
								</p>

										
                                    <p class="order_total">
                                        <span class="order_total_value">0</span>
                                    </p>
                                    <div class="user-UtilLink">
                                        <a href="">등급 혜택보기</a>
                                        <a href="">후기쓰러가기</a>
                                        <a href="">1:1문의하기</a>
                                    </div>
                                </div>


                            </div>   
                        </div>

                        <div class="order_info_wrap">
                            <div class="point_coupon-wrap">
                                <ul class="point_coupon">
                                    <li>
                                        <div class="pnc_displayTable">
                                            <div class="pnc_displayTableInr">
                                                <div class="myOrderInfoTitle">my point</div>
                                                <div class="myOrderInfoCont">
                                                    <a href="" class="pointCount" style="">${formattedUserPoint}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="pnc_displayTable">
                                            <div class="pnc_displayTableInr">
                                                <div class="myOrderInfoTitle">my coupon</div>
                                                <div class="myOrderInfoCont">
                                                    <a href="" style="">${availableCoupons}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 오더 인포 랩 -->

                    </div>
                </div>

                <div class="orderList-layout">
                    <div class="subSection">
                        <div class="ol-title-wrap">
                            <h3>order list</h3>
                            <div class="ol-moreBtn">
                                <a href="">+더보기</a>
                            </div>
                        </div>

                        <div class="orderState_wrap">
                            <ul>
                                <li>
                                    <a href="">
                                        <span>상품준비중</span>
                                        <span class="count">
                                            <span id="orderstate_prepare_production_count">
                                            ${orderStateCounts[0]}
                                            </span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span>배송준비중</span>
                                        <span class="count">
                                            <span id="orderstate_prepare_delivery_count">
                                            ${orderStateCounts[1]}
                                            </span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span>배송중</span>
                                        <span class="count">
                                            <span id="xans_myshop_orderstate_shppied_begin_count">
                                            ${orderStateCounts[2]}
                                            </span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span>배송완료</span>
                                        <span class="count">
                                            <span id="xans_myshop_orderstate_shppied_complate_count">
                                            ${orderStateCounts[3]}
                                            </span>
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="order-history-wrap">
                        
                            <table class="ordhistory-table">

                                <colgroup>
                                    <col width="170px">
                                    <col width="auto">
                                    <col width="200px">
                                    <col width="200px">
                                    <col width="180px">
                                </colgroup>

                                <thead>
                                    <tr>
                                    <th scope="col" class="number">주문일자</th>
                                    <th scope="col" class="thumb">상품정보</th>
                                    <th scope="col" class="product">상품금액</th>
                                    <th scope="col" class="product">결제금액</th>
                                    <th scope="col" class="quantity">주문상세</th>
                                    </tr>
                                </thead>
                                                    
								<tbody>
								    <c:forEach var="entry" items="${groupedOrders}">
								        <c:set var="orderDate" value="${entry.key}" />
								        <c:set var="orders" value="${entry.value}" />
								        
								        <c:forEach var="orderDetail" items="${orders}" varStatus="status">
								        
								            <tr class="table-record">
								                
								                <!-- 날짜는 첫 번째 행에만 표시 -->
								                <c:if test="${status.first}">
								                    <td class="number center" rowspan="${orders.size()}">${orderDate}</td>
								                </c:if>
								
								                <!-- 상품정보 -->
								                <td class="subject alignLeft">
								                    <a href="">${orderDetail.OPDT_NAME}</a>
								                </td>
								                
								                <!-- 상품금액 -->
								                <td class="price center">
								                    <fmt:formatNumber value="${orderDetail.OPDT_AMOUNT}" type="number" pattern="#,##0" />
								                </td>
								                
								                <!-- 결제금액 -->					                    
								                <td class="totalprice">
								                    <fmt:formatNumber value="${orderDetail.ORD_TOTAL_AMOUNT}" type="number" pattern="#,##0" />
								                </td>
								                
								                <!-- 주문상세: 첫 번째 행에만 표시 -->
								                <c:if test="${status.first}">
								                    <td class="center number" rowspan="${orders.size()}">
								                        <form action="${pageContext.request.contextPath}/orderdetail.do" method="post">
								                            <input type="hidden" name="ORD_PK" value="${orderDetail.ORD_PK}">
								                            <button type="submit" class="ordhistory-linkView">자세히보기</button>
								                        </form>
								                    </td>
								                </c:if>
								            </tr>
								        
								        </c:forEach>
								    </c:forEach>
								</tbody>

								    
								    
                                                                                                                            
								     <!-- 주문 내역 없을 경우 -->
								    <tbody class="noOrder ${empty groupedOrders ? '' : 'displayNone'}">
								        <tr>
								            <td colspan="5" class="empty">주문 내역이 없습니다</td>
								        </tr>
								    </tbody>
								</table>

                        </div>

                    </div>

                    <div class="myShopMenu-layout">
                        <div class="myShopMenu-list">
                            <ul>
                              
                                <li><a href="${pageContext.request.contextPath}/orderlist.do">주문내역</a></li>
                                
								<li>
								    <a href="${pageContext.request.contextPath}/editstart.do">
								        회원정보
								    </a>
								</li>
                                                                                                                                                      
                                <li><a href="${pageContext.request.contextPath}/addrstart.do">배송주소록</a></li>
                                
                                <li><a href="">이용약관</a></li>
                            </ul>
                        </div>

                        <div class="myShopMenu-list">
                            <ul>
                                <li>
                                    <a href="${pageContext.request.contextPath}/coupon.do">쿠폰내역<span class="">
                                        <span class="xans_myshop_main_coupon_cnt">${availableCoupons}</span>
                                        장</span>
                                    </a>
                                </li>
                                <li class="point-history">
                                    <a href="">적립금 내역
                                        <span class="count">${formattedUserPoint}</span>
                                    </a>
                                </li>
                                                
                                <li class="caty">
                                    <a href="">장바구니
                                        <span class="">${cartlist}</span>
                                    </a>
                                </li>
                                                
                                <li>
                                    <a href="">게시글 관리</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- 오더 레이아웃 픽스 -->




            </div>
            <!-- 마이페이지 랩 -->
        </div>
        <!-- 컨텐츠 -->

    </div>
    <!-- 메인 컨테이너 -->

</body>
<%@include file="footer.jsp" %>
</html>