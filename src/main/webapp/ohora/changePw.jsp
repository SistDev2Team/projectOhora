<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    String userId = request.getParameter("userId");
    request.setAttribute("userId", userId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
.cancel-button-container {
    width: 500px;
    height: 50px;
    position: absolute;
    top: 262px;  /* 비밀번호 변경 버튼 바로 아래 */
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
	font-size: 12px;
	line-height: 1.5;
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
	top: 10px;
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
	height: 60px;
	position: absolute;
	top: 200px;
	background-color: rgba(0, 0, 0, 1);
	border: 1px solid rgba(0, 0, 0, 1);
	display: flex;
	align-items: center;
	justify-content: center;
}

.button-container button {
	background-color: transparent;
	border: none;
	color: rgba(255, 255, 255, 1);
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 18px;
	cursor: pointer;
}
</style>

</head>
<body>

<c:if test="${param.message == 'pwChanged'}">
    <script>
        alert("비밀번호가 성공적으로 변경되었습니다.");
        location.href = '${pageContext.request.contextPath}/loginHandlerstart.do';
    </script>
</c:if>

<div class="container"></div>
<span class="title">PASSWORD FIND</span> 
<span class="description">
    비밀번호 재설정
</span>

<form  class="form-container" id="changePwForm" action="${pageContext.request.contextPath}/changePw.do" method="post">
    <!-- 아이디 입력란 (읽기 전용) -->
    <div class="label-container">
        <span class="label-text">아이디</span>
    </div>
    
 
    <input type="text" class="input-field" style="top: 10px;" name="user_id" value="${userId}" readonly>
  
 
   <!-- 새 비밀번호 입력란 -->
    <div class="label-container" style="top: 55px;">
        <span class="label-text">새 비밀번호</span>
    </div>
    <input type="password" class="input-field" style="top: 55px;" name="new_password" placeholder="새 비밀번호를 입력하세요">

    <!-- 비밀번호 안내 메시지 -->
    <div class="label-text" style="position: absolute; top: 95px; left: 170px; font-size: 10px;">
        (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)
    </div>

    <!-- 새 비밀번호 확인 입력란 -->
    <div class="label-container" style="top: 115px;">
        <span class="label-text">새 비밀번호 확인</span>
    </div>
    <input type="password" class="input-field" style="top: 115px;" name="confirm_password" placeholder="새 비밀번호를 확인하세요">

    <!-- 버튼 영역 -->
    <div class="button-container">
        <button type="submit" class="button-text" onclick="return confirmChange()">비밀번호 변경</button>
    </div>
    <div class="cancel-button-container">
    <button type="button" class="cancel-button" onclick="confirmCancel()">취소</button>
</div>
</form>

<script>
    // 비밀번호는 암호화 해서 저장할꺼기때문에 프론트 측에서 유효성검사를 해주고 넘어가는게 좋다.
    document.querySelector('.form-container').addEventListener('submit', function(event) {
        // 새 비밀번호와 확인 비밀번호 비교
        var newPassword = document.querySelector('input[name="new_password"]').value;
        var confirmPassword = document.querySelector('input[name="confirm_password"]').value;

        if (newPassword !== confirmPassword) {
            alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
            event.preventDefault();
            return;
        }

        //
        var passwordPattern = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,16}$/;
        if (!passwordPattern.test(newPassword)) {
            alert("비밀번호는 영문 대소문자/숫자/특수문자 중 2가지 이상 조합하고 8자에서 16자 사이여야 합니다.");
            event.preventDefault();
            return;
        }
    });
    
    function confirmChange() {
       
        return confirm("비밀번호를 변경하시겠습니까?");
    }
    
    function confirmCancel() {
        // confirm 창을 띄우고, 확인 버튼을 누르면 로그인 페이지로 이동
        if (confirm("비밀번호 변경을 취소하시겠습니까?")) {
            window.location.href = '${pageContext.request.contextPath}/loginHandlerstart.do';
        }
    }
</script>



</body>
</html>