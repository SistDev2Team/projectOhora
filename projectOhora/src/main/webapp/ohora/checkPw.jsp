<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- request로 전달된 user_id 값을 세션에 저장해서 사용하자 -->
<%
    String userId = (String) request.getAttribute("user_id");
    if (userId != null) {
        session.setAttribute("user_id", userId);
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>본인확인 인증</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
    <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville|Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="google" content="notranslate">

    <style>
        .container {
            overflow: hidden;
            width: 1920px;
            height: 670px;
            position: absolute;
        }

        .title {
            color: rgba(0, 0, 0, 1);
            width: 138.04px;
            height: 37px;
            position: absolute;
            left: 811.84px;
            top: 130px;
            font-family: 'Libre Baskerville', serif;
            text-align: center;
            font-size: 30px;
            white-space: nowrap;
            font-weight: bold;
        }

        .description {
            color: rgba(119, 119, 119, 1);
            width: 496.52px;
            height: 35px;
            position: absolute;
            left: 711.84px;
            top: 205px;
            font-family: 'Noto Sans KR', sans-serif;
            text-align: center;
            font-size: 18px;
            line-height: 1.5;
            font-weight: bold;
        }

        .form-container {
            width: 500px;
            height: auto;
            position: absolute;
            left: 710px;
            top: 261px;
        }

        .label-container {
            background-color: rgba(241, 241, 241, 1);
            width: 160px;
            height: 34px;
            position: absolute;
            display: flex;
            align-items: center;
            padding-left: 10px;
        }

        .label-text {
            color: rgba(0, 0, 0, 1);
            font-family: 'Noto Sans KR', sans-serif;
            text-align: left;
            font-size: 12px;
            line-height: 1.5;
        }

        .radio-group {
            display: flex;
            align-items: center;
            gap: 5px;
            position: absolute;
            left: 170px;
            top: 0;
        }

        .radio-label {
            color: rgba(0, 0, 0, 1);
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 12px;
            line-height: 1.5;
        }

        .input-field {
            width: 330px;
            height: 34px;
            position: absolute;
            left: 170px;
            border: 1px solid rgba(221, 221, 221, 1);
            padding: 0 10px;
            font-size: 12px;
            font-family: 'Noto Sans KR', sans-serif;
            box-sizing: border-box;
        }

        .button-container {
            width: 500px;
            height: 50px;
            position: absolute;
            top: 250px;
            background-color: rgba(0, 0, 0, 1);
            border: 1px solid rgba(0, 0, 0, 1);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .button-container button {
            background-color: #000000;
            border: none;
            color: rgba(255, 255, 255, 1);
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 18px;
            cursor: pointer;
        }

        .cancel-button-container {
            width: 500px;
            height: 50px;
            position: absolute;
            top: 302px;
            background-color: #fff;
            border: 1px solid #ccc;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .cancel-button {
            background-color: transparent;
            border: none;
            color: rgba(0, 0, 0, 1);
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="container"></div>
<span class="title">PASSWORD FIND</span> 
<span class="description">본인확인 인증</span>

<!-- 이제 jsp간 페이지 이동만 있을꺼니까 form태그는 필요가 없지  -->
<%-- <form class="form-container" action="${pageContext.request.contextPath}/checkPw.do" method="post">
<form class="form-container" action="${pageContext.request.contextPath}/changePw.jsp"> --%>

	<!-- user_id 숨겨서 가지고 가기!!! -> 세션에 저장하는 방식으로 변경 -->
    <%-- <input type="hidden" name="user_id" value="${user_id}"> --%>

    <form class="form-container">
    <!-- 본인확인 인증 라디오 버튼 -->
    <div class="label-container" style="top: 10px;">
        <span class="label-text">본인확인 인증</span>
    </div>
    
    <div class="radio-group" style="top: 10px;">
    <input type="radio" id="phone" name="verification_method" value="phone" 
        ${contact_method == 'phone' ? 'checked="checked"' : ''}>
    <label for="phone" class="radio-label">휴대폰</label>
    
    <input type="radio" id="email" name="verification_method" value="email" 
        ${contact_method == 'email' ? 'checked="checked"' : ''}>
    <label for="email" class="radio-label">이메일</label>
    </div>


    <!-- contact 입력란 -->
    <div class="label-container" style="top: 55px;">
    <c:if test="${contact_method == 'phone'}">
        <span class="label-text">휴대폰 번호</span>
    </c:if>
    <c:if test="${contact_method == 'email'}">
        <span class="label-text">이메일</span>
    </c:if>
    </div>

<input type="text" class="input-field" style="top: 55px;" name="phone_number" value="${contact}" readonly>
<button type="button" class="input-field" style="top: 55px; left: 510px; width: 100px;" onclick="sendVerificationCode()">인증번호 받기</button>
    

    <!-- 인증번호 입력란 -->
    <div class="label-container" style="top: 115px;">
        <span class="label-text">인증번호</span>
    </div>
    <input type="text" class="input-field" style="top: 115px;" name="verification_code" placeholder="인증번호를 입력하세요">

    <!-- 안내 문구 -->
    <div class="label-text" style="position: absolute; top: 165px; left: 170px; font-size: 10px;">
        1회 발송된 인증번호의 유효 시간은 3분이며,<br>
        1회 인증번호 발송 후 30초 이후에 재전송이 가능합니다.
    </div>

    <!-- 확인 버튼 -->
    <!-- <div class="button-container">
        <button type="submit" class="button-text">확인</button>
    </div> -->
    
    <!-- checkPw.jsp -->
<div class="button-container">
    <button type="button" class="button-text" onclick="location.href='${pageContext.request.contextPath}/ohora/changePw.jsp'">확인</button>
</div>
    

    <!-- 취소 버튼 -->
    <div class="cancel-button-container">
        <button type="button" class="cancel-button" onclick="window.location.href='${pageContext.request.contextPath}/ohora/findId.jsp'">취소</button>
    </div>
    </form>

<script>
    function sendVerificationCode() {
        alert("인증번호가 전송되었습니다.");
    }
</script>


</body>
</html>