<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="com.util.ConvertInt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/member_order.css">
 <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
<%@include file="header.jsp" %>
</head>
<body>

<form action="/projectOhora/product/order_result.do" id="order_form">
    <div class="order-container" id="wrap"> <!--mCafe24Order-->

        <div class="first-container">  <!--billingNshipping-->

            <div class="shippingInfo-container">

                <div class="contents">
        			
                    <div id="recent-info-container"> 
                    <!-- 여기서 최근배송지/ 직접입력 갖고있음  -->
                    <c:if test="${not empty userDTO }">
                        <div class="tab-wrap">
                            <ul class="for-real-addr-wrap">
                                <!-- 선택된 탭li 는 class에 selected 추가됨 -->
                                
                                <c:choose>
								    <c:when test="${ empty addrList }">
								        <li id="addrinput1">
		                                    <a href="#" id="preaddr">최근 배송지</a>
		                                </li>
		                                <li id="addrinput2" class="selected">
		                                    <a href="#" id="selfaddr">직접 입력</a>
		                                </li>
								    </c:when>
								    <c:otherwise>
								        <li id="addrinput1" class="selected">
		                                    <a href="#" id="preaddr">최근 배송지</a>
		                                </li>
		                                <li id="addrinput2">
		                                    <a href="#" id="selfaddr">직접 입력</a>
		                                </li>
								    </c:otherwise>
								</c:choose>
                                <!-- 밑에 둘은 각각 li 위치에 있지만 data- 만 가지고 있음  -->
                                <div class="for-real-addr"></div>
                                <div class="for-real-addr"></div>
                            </ul>
                        </div>
                        <!-- 최근배송지/직접입력 상단탭 끝 -->
						
                        <div id="recent-addr-info" style="display:${empty addrList ? 'none' : 'block'}">

                            <div id="title-recentAddr">
                                <h3>
                                    배송지 정보
                                    <span class="sideRightBtn-wrap">
                                        <button type="button" id="chaneAddrList">변경하기</button>
                                        <!-- 오른쪽 작은 검정 변경하기 버튼 -->
                                         <!-- 변경하기 누르면 off 클래스 추가되면서 사라졌다가 선택창 사라지면 다시 나옴 -->
                                    </span>
                                </h3>
                            </div>

                            <div id="text-recentAddr">
                                <div class="recentAddr-wrap">

                                    <p class="name">
                                        <span id="info-mainLabel">[기본]</span> 
                                        <!-- [기본]주소지를 선택할 경우에만 span안에 [기본] 이라는 텍스트 채워짐-->

                                        <span id="receiver">${empty addrList ? '' : addrList[0].addr_name }</span>
                                        <span id="receiver-tel">${empty addrList ? '' : addrList[0].addr_tel }</span>
                                        <!-- 번호 앞에 before로 / 달려있음 -->
                                    </p>

                                    <p class="addr">
                                        [
                                        <span id="addrZipCode">${empty addrList ? '' : addrList[0].addr_zipcode }</span>
                                        ]
                                        <span id="addrText">
                                            ${empty addrList ? '' : addrList[0].addr_address_main }
                                        </span>
                                    </p>

                                </div>
                            </div>
                        
                            <div id="recentAddr-list" style="display:none">
                                <!-- 작은 검정 변경하기 눌러야지만 display none 풀림 -->
                                <h3 class="heading">배송지를 선택해주세요</h3>
                                <ul class="shippingList-wrap">

                                    <!-- li 한개 == 변경하기 주소리스트 1개 -->
                                    <li class="shippingList">
                                        <div class="checkboxWrap">
                                            <input type="radio" id="shippingList-radio" name="shippingListRadio" checked>
                                            <label for="shippingList-radio"></label>
                                        </div>    

                                        <div class="sList-infoBox">
                                            <div class="nameContact">
                                                <p class="name2">
                                                    <span class="mainAddr-label">[기본]</span>
                                                    수령인
                                                </p>
                                                <!-- p태그 after로 / 있음 -->
                                                <p class="mobile">
                                                    010-1234-5678
                                                </p>
                                                <!-- p태그 after로 / 있음 -->
                                                <p class="tel">
                                                02-8945-4564  
                                                </p>
                                        
                                            </div>

                                            <div class="description">
                                                <p class="address">
                                                    [
                                                    <span class="listZipCode">07285</span>
                                                    ]
                                                    <span class="listAddrText">용인시 처인구 오야꼬동 614 6321</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="gotoSelfInput">
                                            <button class="goroSelfBtn">
                                                <img src="https://ohora.kr/web/upload/common/mobile/icon_modify.png" alt="">
                                            </button>
                                        </div>
                                    </li>

                                    <li class="shippingList">
                                        <div class="checkboxWrap">
                                            <input type="radio" id="shippingList-radio" name="shippingListRadio">
                                            <label for="shippingList-radio"></label>
                                        </div>    

                                        <div class="sList-infoBox">
                                            <div class="nameContact">
                                                <p class="name2">
                                                    <span class="mainAddr-label"></span>
                                                    수령인
                                                </p>
                                                <!-- p태그 after로 / 있음 -->
                                                <p class="mobile">
                                                    010-5454-8787
                                                </p>
                                                <!-- p태그 after로 / 있음 -->
                                                <p class="tel">
                                                051-5454-1111
                                                </p>
                                        
                                            </div>

                                            <div class="description">
                                                <p class="address">
                                                    [
                                                    <span class="listZipCode">27235</span>
                                                    ]
                                                    <span class="listAddrText">부산광역시 수영구 돈카츠동 688 2층</span>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="gotoSelfInput">
                                            <button class="goroSelfBtn">
                                                <img src="https://ohora.kr/web/upload/common/mobile/icon_modify.png" alt="">
                                            </button>
                                        </div>
                                    </li>

                                </ul>
                            </div>                   
                        </div>
                        <!-- 최근 배송지 끝 -->
                        </c:if>

                        <div id="selfInputAddr-form" style="display:${empty addrList ? 'block' : 'none'}">
                            <!-- 직접입력탭. display none으로 가려져있음 -->
                            <c:if test="${not empty userDTO }">
                            <div class="radioBtn-wrap">
                                <input type="radio" id="sameAddr" name="sameAddr" checked>
                                <label for="sameAddr">회원 정보와 동일</label>
                                <!-- 선택하면 before가 라디오 버튼에 검정색 찍어줌 -->

                                <input type="radio" id="newAddr" name="sameAddr">
                                <label for="newAddr">새로운 배송지</label>
                            </div>
							</c:if>
                            <div class="inputTable-wrap">
                                <table>
                                    
                                    <colgroup>
                                        <col style="width:102px">
                                        <col style="width:auto">
                                    </colgroup>

                                    <tbody>
                                        <tr class="newAddr-name">
                                            <th scope="row">
                                                <span class="th-span">
                                                    이름
                                                    <span class="icoRequired">
                                                        <!-- 애프터에 필수표시로 별찍음 * -->
                                                    </span>                                            
                                                </span>
                                            </th>
                                            <td>
                                                <input type="text" id="rname" name="rname" value="${empty userDTO ? '수령인' : userDTO.user_name}">
                                            </td>
                                        </tr>

                                        <tr id="self-receiver-addr">
                                            <th scope="row">
                                                <span class="th-span">
                                                    주소
                                                    <span class="icoRequired">
                                                        <!-- 애프터에 필수표시로 별찍음 * -->
                                                    </span>                                            
                                                </span>
                                            </th>
                                            <td>
                                                <ul class="self-addr">
                                                    <li id="self-zipcodeWrap">
                                                        <input type="text" maxlength="14" placeholder="우편번호" id="rzipcode1" name="rzipcode1" 
                                                        class="inputTypeText" readonly value="${empty addrList ? '' : addrList[0].addr_zipcode }">
                                                        <div class="btn" style="z-index: 10;" onclick="postCode()">
                                                            <a class="for-view-btn">우편번호</a>
                                                        </div>
                                                    </li>
                                                    <li id="receiver-baseAddr-wrap">
                                                       <input type="text" id="raddr1" name="raddr1" placeholder="기본주소" class="inputTypeText" 
                                                        maxlength="100" readonly value="${empty addrList ? '' : addrList[0].addr_address_main }">
                                                    </li>
                                                    <li id="receiver-baseAddr-wrap2">
                                                        <input type="text" id="raddr2" name="raddr2" placeholder="상세주소를 입력하세요" class="inputTypeText"
                                                         maxlength="255" value="${empty addrList ? '' : addrList[0].addr_address_detail }">
                                                    </li>
                                                </ul>
                                                /
                                            </td>
                                        </tr>
                                        <tr class="self-receiver-tel">
                                            <th scope="row">
                                                <span class="th-span">
                                                    핸드폰
                                                    <br>
                                                    번호
                                                    <span class="icoRequired">
                                                        <!-- 애프터에 필수표시로 별찍음 * -->
                                                    </span>                                            
                                                </span>
                                            </th>
                                            <td>
                                            <select name="rphone2_1" id="rphone2_1">
                                                    <option value="010" selected="selected">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                            </select> 
                                            -
                                            <input type="text" id="rphone2_2" name="rphone2_2" maxlength="4" value="${empty userDTO ? '' : telArr[1]}">
                                            -
                                            <input type="text" id="rphone2_3" name="rphone2_3" maxlength="4" value="${empty userDTO ? '' : telArr[2]}">
                                            </td>
                                        </tr>

                                        <tr class="orderForm-email">
                                            <th scope="row">
                                                <span class="th-span">
                                                    이메일
                                                    <span class="icoRequired">
                                                        <!-- 애프터에 필수표시로 별찍음 * -->
                                                    </span>                                            
                                                </span>
                                            </th>
                                            <td>
                                                <div class="self-email">
                                                    <input type="text" id="email1" name="email1" value="${ empty userDTO ? '' : emailArr[0] }">
                                                    @
                                                    <span class="mailAddr-selectWrap">
                                                        <select name="email2" id="email2">
                                                            <option value>-이메일 선택-</option>
                                                            <option value="naver.com">naver.com</option>
                                                            <option value="daum.net">daum.net</option>
                                                            <option value="nate.com">nate.com</option>
                                                            <option value="hotmail.com">hotmail.com</option>
                                                            <option value="yahoo.com">yahoo.com</option>
                                                            <option value="empas.com">empas.com</option>
                                                            <option value="korea.com">korea.com</option>
                                                            <option value="dreamwiz.com">naver.com</option>
                                                            <option value="gmail.com">gmail.com</option>
                                                            <option value="etc">직접입력</option>
                                                        </select>
                                                        <span class="directInputEmail">
                                                          <c:choose>
															    <c:when test="${ empty userDTO }">
															        <!-- 직접입력 누르면 셀렉트랑 같은 위치에 이놈이 display none 풀리면서(클래스 토글인듯) 입력창 나타남 셀렉트가 none되고-->
                                                            		<input type="text" id="direcEmail" name="direcEmail" class="" placeholder="직접입력" >
															    </c:when>
															    <c:otherwise>
                                                            		<input type="text" id="direcEmail" name="direcEmail" class="" 
                                                            		placeholder="직접입력" value="${empty userDTO ? '' : emailArr[1] }" >
															    </c:otherwise>
															</c:choose>
                                                        </span>
                                                    </span>
                                                </div>
                                                <p class="emailHelp">
                                                    이메일로 주문 처리 과정을 보내드립니다. 
                                                    <br>
                                                    수신 가능한 이메일 주소를 입력해 주세요.
                                                </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- 인풋테이블랩 끝 -->
                            <!-- 애프터로 선하나 긋는데 굳이? -->
                        </div>
                    </div>
                    
                    <!-- 최근배송지/ 직접입력 구간 끝 -->
                    <div class="deliMsg-wrap">
                        <select name="deliMsg_sel" id="deliMsg_sel">
                            <option value>배송 요청사항 선택</option>
                            <option value="deliMsg1">배송 전에 미리 연락바랍니다</option>
                            <option value="deliMsg2">부재 시 경비실에 맡겨주세요</option>
                            <option value="deliMsg3">부재 시 문 앞에 놓아주세요</option>
                            <option value="deliMsg4">빠른 배송 부탁드립니다</option>
                            <option value="deliMsg5">택배함에 보관해 주세요.</option>
                            <option value="deliMsg-input">직접 입력</option>
                            <!-- 옵션들 고르면 밑에 textarea에 해당 메시지들이 들어감 (안보이지만), 직접입력 고르면 inputWrap가 디스플레이되면서 textarea도 보임 -->
                        </select>
                        <!-- 얘도 클래스로 dispNone 토글하면됨 -->
                        <div class="deliMsg-inputWrap ">
                            <textarea name="deliMsg" id="deliMsg"></textarea>
                        </div>
                    </div> <!-- 배송메시지 끝 -->
                </div>
            </div>
        </div>
    </div>
    <div id="additionalInput-wrap" class="folded">
        <div id="addutionalInput-title">
            <h2>추가입력</h2>
            <!-- 애프터로 folded 클래스 부여하는 아이콘 디자인-->
        </div>
        <div id="additionalInput-content">
            <div class="addArea">
                <div class="addTable-wrap">
                    <table>
                        <colgroup>
                            <col style="width:115px">
                            <col style="width:auto">
                        </colgroup>

                        <tbody class="content-box">
                            <tr>
                                <th class="content-th" scope="row">
                                    배송지
                                    <br>
                                    확인
                                    <span class="icoRequired">
                                        <!-- 애프터로 필수입력 별표 -->
                                    </span>
                                </th>
                                <td>
                                    <input type="checkbox" id="addrConfirm" name="addrConfirm">
                                    <label for="addrConfirm">상세주소(동, 호수)를 정확하게 기재하셨나요?</label>
                                    <br>
                                    <span class="add-message">
                                        (주소 오기입의 경우 분실 및 반송 될 수 있으니 다시 한 번 체크 부탁 드립니다.)
                                    </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- 추가정보 체크 끝 -->
    <div class="orderPrd-container">
        <div class="orderPrd-wrap">
            <!-- 여기서 selected 클래스로 폴드구현 -->
            <div id="orderPrd-title">
                <h2>주문 상품</h2>
                <span id="orderPrd-count" style="display: none;">2개</span>
                <!-- display none였다가 폴드 접히면 none 풀리면서 상품 종류 갯수 찍힘 -->
                 <!-- after로 폴드 아이콘 디자인 -->
            </div>
            <div class="orderPrd-listArea">
                <!-- 배송비까지 담고있는 태그 -->
                <div class="orderPrd-list">
                    <!-- 이제부터 div 하나 == 상품 1 -->
                    <c:set var="discountSum" value="0"></c:set>
                    <c:set var="amountSum" value="0"></c:set>
                    <c:set var="totalSum" value="0"></c:set>
                    <c:forEach items="${ pdtList }" var="pdt" varStatus="status">
                    
			<div class="orderPrd">
                        <div class="prdInfoBox">
                            <div class="thumbnail">
                            <input type="hidden" id="pdtId" name="pdtId" value="${pdt.pdt_id}">
                                <a href="#">
                                    <img src="../resources/images/prd_image/imgs/${pdt.pdt_img_url}.jpg" alt="상품썸네일" width="90" height="90">
                                </a>
                            </div>
                            <div class="description">

                                <strong class="prdName" title="상품명">
                                    <a href="#">${pdt.pdt_name}</a>
                                    <input type="hidden" name="pdtName" value="${pdt.pdt_name}">
                                </strong>

                                <ul class="prdInfo">
                                    <li title="옵션">
                                        <p class="option noOption"></p>
                                        <!-- 옵션이 있다면 noOption 클래스가 사라지면서 [옵션: 02. 미디엄] 이런거 뜸 -->
                                    </li>
                                    <li>
                                        수량: ${pdtCountArray[status.index]}개
                                        <input type="hidden" id="pdtCount" name="pdtCount" value="${pdtCountArray[status.index]}">
                                    </li>
                                    <li>
                                        할인금액: 
                                        <span class="wranTxt">
                                            -
                                            <span>
                                            <fmt:formatNumber value="${(pdt.pdt_amount -pdt.pdt_discount_amount) * pdtCountArray[status.index]}"
                                            type="number" pattern="#,##0" />
                                            </span>
                                        </span>
                                    </li>
                                </ul>

                                <div class="prdPrice">
                                    <span><fmt:formatNumber value="${pdt.pdt_discount_amount * pdtCountArray[status.index]}" type="number" pattern="#,##0" /></span>
                                    <input type="hidden" name="pdtDcAmount" value="${pdt.pdt_discount_amount * pdtCountArray[status.index]}">
                                    <span class="originPrice">
                                        <span><fmt:formatNumber value="${pdt.pdt_amount * pdtCountArray[status.index]}" type="number" pattern="#,##0" />
                                        <input type="hidden" name="pdtAmount" value="${pdt.pdt_amount * pdtCountArray[status.index]}">
                                    </span>
                                </div>
							<c:set var="discountSum" value="${ discountSum + ((pdt.pdt_amount -pdt.pdt_discount_amount) * pdtCountArray[status.index])}"></c:set>
							<c:set var="amountSum" value="${ amountSum + (pdt.pdt_amount * pdtCountArray[status.index])}"></c:set>
                            </div>
                            <!-- description -->
                            <button type="button" class="btnRemove" id="btrRm">
                                <!-- 비포 애프터 각각 걸려서 X 표시 구현 -->
                                 삭제
                            </button>
                            
                        </div>
                    </div>
