<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	MVC Controller -> Handler Test Completed<br>
	<br>
	DB 연동 테스트<br>
	<table>
    <thead>
     <tr>
        <th width="20%">Deptno</th>
        <th width="55%">Dname</th>
        <th width="25%">loc</th>
     </tr>
   </thead>
   <tbody>
     <c:choose>
       <c:when test="${ empty list }">
         <tr>
            <td colspan="3">DEPT Table SELECT Failed</td>
         </tr>
       </c:when>
       <c:otherwise>
         <c:forEach items="${ list }" var="dvo">
           <tr>
             <td>${ dvo.deptno }</td>
             <td>${ dvo.dname }</td>
             <td>${ dvo.loc }</td>
           </tr>
         </c:forEach>
       </c:otherwise>
     </c:choose>
   </tbody>
  </table>
	
</body>
</html>