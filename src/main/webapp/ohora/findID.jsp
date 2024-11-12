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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cdn-main/findID.css">
<script src="http://localhost/jspPro/resources/cdn-main/findID.js"></script>

</head>
<body>

<c:if test="${param.error == 'true'}">
    <script>
        alert("입력하신 정보로 가입된 회원 아이디는 존재하지 않습니다.");
    </script> 
</c:if>
    
<div class="container">
    <span class="title">ID FIND</span> 
    <span class="description">
        가입하신 방법에 따라 아이디 찾기가 가능합니다. 법인사업자 회원 또는 외국인 회원의 경우 법인명과 법인번호 또는 이름과 등록번호를 입력해 주세요.
    </span>
    <form class="form-container" id="findPwForm" action="${pageContext.request.contextPath}/findId.do" method="post">      
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
     
        <div class="label-container" style="top: 108px;">
            <span class="label-text" id="nameLabel">이름</span>
        </div>
        <input type="text" class="input-field" style="top: 108px;" name="name">
        
        <div class="label-container" id="findByEmail" style="top: 152px;">
            <span class="label-text">이메일로 찾기</span>
        </div>
        <input type="text" class="input-field" id="emailInput" style="top: 152px; left: 170px;" name="email">
        <div class="label-container" id="findByPhone" style="top: 152px; display: none;">
            <span class="label-text">휴대폰번호로 찾기</span>
        </div>
        <input type="text" class="input-field" id="phoneInput" style="top: 152px; left: 170px; display: none;" name="phone">
        <div class="button-container">
            <button type="submit" class="button-text">확인</button>
        </div>
    </form>
</div>
	
<script>

$(document).ready(function() {
    $('input[name="contact_method"]').change(function() {
        if ($('#email').is(':checked')) {
            $('#findByEmail').show();
            $('#emailInput').show();
            $('#findByPhone').hide();
            $('#phoneInput').hide();
        } else if ($('#phone').is(':checked')) {
            $('#findByEmail').hide();
            $('#emailInput').hide();
            $('#findByPhone').show();
            $('#phoneInput').show();
        }
    });

    // 이거 안해주면 파라미터값 안넘어간다!!!!
    $('#findPwForm').submit(function() {
        if ($('#email').is(':checked')) {
            $('#emailInput').prop('disabled', false);
        } else if ($('#phone').is(':checked')) {
            $('#phoneInput').prop('disabled', false);
        }
    });
});
</script>
	
	
	
</body>
</html>