</c:forEach>

                </div>
                <!-- 상품 나열 끝  -->
				<c:set var="deliFee" value="${(amountSum-discountSum) >50000 ? 0 : 3000}"></c:set>
                <div class="totalPrice">
                    <div class="title" style="display: flex;justify-content: space-between;">
                        <h3>배송비</h3>
                        <span class="deliFee-wrap">
                            <span id="deliFee">
                            	<fmt:formatNumber value="${deliFee}" type="number" pattern="#,##0" />
                            </span>
                        </span>

                    </div>
                </div>
                <!-- 배송비 끝 -->
            </div>
            
        </div>
    </div>

    <div class="bonusItemContainer" style="display:none">
        <div class="bonusItemWrap">
            <div class="bonusTitle">
                <h2>사은품</h2>
                <span id="bonusHeading" class="txtSt"></span>
            </div>

            <div class="bonuscontent">
                <div class="bonusItemBox">
                    <div class="bprd">
                        <div class="bThumb">
                            <img src="https://ohora.kr/web/product/tiny/20191205/5985fa7457e4046c67aaa6cbf04840d5.jpg" alt="">
                        </div>
                        <div class="bDesc">
                            <label class="giftChoice">
                                <span class="">
                                    <input name="sel_product[]" id="sel_product219" gift_point="0.00" max_count="1" offer_auto="F" value="219" type="checkbox">
                                </span>
                                <strong class="prdName2" title="상품명">
                                    [사은품] 젤램프(취소시 재지급 불가) 
                                </strong>
                            </label>
                            <ul>
                                <li>
                                    <span class="ec-b-qty">
                                        <button type="button" onclick="" id="qtyMinus">
                                            <img src="https://img.echosting.cafe24.com/skin/mobile/common/ico_quantity_down_new.jpg" class="down" alt="down" width="33" height="29">
                                        </button>
                                        <input id="gift_amount_219" name="gift_amount_219" class="amount" readonly="1" value="1" type="text">
                                        <button type="button" onclick="" id="qtyPlus">
                                            <img src="https://img.echosting.cafe24.com/skin/mobile/common/ico_quantity_up_new.jpg" class="up" alt="up" width="33" height="29">
                                        </button>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<c:if test="${not empty userDTO }">
    <div class="usePoint-container">
        <div id="usePoint-wrap">
            <div id="point_dc">
                <h2>일반/부가결제</h2>
                <!-- 애프터로 폴드 디자인 -->
            </div>
            <div class="dcContent">
                
                <div class="couponUseArea">
                    <strong class="heading4">
                        할인쿠폰
                        <span class="coupCnt">${empty couponList ? 0 : couponList.size()}장</span>
                    </strong>
                    <br>
                    <input type="hidden" name="icpnDc" value="3000">
                    
                    <select name="icpnId" id="userCoupon" style="width: 700px; height:50px; font-size: 16px" selected>
                    		<option value="0">쿠폰 선택</option>
                        	<c:forEach items="${ couponList }" var="cp" varStatus="status">
								<option value="${ cp.icpn_id }">${cp.cpn_info}</option>
							</c:forEach>
							
			        </select>

                </div>




                <div id="pointUseArea" class="pointUseArea" style="">
                    <strong class="heading2">적립금</strong>
                    <span class="summary">
                        (
                            <span class="UseablePoint" data-point="${empty userDTO ? 0 : userDTO.user_point }">${empty userDTO ? 0 : userDTO.user_point }원</span>
                        사용 가능 )
                    </span>
                    <div class="control">
                        <input type="text" id="input_point" name="input_point">
                        <button type="button" id="btn_point">전액 사용</button>
                    </div>
                    <ul class="pointGuide">
                        
                        <!-- 첫번째 li누르면 아래 li들은 폴드됨 -->
                        <li class="ec-order-expand">적립금은 3,000원 이상일 때 사용 가능합니다.</li> 
                        <li id="mileage_max_unlimit" class="">최대 사용금액은 제한이 없습니다.</li>
                        <li id="mileage_max_limit" class="">1회 구매시 적립금 최대 사용금액은 0원입니다.</li>
                        <li>적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면 주문이 완료됩니다.</li>
                                                
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 적립금 끝 -->
	</c:if>
    <div id="final-price-container">
        <div id="final-price-title">
            <h2>최종 결제 정보</h2>
        </div>
        <div class="final-content">
            <div class="segment">
                <div class="finalTable-wrap">
                    <table>
                        <colgroup>
                            <col style="width:122px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row">주문금액</th>
                                <td class="rightP">
                                    <span id="total-price"><fmt:formatNumber value="${amountSum}" type="number" pattern="#,##0" /></span>
                                    <!-- after로 '원' -->
                                </td>                            
                            </tr>
                            <tr>
                                <th scope="row">배송비</th>
                                <td class="rightP">
                                    +
                                    <span id="total-deliPrice"><fmt:formatNumber value="${deliFee}" type="number" pattern="#,##0" /></span>
                                    <!-- 애프터로 원 -->
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">할인금액</th>
                                <td class="rightPdc">
                                    -
                                    <span id="total-discount"><fmt:formatNumber value="${discountSum}" type="number" pattern="#,##0" /></span>
                                    <!-- 애프터로 원 -->
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 애프터로 선 하나 -->
                </div>
                <c:set var="totalSum" value="${amountSum-discountSum}"></c:set>

                <div class="final-total-price">
                    <h3>최종 결제 금액</h3>
                    <strong class="txtStrong">
                        <span id="final-total-pay">
                            <fmt:formatNumber value="${totalSum + deliFee}" type="number" pattern="#,##0" />
                            <!-- 애프터로 원 -->
                            <input type="hidden" name="totalSum" value="${totalSum}">
                            <input type="hidden" name="discountSum" value="${discountSum}">
                        </span>
                    </strong>
                </div>

            </div>
        </div>
    </div>
    
    <!-- 최종 결제금액 칸 끝 -->

    <div id="payMethod-container">
        
        <div id="payMethod-title">
            <h2>결제수단</h2>
        </div>

        <div class="pmContents">
            <div class="segment">
                <ul class="payMethod-ul">
                <c:if test="${not empty userDTO }">
                    <li class="payMethodRecent-li">
                        <!-- 라디오 누를 때 li에 셀렉트 줬다뺏다로 css 처리함  -->
                        <input type="radio" name="payMethod" id="payMethod-recent" checked>
                        <label for="payMethod-recent">
                            <!-- 비포어가 라디오 부분이네 -->
                            최근 결제수단
                        </label>
                        <div id="payMethod-recentName">
                            가상계좌
                            <!-- 최근에 결제한 수단명 -->
                        </div>
                    </li>
				</c:if>
                    <li class="payMethodNew-li">
                        <!-- 다른 결제수단 누르면 여기로 selected -->
                        <input type="radio" name="payMethod" id="payMethod-new">
                        <label for="payMethod-new">
                            <!-- 비포어로 라디오 부분 -->
                            <c:if test="${not empty userDTO }">
                             <span>다른</span>
                             </c:if>
                             결제수단
                        </label>

                        <div class="inner">
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod0" name="addr_paymethod" value="휴대폰 결제">
                                <label for="addr_paymethod0">휴대폰 결제</label>
                            </span>
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod1" name="addr_paymethod" value="신용카드 결제">
                                <label for="addr_paymethod1">신용카드 결제</label>
                            </span>
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod2" name="addr_paymethod" value="가상계좌 결제">
                                <label for="addr_paymethod2">가상계좌 결제</label>
                            </span>
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod3" name="addr_paymethod" value="실시간 계좌이체">
                                <label for="addr_paymethod3">실시간 계좌이체</label>
                            </span>
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod4" name="addr_paymethod" value="네이버페이(간편결재)">
                                <label for="addr_paymethod4">네이버페이(간편결재)</label>
                            </span>
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod5" name="addr_paymethod" value="카카오페이(간편결제)">
                                <label for="addr_paymethod5">카카오페이(간편결제)</label>
                            </span>
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod6" name="addr_paymethod" value="토스(간편결제)">
                                <label for="addr_paymethod6">토스(간편결제)</label>
                            </span>
                            <span class="base-label">
                                <input type="radio" id="addr_paymethod7" name="addr_paymethod" value="페이코(간편결제)">
                                <label for="addr_paymethod7">페이코(간편결제)</label>
                            </span>
                        </div>
                    </li>

                </ul>
            </div>
            <!-- 위 선택에 따라 페이메서드 가이드 다르게 나옴 -->
            <div class="payMethod_Guide">
                <div id="payment_input_tcash" class="ec-base-table typeWrite" style="">
                    <!-- 실시간계좌이체때만 뜨고 다른거 고르면 style에 display none 걸림 -->
                    <table>
                        <!-- 실시간 계좌이체 -->
                        <colgroup>
                            <col style="width:100px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="helpArea-wrap">
                    <div class="helpArea">
                        <!-- 상황에 맞게 display none 걸어주고,풀어줘야됨 -->

                        <!-- 무통장입금, 카드결제, 휴대폰결제, 실시간계좌이체, 페이팔, 엑심베이, 엑시즈, 알리페이 -->
                        <ul id="pg_paymethod_info" class="ec-base-help typeDash" style="">
                            <li id="pg_paymethod_info_shipfee" style="display: none;">최소 결제 가능 금액은 총 결제금액에서 배송비를 제외한 금액입니다.</li>
                            <li id="pg_paymethod_info_pg">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</li>
                        </ul>
                        <!-- 페이코 도움말 -->
                        <ul id="payco_info" class="ec-base-help typeDash" style="display: none;">
    
                        </ul>
                        <!-- 카카오페이 도움말 -->
                        <ul id="kakaopay_info" class="ec-base-help typeDash" style="display: none;">
                            <li style="color:#964e50; font-weight:500;">※ 카카오페이 구매 프로모션은 비로그인 상태의 카카오페이 구매 결제 건에 한해 제공됩니다.</li>
                            <li>카카오톡 앱을 설치한 후, 최초 1회 카드정보를 등록하셔야 사용 가능합니다.</li>
                            <li>인터넷 익스플로러는 8 이상에서만 결제 가능합니다.</li>
                            <li>카카오머니로 결제 시, 현금영수증 발급은 ㈜카카오페이에서 발급가능합니다.</li>
                        </ul>
    
                        <!-- 네이버페이 도움말 -->
                         <ul id="naverpay_info" class="ec-base-help typeDash" style="display: none;">
                            <li>주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.</li>
                            <li>네이버페이는 네이버ID로 별도 앱 설치 없이 신용카드 또는 은행 계좌 정보를 등록하여 네이버페이 비밀번호로 결제할 수 있는 간편결제 서비스입니다.</li>
                            <li>네이버페이 카드 간편결제는 네이버페이에서 제공하는 카드사별 무이자, 청구 할인 혜택을 받을 수 있습니다.</li>
                        </ul>
                        <!-- 토스 도움말 -->
                        <ul id="toss_info" class="ec-base-help typeDash" style="display: none;">
                            <li>토스는 간편하게 지문 또는 비밀번호만으로 결제할 수 있는 빠르고 편리한 간편 결제 서비스입니다.</li>
                            <li>토스 결제 후 취소/반품 등이 발생할 경우 토스를 통한 신용카드 취소/토스머니 환불이 이루어집니다. </li>
                            <li>토스 이용가능 결제수단 : 국내 발행 신용/체크카드, 토스머니</li>
                        </ul>
    
                     </div>
                </div>
                
                <div id="cashReceipt-area" style="display:none">
                    <!-- 계좌이체, 가상계좌일 떄만 뜸 -->
                    <div class="cr-title">
                        <h3>현금영수증</h3>
                    </div>

                    <input type="radio" id="cashReceiptOk" name="cashReceipt">
                    <label for="cashReceiptOk">
                        현금영수증 신청
                    </label>

                    <input type="radio" id="cashReceiptNo" name="cashReceipt">
                    <label for="cashReceiptNo">
                        <!-- 비포어로 라디오 모양 -->
                        신청안함
                    </label>

                    <div class="cashReceipt-txtForm">
                        <!-- 신청함 누르면 디스플레이 논 풀기 -->
                        <div class="formWrap">
                            <div id="formBox">
                                <input id="cashreceipt_user_type2__0" name="cashreceipt_user_type2" value="0" type="radio" checked="checked"> 
                                <label for="cashreceipt_user_type2__0">개인</label>
                                <!-- 개인 라디오 -->

                                <input id="cashreceipt_user_type2__1" name="cashreceipt_user_type2" value="1" type="radio">
                                <label for="cashreceipt_user_type2__1">사업자</label>
                                <!-- 사업자 -->

                                
                                <!-- 개인/사업자 입력할 것들 디스플레이 토글시켜줘야댐 (휴대폰번호/사업자번호)-->
                                <span id="cashreceipt_mobile_display_area" style="">

                                    <select id="cashreceipt_user_mobile1" name="cashreceipt_user_mobile[]">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    -
                                    <input id="cashreceipt_user_mobile2" name="cashreceipt_user_mobile[]" maxlength="4" placeholder="" value="" type="text">
                                    -
                                    <input id="cashreceipt_user_mobile3" name="cashreceipt_user_mobile[]" maxlength="4"placeholder="" value="" type="text">                            
                                </span>

                                <!-- 사업자이면 논 풀어주면 됨 -->
                                <span id="cashreceipt_regno_display_area" style="">
                                    <input id="cashreceipt_reg_no" name="cashreceipt_reg_no" placeholder="사업자번호" value="" type="text">                            
                                </span>

                            </div>
                            
                        </div>
                    </div>
                </div>
                <!-- 현금영수증 구역 끝 -->

                <!-- 다음 결제에도 결제수단 저장여부 -->
                <div class="saveArea segment unique ">
                    <input type="checkbox" id="save_paymethod" name="save_paymethod" value="" checked="checked">
                    <label for="save_paymethod">결제수단과 입력정보를 다음에도 사용</label>
                </div>


            </div>

        </div>

    </div>
    <!-- 결제 수단 끝 -->
    <c:if test="${userDTO.mem_id == 1 }">
    	<c:set var="rate" value="0.01f"></c:set>
    </c:if>
    <c:if test="${userDTO.mem_id == 2 }">
    	<c:set var="rate" value="0.02f"></c:set>
    </c:if>
    <c:if test="${userDTO.mem_id == 3 }">
    	<c:set var="rate" value="0.03f"></c:set>
    </c:if>

	<c:set var="point" value="${Math.floor(totalSum * rate)}"></c:set>
    <!-- 적립예정.. 얘도 selected 줘서 폴드 토글 -->
    <div id="pointBenefit">
        <div id="pbTitle">
            <h2>적립 혜택</h2>


            <span id="pointTitle">
            <!-- 폴드가 펼쳐지면 얘는 none -->
                <span>${ ConvertInt.convInt(point) }원</span> 
                예정
            </span>
            <!-- 여기서 애프터로 폴드아이콘 디자인 -->
        </div>
    
        <div class="contents">
            <div class="segment">
                <div class="ec-base-table gCellNarrow">
                    <table>
                        <colgroup>
                            <col style="width:160px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
    
                            <tr>
                                <th scope="row">상품별 적립금</th>
                                <td class="right"><span id="mProductMileage" class="price">0원</span></td>
                            </tr>
                            
                            <tr>
                                <th scope="row">회원 적립금</th>
                                <td class="right"><span id="mMemberMileage" class="price">${ ConvertInt.convInt(point) }원</span></td>
                            </tr>
                
                            <tr>
                                <th scope="row">쿠폰 적립금</th>
                                <td class="right"><span id="mCouponMileage" class="price">0원</span></td>
                            </tr>

                            <tr class="displaynone">
                                <th scope="row">플러스앱주문 적립금</th>
                                <td class="right"><span id="mPlusappMileage" class="price">0원</span></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 애프터로 선 하나 -->
                </div>
            </div>
			
            <div class="totalPay">
                <h3 class="heading3">적립 예정금액</h3>
                <strong class="txtEm">
                    <span id="mAllMileageSum" style="">${ ConvertInt.convInt(point) }원</span>
                </strong>
            </div>

        </div>

    </div>
    <!-- 적립예정 끝 -->


    <!-- 기타 잡 내용 (하나만 헀음) -->
    <div class="SP_pageGuideText_wrap SP_orderSection agree_guide" style="margin-top: 0; background: #fff;">
        <h3 class="SP_pageGuideTxt_tt">주문자 동의</h3>
        <div class="SP_pageGuideTxt_cont">
            <h4>회원 본인은 구매 조건, 주문 내용 확인 및 결제에 동의합니다.</h4>
            <ul>
                <li>
                    <p>개인정보 수집 및 이용 동의<span class="more">자세히</span></p>
                    <div class="detail_cont">
                        <p class="YKtitle">개인정보 수집 및 이용 동의</p>
                        <p>1. 개인정보 수집목적 및 이용목적<br><br>
                            가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금 정산<br>
                            콘텐츠 제공 , 구매 및 요금 결제, 물품 배송 또는 청구지 등 발송, 금융거래 본인 인증 및 금융 서비스<br><br>
                            나. 회원 관리<br>
                            회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지, 연령확인, 불만 처리 등 민원처리, 고지사항 전달  <br>
                            2. 수집하는 개인정보 항목 : 이름, ID, 비밀번호, 휴대전화번호, 이메일, 주소, 결제정보<br><br>
                            3. 개인정보의 보유기간 및 이용기간<br>
                            개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br><br>
                            4. 동의 거부시 불이익<br>
                            본 개인정보 수집 및 이용 등에 동의하지 않을 권리가 있습니다. 다만, 필수항목에 동의를 하지 않을경우 거래가 제한될 수 있습니다.</p>
                    </div>
                </li>
                <li>
                    <p>전자결제대행 이용 동의<span class="more">자세히</span></p>
                    <div class="detail_cont">
                        <p class="YKtitle">전자결제대행 이용 동의</p>
                        <a href="https://www.kcp.co.kr/etc.terms.do">NHN한국사이버결제(주)</a>
                        <p>https://www.kcp.co.kr/etc.terms.do</p>
                        <a href="https://www.kakaopay.com/terms/financial">카카오페이</a>
                        <p>https://www.kakaopay.com/terms/financial</p>
                        <a href="https://new-m.pay.naver.com/member/terms-policy/npay-usage">네이버페이</a>
                        <p>https://new-m.pay.naver.com/member/terms-policy/npay-usage</p>
                        <a href="https://www.payco.com/financeAgree.nhn">NHN페이코(주)</a>
                        <p>https://www.payco.com/financeAgree.nhn</p>
                        <a href="https://pages.tosspayments.com/terms/user">토스페이먼츠</a>
                        <p>https://pages.tosspayments.com/terms/user</p>
                        <a href="https://www.danalpay.com/customer_support/terms_and_policy">(주)다날</a>
                        <p>https://www.danalpay.com/customer_support/terms_and_policy</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <!-- 픽스드 결제하기 -->
    <div class="ec-base-button gFull" id="orderFixItem">
        <button type="button" class="btnSubmit SMSorderSubmit" id="btn_payment">
            결제하기
        </button>
    </div>

</form>





</body>
<%@include file="footer.jsp" %>
<script src="../resources/js/member_order.js"></script>
</html>
