<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

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
	font-size: 12px;
	line-height: 1.5;
}

.form-container {
	width: 500px;
	height: 296px;
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

.dropdown-select {
	width: 330px;
	height: 34px;
	position: absolute;
	left: 170px;
	top: 10px;
	font-size: 12px;
	font-family: 'Noto Sans KR', sans-serif;
	border: 1px solid rgba(221, 221, 221, 1);
	background-color: rgba(255, 255, 255, 1);
	cursor: pointer;
	box-sizing: border-box;
}

.radio-group {
	display: flex;
	align-items: center;
	gap: 5px;
	position: absolute;
	left: 0px;
	top: 55px; 
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
	height: 60px;
	position: absolute;
	top: 236px;
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

<c:if test="${param.error == 'true'}">
    <script>
        alert("입력하신 정보로 가입된 회원 아이디는 존재하지 않습니다.");
    </script> 
</c:if>

 <div class="container"></div>
        <span class="title">PASSWORD FIND</span> 
        <span class="description">
            가입하신 회원 유형에 따라 비밀번호 찾기가 가능합니다.
        </span>
        <form class="form-container" id="findPwForm" action="${pageContext.request.contextPath}/findPw.do" method="post">
            <div class="label-container">
                <span class="label-text">회원유형</span>
            </div>
            <select class="dropdown-select" name="membership_type">
                <option value="개인회원">개인회원</option>
                <option value="개인사업자 회원">개인사업자 회원</option>
                <option value="법인사업자 회원">법인사업자 회원</option>
                <option value="외국인 회원">외국인 회원</option>
            </select>

            <div class="radio-group">
                <input type="radio" id="email" name="contact_method" value="email" checked="checked">
                <label for="email" class="radio-label">이메일</label>
                <input type="radio" id="phone" name="contact_method" value="phone">
                <label for="phone" class="radio-label">휴대폰번호</label>
            </div>

            <div class="label-container" style="top: 95px;">
                <span class="label-text">아이디</span>
            </div>
            <input type="text" class="input-field" style="top: 95px;" name="user_id">

            <div class="label-container" style="top: 135px;">
                <span class="label-text">이름</span>
            </div>
            <input type="text" class="input-field" style="top: 135px;" name="name">

			<div class="label-container" id="findByEmail" style="top: 175px;">
			<span class="label-text">이메일로 찾기</span>
			</div>
			<input type="text" class="input-field" id="emailInput" style="top: 175px;" name="email">
						
			<div class="label-container" id="findByPhone" style="top: 175px; display: none;">
			    <span class="label-text">휴대폰번호로 찾기</span>
			</div>			            
            <input type="text" class="input-field" id="phoneInput" style="top: 175px; display: none;" name="phone">
            
            <div class="button-container">
                <button type="submit" class="button-text">확인</button>
            </div>
        </form>
        
<script>
    document.getElementById('email').addEventListener('change', function() {
        if (this.checked) {
            document.getElementById('findByEmail').style.display = 'block';
            document.getElementById('emailInput').style.display = 'block';
            document.getElementById('findByPhone').style.display = 'none';
            document.getElementById('phoneInput').style.display = 'none';
        }
    });

    document.getElementById('phone').addEventListener('change', function() {
        if (this.checked) {
            document.getElementById('findByEmail').style.display = 'none';
            document.getElementById('emailInput').style.display = 'none';
            document.getElementById('findByPhone').style.display = 'block';
            document.getElementById('phoneInput').style.display = 'block';
        }
    });
    
    document.getElementById('findPwForm').addEventListener('submit', function(event) {
        
        if (document.getElementById('email').checked) {
            document.getElementById('emailInput').disabled = false;
            /* console.log("이메일 입력란 활성화: " + document.getElementById('emailInput').value); */
        } else if (document.getElementById('phone').checked) {
            document.getElementById('phoneInput').disabled = false;
            /* console.log("전화번호 입력란 활성화: " + document.getElementById('phoneInput').value); */
        }
    });

</script>
	