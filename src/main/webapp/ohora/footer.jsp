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
<link rel="stylesheet" href="../resources/cdn-main/header.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<body>
   
    <!-- 아래 필수 -->
    <div style="margin-top: 12%"></div>
    <div class="footer">
      <div class="chat">
        <div class="top_left">
          <span class="kakao_chat">
            <a href="https://www.ohora.kr/etc/CS.html"
              >카카오톡 상담 (@ohora)</a
            >
          </span>
          <span class="center_chat">
            <a
              href="https://www.ohora.kr/member/login.html?returnUrl=%2Fboard%2Fconsult%2Flist.html%3Fboard_no%3D9"
              >게시판 상담 (1:1 문의하기)</a
            >
          </span>
        </div>
        <div class="top_right">
          <a href="https://www.instagram.com/ohora_official/" target="_blank">
            <img src="https://www.ohora.kr/web/upload/common/ft_insta.png" />
          </a>
          <a href="https://www.facebook.com/ohora.official" target="_blank">
            <img src="https://www.ohora.kr/web/upload/common/ft_facebook.png" />
          </a>
          <a href="https://pf.kakao.com/_axjYfj" target="_blank">
            <img src="https://www.ohora.kr/web/upload/common/ft_kakao.png" />
          </a>
          <a
            href="https://www.youtube.com/channel/UCV72a2QWRpEZjZYkWjXHZWQ"
            target="_blank"
          >
            <img src="https://www.ohora.kr/web/upload/common/ft_youtube.png" />
          </a>
          <a
            href="https://post.naver.com/my.nhn?memberNo=47439708"
            target="_blank"
          >
            <img src="https://www.ohora.kr/web/upload/common/ft_naver.png" />
          </a>
        </div>
      </div>
      <br />
      <div class="line"></div>
      <div class="center_menu">
        <div class="list" id="a">
          주문
          <div class="sub" id="aa">
            <a
              href="https://www.ohora.kr/member/login.html?returnUrl=/myshop/order/list.html"
              >주문·배송내역</a
            ><br /><br />
            <a
              href="https://www.ohora.kr/member/login.html?returnUrl=/myshop/order/list.html?mode=cs"
              >취소/교환/반품내역</a
            ><br /><br />
            <a href="https://www.ohora.kr/order/basket.html">장바구니</a>
          </div>
        </div>
      </div>
      <div class="line"></div>
      <div class="center_menu">
        <div class="list" id="b">
          회원
          <div class="sub" id="bb">
            <a href="#">신규 혜택</a><br /><br />
            <a href="#">멤버십 혜택</a><br /><br />
            <a href="${pageContext.request.contextPath}/oho_mypage.do">마이페이지</a><br /><br />
            <a href="#">적립금·쿠폰내역</a><br /><br />
            <a href="#">회원정보변경</a>
          </div>
        </div>
      </div>
      <div class="line"></div>
      <div class="center_menu">
        <div class="list" id="c">
          서비스
          <div class="sub" id="cc">
            <a href="${contextPath}/board/faqlist.do">FAQ</a><br /><br />
            <a href="https://oe9lp.channel.io/home">상담톡</a><br /><br />
            <a href="${contextPath}/howto.do?howto=main">사용법</a><br /><br />
            <a href="${contextPath}/board/noticelist.do"">공지사항</a>
          </div>
        </div>
      </div>
      <div class="line"></div>
      <div class="company">
        <p>
          대표 : 유기현<br />
          회사 : 주식회사 글루가<br />
          주소 : 충남 천안시 서북구 2공단8길 45 2층 (업성동)<br />
          사업자등록번호 : 722-87-00061<br />
          통신판매업신고번호 : 2017-충남천안-1055호 사업자 정보 확인<br />
          개인정보처리담당자 : 유태규<br />
          고객센터 : 1566-0554<br />
          평일 09:00~18:00 (Lunch 12:30~13:30)<br />
          영업문의 : ohora_official@ohora.com<br />
          제휴 & 파트너십 문의 : ohora_partnership@ohora.com<br />
          글로벌 제휴 & 파트너십 문의 : Global-Business@ohora.com
        </p>
      </div>
      <div class="line"></div>
      <div class="bottom">
        <span class="a"><a href="${contextPath}/ohora_Fend_brand4.do">브랜드 소개</a></span>
        <span class="b"><a href="#">이용약관</a></span>
        <span class="c"><a href="#">개인정보처리방침</a></span>
      </div>
    </div>
  </body>
  <script>
  let sw = true;
  
  let a = document.querySelector("#a");
  let aa = document.querySelector("#aa");
  a.onclick = function(){
     if(sw){
        aa.style.display = "block";
     }else if(!sw){
        aa.style.display = "none";
     }
     sw = !sw;
  }
  
  let b = document.querySelector("#b");
  let bb = document.querySelector("#bb");
  b.onclick = function(){
     if(sw){
        bb.style.display = "block";
     }else if(!sw){
        bb.style.display = "none";
     }
     sw = !sw;
  }
  
  let c = document.querySelector("#c");
  let cc = document.querySelector("#cc");
  c.onclick = function(){
     if(sw){
        cc.style.display = "block";
     }else if(!sw){
        cc.style.display = "none";
     }
     sw = !sw;
  }
</script>
</html>
