<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- request로 전달된 userId 값을 다음 페이지에서도 사용하자! -->
<%
    String userId = (String) request.getAttribute("userId");
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
    
	    .disabled-button {
	    background-color: #ccc; /* 비활성화된 것처럼 보이도록 회색 설정 */
	    cursor: not-allowed; /* 클릭할 수 없음을 나타내는 커서 */
	    /* pointer-events: none; 클릭 이벤트 방지 */
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
    
    <!-- 확인 버튼 -->	
    <button type="button" class="input-field" style="top: 115px; left: 510px; width: 100px;" onclick="verifyCode()">확인</button>
	
    <!-- 안내 문구 -->
    <div class="label-text" style="position: absolute; top: 165px; left: 170px; font-size: 10px;">
        1회 발송된 인증번호의 유효 시간은 3분이며,<br>
        1회 인증번호 발송 후 30초 이후에 재전송이 가능합니다.
    </div>


    
<!-- checkPw.jsp로 이동 해야댐 -->
    
<div class="button-container">
	 
     <%--  <button type="button" id="confirmButton" 
      onclick="location.href='${pageContext.request.contextPath}/checkPw.do?userId=${userId}'" disabled>확인</button> --%>
      
      <button type="button" id="confirmButton" class="disabled-button" onclick="confirmAction()">확인</button>
      
      
</div>




    

    <!-- 취소 버튼 -->
    <div class="cancel-button-container">
        <button type="button" class="cancel-button" onclick="window.location.href='${pageContext.request.contextPath}/ohora/findId.jsp'">취소</button>
    </div>
    </form>

<script>

function sendVerificationCode() {
	
	
	
    const verificationMethod = document.querySelector('input[name="verification_method"]:checked').value; //라디오 버튼 값 받아오기
    
    const contact = document.querySelector('input[name="phone_number"]').value; // 사용자 contact 입력값
    
    if (!contact) {
        alert("연락처를 입력해주세요.");
        return;
    }
    
    // 버튼 중복 클릭 방지: 버튼 비활성화 후 30초 뒤 다시 활성화
    const button = document.querySelector('button[onclick="sendVerificationCode()"]');
    button.disabled = true; // 버튼 비활성화
    setTimeout(() => {
        button.disabled = false; // 30초 후 다시 활성화
    }, 30000); // 30초

    $.ajax({
        url: "${pageContext.request.contextPath}/sendVerificationCode.ajax",
        type: "GET",
                //phone or email   
        data: { verification_method: verificationMethod, contact: contact },
        dataType: "json",
        //call back
        success: function(response) {
        	
        	//{"status":"success", "message":"인증번호가 전송되었습니다."}     	
            if (response.status === "success") {
            	
                alert(response.message); // 인증번호 전송 성공
            } else {
                alert("인증번호 전송 실패: " + response.message); // 오류
            }
        },
        //callback
        error: function() {
            alert("인증번호 전송 중 오류가 발생했습니다.");
        }
    });
}

function verifyCode() {
	
    const verificationCode = document.querySelector('input[name="verification_code"]').value;

    $.ajax({
        url: "${pageContext.request.contextPath}/verifyCode.ajax",
        type: "POST",
        data: { verification_code: verificationCode },
        dataType: "json",
        success: function(response) {
            if (response.status === "success") {
            	
                alert("인증번호가 확인 되었습니다");               
                enableConfirmButton(); //버튼 활성화  
                
            } else if (response.status === "expired") {
                alert("인증번호가 만료되었습니다. 다시 요청하세요.");
            } else {
                alert("인증번호가 일치하지 않습니다.");
            }
        },
        error: function() {
            alert("인증번호 확인 중 오류가 발생했습니다.");
        }
    });
}

function confirmAction() {
    
	 if (document.getElementById("confirmButton").classList.contains("disabled-button")) {
	        alert("인증번호를 먼저 확인해주세요.");
	    } else {
	        
	        location.href = `${pageContext.request.contextPath}/checkPw.do?userId=${userId}`;
	    }
    
}

function enableConfirmButton() {
	const confirmButton = document.getElementById("confirmButton");
    confirmButton.classList.remove("disabled-button");
}
</script>


</body>
</html>