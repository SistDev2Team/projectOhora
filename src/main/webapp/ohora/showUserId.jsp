<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>아이디 찾기 완료</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cdn-main/showUserId.css">
    <style>
		    .container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 100vw;
    height: 100vh;
    position: relative;
    overflow: hidden;
}

.title {
    color: rgba(0, 0, 0, 1);
    font-family: 'Libre Baskerville', serif;
    text-align: center;
    font-size: 30px;
    margin-bottom: 20px;
}

.description {
    color: rgba(119, 119, 119, 1);
    font-family: 'Noto Sans KR', sans-serif;
    text-align: center;
    font-size: 12px;
    line-height: 1.5;
    margin-bottom: 30px;
    max-width: 600px;
}

.button-container {
    width: 200px;
    height: 60px;
    background-color: rgba(0, 0, 0, 1);
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
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
    <div class="container">
        <div class="title">아이디 찾기 완료</div>      
			        <div class="description">
			         <c:if test="${not empty userId}">
                     회원님의 아이디는: ${userId} 입니다
                    </c:if>
			        </div>			            
      <div class="button-container">
    <button onclick="location.href='${pageContext.request.contextPath}/loginHandlerstart.do'">로그인 하러 가기</button>
</div>
      
    </div>
</body>
</html>