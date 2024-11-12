<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ohora 오호라 공식몰</title>
<link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath}/resources/cdn-main/event.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
</head>
<%@include file="../header.jsp" %>
<body>
<div class="wrap">
    <div class="eventDetail">
        <div class="title-block">
        </div>
       <div class="event-wrap">
            <p style="text-align: center;">
                  <img src="${contextPath}/resources/images/event_vipgift07_image/VIP-GIFT-SEASON-7-01.jpg" alt="">
                  <img src="${contextPath}/resources/images/event_vipgift07_image/VIP-GIFT-SEASON-7-02.jpg" alt="">
                  <img src="${contextPath}/resources/images/event_vipgift07_image/VIP-GIFT-SEASON-7-03.jpg" alt="">
                  <img src="${contextPath}/resources/images/event_vipgift07_image/VIP-GIFT-SEASON-7-04.jpg" alt="">
                  
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
            </p>
            </div>
            </div>
        </div>

</body>
<%@include file="../footer.jsp" %>
</html>