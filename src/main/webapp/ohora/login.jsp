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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cdn-main/login.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>

    
    <c:if test="${param.loginCheck == 'fail'}">
    <script>
        alert("회원만 접근권한이 있습니다.");
    </script>
</c:if>
   
	<c:if test="${param.error == 'username'}">
    <script>
        alert("존재하지 않는 아이디입니다.");
    </script>
	</c:if>
	
	<c:if test="${param.error == 'password'}">
	    <script>
	        alert("비밀번호가 일치하지 않습니다.");
	    </script>
	</c:if>
	
	<c:if test="${param.error == 'unknown'}">
	    <script>
	        alert("로그인 중 문제가 발생했습니다. 다시 시도해주세요.");
	    </script>
	</c:if>
		
    <div id="wrap" style="padding-top: 156px !important">
      <div id="container">
        <div id="contents">
          <div id="SMS_login_warp" class="login_container SP_layoutFix">
          
             <form
                  id="member_form"
                  name="member_form"
                  action="${pageContext.request.contextPath}/login.do"
                  method="post"
                  target="_self">
                
              <input
                id="returnUrl"
                name="returnUrl"
                value="https://www.ohora.kr/"
                type="hidden"
              />
              <input
                id="forbidIpUrl"
                name="forbidIpUrl"
                value="/"
                type="hidden"
              />
              <input
                id="certificationUrl"
                name="certificationUrl"
                value="/intro/adult_certification.html"
                type="hidden"
              />
              <input
                id="sIsSnsCheckid"
                name="sIsSnsCheckid"
                value=""
                type="hidden"
              />
              <input id="sProvider" name="sProvider" value="" type="hidden" />
              <div id="" class="xans-element- xans-member xans-member-login">
                <!--
			$defaultReturnUrl = /index.html
		-->
                <!--주문조회-->
                <div class="loginWrap">
                  <div class="tab eTab displaynone">
                    <div class="KJtabBox">
                      <ul>
                        <li class="selected">
                          <a href="#member" id="login_order_user">회원</a>
                        </li>
                        <li>
                          <a href="#noMember" id="login_order_notuser"
                            >비회원</a
                          >
                        </li>
                      </ul>
                    </div>
                  </div>

                  <div
                    df-banner-code="login-banner"
                    class="loginBnr displaynone df-bannermanager df-bannermanager-login-banner"
                  >
                    <div df-banner-clone="">
                      <a href="#none"
                        ><img
                          src="/web/upload/NNEditor/20201221/538e6d1a805ea2edea743e38fdb35f8f.jpg"
                          alt="login_banner_img"
                      /></a>
                    </div>
                  </div>
                  <div class="titleArea">
                    <p>
                      회원가입 후 첫 구매시, <br /><strong
                        >오호라 젤 램프를 선물</strong
                      >로 드립니다.
                    </p>
                    <p>(18,000원 상당)</p>
                  </div>
                  <fieldset>
                    <div class="formBox">
                      <div class="form login">
                        <div>
                          <span class="">아이디 입력</span>
                          <input
                            id="member_id"
                            name="member_id"
                            fw-filter="isFill"
                            fw-label="아이디"
                            fw-msg=""
                            class="inputTypeText"
                            placeholder=""
                            value=""
                            type="text"
                          />
                          <span class="reset_id"></span>
                        </div>
                        <!-- 확인 필요 -->
                        <div id="aaaaaa"></div>
                        <div>
                          <span class="">비밀번호 입력</span>
                          <input
                            id="member_passwd"
                            name="member_passwd"
                            fw-filter="isFill&amp;isMin[4]&amp;isMax[16]"
                            fw-label="패스워드"
                            fw-msg=""
                            autocomplete="off"
                            value=""
                            type="password"
                            placeholder=""
                          />
                          <span class="show_pw"></span>
                        </div>
                      </div>
                      <div class="option">
                        <span class="auto"></span>
                        <span class="save"></span>
                        <span class="ssl"
                          ><img
                            src="../ohora_html/login_1.png"
                            alt="보안접속"
                          /><em>보안접속</em></span
                        >
                      </div>

                      <div class="btnArea type1">
                         <button type="submit" class="btnSubmit SMSlogin_btnTD">
                          로그인
                        </button>
                      </div>

                      <div class="btnArea type1">
                        <a
                          href="#none"
                          class="btnKakao sns_login_Btn"
                          onclick="MemberAction.kakaosyncLogin('9ae31018e6a3df11adb5d4dfa9cc9d37')"
                          id="a"
                          ><span>카카오로 3초 만에 시작하기</span></a
                        >
                      </div>

                      <div class="btnArea type1 sns">
                        <!-- 6.0클래스 icon -->
                        <a
                          href="#none"
                          class="btnNaver sns_login_Btn"
                          onclick="MemberAction.snsLogin('naver', '%2F')"
                          ><span>네이버로 로그인</span></a
                        >
                        <a
                          href="#none"
                          class="btnFacebook sns_login_Btn"
                          onclick="MemberAction.snsLogin('facebook', '%2F')"
                          ><span>페이스북으로 로그인</span></a
                        >
                        <a
                          href="#none"
                          class="apple_login btnApple"
                          onclick="MemberAction.snsLogin('apple', '%2F')"
                          ><span>Apple로 로그인</span></a
                        >
                        <!--
                        <a href="#none" class="btnGoogle displaynone" onclick=""><span>구글 로그인</span></a>
                        <a href="#none" class="btnLine displaynone" onclick=""><span>라인 로그인</span></a>
                        -->
                      </div>

                      <div class="btnArea typeLogin">
                        <a
                          href="${pageContext.request.contextPath}/findIdstart.do"
                          class="btnLogin SMS_login_id SMSloginID_btnTD"
                          id="aa"
                          ><b class="SMS_icon"></b>아이디 찾기</a>
                         
                        <a href="${pageContext.request.contextPath}/findPwstart.do"
                        
                          class="btnLogin SMS_login_pw SMSloginPW_btnTD"
                          
                          id="aaa">
                          
                        <b class="SMS_icon"></b>비밀번호 찾기</a>
                        
                        
                        <a
                          href="/member/login.html?noMemberOrder&amp;returnUrl=%2Fmyshop%2Forder%2Flist.html"
                          class="btnLogin SMS_login_id_join SMSjoin_btnTD"
                          id="aaaa"
                          ><b class="SMS_icon"></b>비회원 주문조회</a
                        >
                      </div>

                      <div class="btnJoin btnArea type1 join_btn">
                        <a
                          href="/member/join_intro.html"
                          class="btnEm SMSjoin_btnTD wh"
                          id="aaaaa"
                          >회원가입 후 혜택받기</a
                        >
                      </div>
                      <div class="btnArea type1 guest_order displaynone">
                        <a class="btnEm SMSnomem_btnBuyTD wh">비회원 구매</a>
                      </div>
                      <div class="nonmember_pop_container">
                        <div class="nonmember_pop">
                          <div class="nonmember_con">
                            <p class="fontB">
                              비회원으로 구매하시면<br /><strong
                                >18,000원 상당의 젤램프 증정</strong
                              >이 불가합니다.
                            </p>
                            <span>구매하시겠습니까?</span>
                          </div>
                          <div class="nonmember_btn_wrap">
                            <a
                              href="/member/join_intro.html"
                              class="kakao_regist"
                              >젤램프 받고 구매</a
                            >
                            <a href="" onclick="" class="nonmember_buy"
                              >바로 구매</a
                            >
                          </div>
                        </div>
                      </div>
                    </div>
                  </fieldset>
                </div>
                <!--//주문조회-->
              </div>
            </form>
          </div>

          <!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
          <!---- snappush  start contact mail: support@snapvi.co.kr --->
          <div id="spm_page_type" style="display: none">sq_login_page</div>
          <script
            async=""
            type="text/javascript"
            src="//cdn.snapfit.co.kr/js/spm_f_common.js"
            charset="utf-8"
          ></script>
          <div id="spm_banner_main"></div>
          <!---- snappush  end -->
        </div>
      </div>
    </div>
  </body>
</html>
