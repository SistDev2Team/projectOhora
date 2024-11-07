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
<link rel="stylesheet" href="../resources/cdn-main/endorder_nolog.css">
<script src="../resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<body>
  <%@include file="header.jsp" %>
  <!-- 위 필수 -->

    <!-- 콘텐츠 -->
<div id="SP_order_wrap">
      <div class="SP_layoutFix">
      	<div class="SP_Ohora_msg displaynone">
            <span><img src="	https://www.ohora.kr/smartpc/_img/icon/icon_alertchecked.png" alt="확인완료이미지"></span>
            <span class="main_msg">고객님의 주문이 정상적으로 완료되었습니다.</span>
        </div>
        <form
          id="frm_order_result"
          name="frm_order_result"
          action=""
          method="post"
          target="_self"
          enctype="multipart/form-data"
        >
          <input
            id="order_id"
            name="order_id"
            value="20241104-0002037"
            type="hidden"
          />
          <input
            id="bank_url_hidden"
            name="bank_url_hidden"
            value=""
            type="hidden"
          />
          <div
            id="SMS_OrderResult"
            class="xans-element- xans-order xans-order-result order_result_wrap xans-record-"
          >
            <!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
            <!-- snappush start -->
            <script>
              snapPushOrderInstance.orderNo = "20241104-0002037";
              snapPushOrderInstance.setPayPrice("19,800");
              snapPushOrderInstance.setUseMileage("0");
              snapPushOrderInstance.setCouponDiscount("0");
              snapPushOrderInstance.setTotalPrice("16,800");
              snapPushOrderInstance.setTotalDiscount("0");
              snapPushOrderInstance.groupName = "Friend";
            </script>
            <!-- snappush end -->
            <div class="member_result_form">
              <div class="top_area">
                <h3>주문이 완료 되었습니다.</h3>
                <p>
                  주문내역 및 배송에 관한 안내는<br /><a
                    href="/myshop/order/detail.html?order_id=20241104-0002037"
                    class="myshop_link"
                    >주문조회</a
                  >를 통하여 확인 가능합니다.
                </p>
              </div>
              <div class="bottom_area">
                    <ul>
							<li class="id">
                            <strong>주문번호</strong>
                            <span class="order_id">20241104-0002195</span>
                        </li>
                        <li class="name">
                            <strong>주문일자</strong>
                            <span>2024-11-04 15:16:13</span>
                        </li>
                    </ul><div id="orderformSimpleJoin" class="xans-element- xans-layout xans-layout-statelogoff " style="display: block;"><p>
                            입력하신 주문 정보로<br><b>간편하게 '회원가입'</b>이 가능합니다.
                        </p>
					<span><a href="/member/join.html?order=join" class="">간편 회원가입하기</a></span>
						</div>
                </div>
              <div class="btn_area">
                <div class="btn">
                  <a
                    href="/myshop/order/detail.html?order_id=20241104-0002037"
                    class="myshop_link"
                    >주문 확인하기</a
                  >
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    <!-- 콘텐츠 -->

    <!-- 아래 필수 -->
    <%@include file="footer.jsp" %>
  </body>
</html>
