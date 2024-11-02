<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ohora 오호라 공식몰</title>
<link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.ico">
<link rel="stylesheet" href="../resources/cdn-main/event.css">
<meta name="google" content="notranslate">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<%@include file="header.jsp" %>
<div class="wrap">
    <div class="eventDetail">
        <div class="title-block">
        </div>
        <div class="event-wrap">
            <p style="text-align: center;">
               <img src="/projectOhora/resources/images/event_06_image/pc_f.jpg" alt="">
                <img src="/projectOhora/resources/images/event_06_image/event_01.jpg" alt="">
                
                <!-- 회원가입 링크 -->
                <a href="/member/join_intro.html">
                <img src="/projectOhora/resources/images/event_06_image/event_02.jpg" alt=""></a>
              <img src="/projectOhora/resources/images/event_06_image/event_03.jpg" alt="">
			<div class="insta_review_wrap">
			    <div class="items">
			        <!-- ajax 호출 -->
			    </div>
			</div>
     
        <img src="/projectOhora/resources/images/event_06_image/event_04.jpg">
        <img src="/projectOhora/resources/images/event_06_image/event_06.jpg">&nbsp;
        <!-- 카카오톡 로그인 링크 -->
        <a href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_axjYfj%2Ffriend%3Fapi_ver%3D1.0%26kakao_agent%3Dsdk%252F1.40.14%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fwww.ohora.kr%26app_key%3D9ae31018e6a3df11adb5d4dfa9cc9d37%26referer%3Dhttps%253A%252F%252Fwww.ohora.kr%252Fevent%252Fevent3.html">
        <img src="/projectOhora/resources/images/event_06_image/kakao_btn.jpg"></a>

            
                <img src="/projectOhora/resources/images/event_06_image/22.jpg" alt="">
                <img src="/projectOhora/resources/images/event_06_image/웰컴 첫구매 젤램프 증정 이벤트 유의사항.jpg" alt="">
                <div style="width:550px; position:fixed; bottom:0; right:170px; z-index:10; height:45px; text-align:center;">
                
                <!-- 신상품 목록 이동링크 -->
                <a href="/product/list.html?cate_no=121&amp;page_num=1" style="display:block; background-color:#000; color:#fff; line-height:45px; font-size:18px;">디자인 보러가기</a>
            </div>
            
            <!-- go_top 버튼 -->
		   <div id="floating">
			    <div class="go_top">
			        <span class="icon"></span>
			    </div>
			</div>
            

            <script>
	         // go_top 버튼 스크립트
	            $(document).ready(function() {
	                // go_top 버튼 클릭 시 상단으로 부드럽게 이동
	                $('.go_top').on('click', function() {
	                    $('html, body').animate({ scrollTop: 0 }, 400);
	                    return false;
	                });
	                
	                // 스크롤 이벤트에 따라 go_top 버튼 표시
	                $(window).scroll(function() {
	                    if ($(this).scrollTop() > 200) {
	                        $('#floating').fadeIn();
	                    } else {
	                        $('#floating').fadeOut();
	                    }
	                });
	            });
            </script>

                </div>
            </div>
        </div>
<%@include file="footer.jsp" %>
</body>
</html>