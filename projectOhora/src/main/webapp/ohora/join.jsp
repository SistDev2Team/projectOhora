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
<link rel="stylesheet" href="../resources/cdn-main/join.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>

<div id="wrap" style="padding-top: 156px !important;">
            <div id="container">
                <div id="contents">
                    


<div id="SMS_marketingCustom">
    <div class="SP_joinIntroContainer SP_layoutFix">
        <div class="SP_joinIntroinner">
            <!--div class="SP_joinIntro_Top">
            <div module="bannermanage2_display_16" class="login_bnr_zone">
            <a href="{$href}" alt="{$title}" {$target} >{$banner}</a>
            </div>		
            </div-->
            <div id="SMS_join_intro">
                <!--div df-banner-code="join-banner" hidden class="SP_joinIntro_Top">
                <div df-banner-clone class="login_bnr_zone">
                <a href="{#href}">{#item}</a>
                </div>
                </div-->	
                <div class="join_title">
                    카카오 간편 회원가입 시<br><b>무료배송과 3,000원 할인 쿠폰</b>을<br> 선물로 드려요.
                </div>	
                <div class="coupon_img"></div>
               
                <div class="SP_joinIntro_Cont">
                    <form id="member_form_1708730238" name="" action="/exec/front/Member/login/" method="post" target="_self" enctype="multipart/form-data">
<input id="returnUrl" name="returnUrl" value="https://www.ohora.kr/" type="hidden">
<input id="forbidIpUrl" name="forbidIpUrl" value="/" type="hidden">
<input id="certificationUrl" name="certificationUrl" value="/intro/adult_certification.html" type="hidden">
<input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
<input id="sProvider" name="sProvider" value="" type="hidden"><div class="xans-element- xans-member xans-member-login "><div class="btnJoin btnArea type1">
                            <a href="#none" class="btnKakao  sns_login_Btn" onclick="MemberAction.kakaosyncLogin('9ae31018e6a3df11adb5d4dfa9cc9d37')"><span>카카오로 <span>3</span>초 만에 시작하기</span></a>
                        </div>
<div class="displaynone">
                            <a href="/member/join.html" class="SP_cm_btn type2 SP_btn_black_bg">일반 회원가입</a>
                        </div>

<input id="returnUrl" name="returnUrl" value="/index.html" type="hidden">
<input id="forbidIpUrl" name="forbidIpUrl" value="/" type="hidden">
<input id="certificationUrl" name="certificationUrl" value="/intro/adult_certification.html" type="hidden">
<input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
<input id="sProvider" name="sProvider" value="" type="hidden"><div class="xans-element- xans-member xans-member-login SP_join_snsList btnArea type1 sns "><li class="lg_naver"><a href="#none" class="btnNaver  sns_login_Btn" onclick="MemberAction.snsLogin('naver', '%2Findex.html')"><span class="txt"><strong>네이버</strong> 간편가입</span></a></li>
<li class="normal_join"><a href="/member/join.html" class="SP_cm_btn SMSjoin_btnTD sns_login_Btn"><span class="txt">일반 회원가입</span></a></li>
<li class="lg_apple"><a href="#none" class="btnApple  sns_login_Btn" onclick="MemberAction.snsLogin('apple', '%2Findex.html')"><span>Apple로 로그인</span></a></li>
<!--li class="lg_kakao"><a href="#none" class=" sns_login_Btn" onclick="MemberAction.kakaosyncLogin('9ae31018e6a3df11adb5d4dfa9cc9d37')"><span class="txt"><strong>카카오</strong> 간편가입</span></a></li>
                            <li class="lg_facebook"><a href="#none" class=" sns_login_Btn" onclick="MemberAction.snsLogin('facebook', '%2Findex.html')"><span class="txt"><strong>페이스북</strong> 간편가입</span></a></li-->
</div>
<div class="SP_utility_Wrap">
                            <div class="SP_findinfo">
                                <li><a href="/member/login.html">기존회원 로그인</a></li>
                                <li><a href="/member/login.html?noMemberOrder&amp;returnUrl=%2Fmyshop%2Forder%2Flist.html">비회원 주문조회</a></li>
                            </div>
                        </div>
</div></form>
                </div>
            </div>
            <!--
            <div class="SP_joinIntro_Bottom">
            <div module="bannermanage2_display_17" class="login_bnr_zone">
            <a href="{$href}" alt="{$title}" {$target} >{$banner}</a>
            </div>				
            </div>
            -->
        </div>
    </div>
</div>
                </div>
            </div>
        </div>

</body>
<%@include file="footer.jsp" %>
</html>