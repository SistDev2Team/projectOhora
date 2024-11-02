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
<link rel="stylesheet" href="../resources/cdn-main/oho_memInfo.css">

<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>
    <div id="container">
        <div id="contents">

            <div class="subSection">
                <h2 class="subTitle">
                    <span>member modify</span>
                </h2>
            </div>

            <div id="member-edit-cont">
                <div class="mem-edit-layout">
                    <form action="" method="post" id="editForm" name="editForm" >
                        <!-- form 상단에 엄청난 인풋들이 히든으로 숨겨져 있으나 용도를 알 수 없음(아마 암호화 관련?). 생략 -->


                        <div class="member-edit-wrap">
                         <!-- 멤버 에딧 랩 == xans-element- xans-member xans-member-edit -->

                            <div class="edit-table-wrap">

                                <div class="edit-table-top-wrap">
                                    <div class="table-title">기본정보</div>
                                    <div class="pilsu-wrap">
                                        <span class="th-required" style="font-size: 16px;">*</span>
                                        <span class="required">필수입력사항</span>
                                    </div>
                                </div>

                                <div class="memeber-info-container">

                                    <table>
                                        <colgroup>
                                            <col style="width:200px;">
                                            <col style="width:auto;">
                                        </colgroup>

                                        <tbody>
                                            <tr>
                                                <th scope="row">
                                                    <!-- 행으로 보는 표라는 뜻 -->
                                                    <span class="th-title">아이디</span>
                                                    <span class="th-required">*</span>
                                                </th>
                                                <td>
                                                    <input type="text" readonly="readonly" id="member-id" name="member-id" >
                                                    <span class="SP_stxt">(영문소문자/숫자, 4~16자)</span>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">비밀번호</span>
                                                    <span class="th-required">*</span>
                                                </th>
                                                <td>
                                                    <input type="password"  id="passwd" name="passwd" maxlength="16">
                                                    <div class="pw-guideBox-wrap">
                                                        <div class="pw-guideBox">
                                                            <div class="pw-guide-content">
                                                                <div class="pw-guide-tit">※ 비밀번호 입력 조건</div>
                                                                <div class="pw-guide-list">
                                                                    - 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자<br>
                                                                    - 입력 가능 특수문자 <br>&nbsp;&nbsp;&nbsp;  ~ ` ! @ # $ % ^ ( ) * _ - = { } [ ] | ; : &lt; &gt; , . ? /<br>
                                                                    - 공백 입력 불가능<br>
                                                                    - 연속된 문자, 숫자 사용 불가능<br>
                                                                    - 동일한 문자, 숫자를 반복해서 사용 불가능<br>
                                                                    - 아이디 포함 불가능               
                                                                    <!-- 입력 창에 포커스가면 튀어나옴 -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="pw-guide2">
                                                        (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                               <th scope="row">
                                                <span class="th-title">비밀번호 확인</span>
                                                <span class="th-required">*</span>
                                               </th> 
                                               <td>
                                                    <input type="password" id="passwd-confirm" name="passwd-confirm" maxlength="16">
                                                    <span id="pwConfirmMsg" class=""></span>
                                                    <!-- 이 span은 비밀번호 확인 다르게 입력하면 class에 error 추가되면서 글 튀어나옴 -->
                                               </td>
                                            </tr>

                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">이름</span>
                                                    <span class="th-required">*</span>
                                                </th>
                                                <td>
                                                    <input type="text" id="name" name="name" maxlength="30" readonly="readonly" value="박준용">
                                                </td>
                                            </tr>

                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">주소</span>
                                                    <span class="th-required displayNone">*</span>
                                                </th>
                                                <td>
                                                    <div class="address">
                                                        <input type="text" readonly="readonly" maxlength="14" id="postcode1" name="postcode1" >
                                                        <a href="#" class="postBtn" onclick="addrFinder()" id="postBtn">우편번호</a>

                                                    </div>

                                                    <div class="address">
                                                        <input type="text" readonly="readonly" id="addr1" name="addr1">
                                                        <span class="addrguide">기본주소</span>
                                                    </div>
                                                    <div class="address">
                                                        <input type="text" id="addr2" name="addr2">
                                                        <span class="addrguide">나머지주소</span>
                                                        <span class="addrguide">(선택입력가능)</span>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">일반전화</span>
                                                    <span class="th-required">*</span>
                                                </th>
                                                <td>
                                                    <select id="phone1" name="phone[]">
                                                        <option value="02">02</option>
                                                        <option value="031">031</option>
                                                        <option value="032">032</option>
                                                        <option value="033">033</option>
                                                        <option value="041">041</option>
                                                        <option value="042">042</option>
                                                        <option value="043">043</option>
                                                        <option value="044">044</option>
                                                        <option value="051">051</option>
                                                        <option value="052">052</option>
                                                        <option value="053">053</option>
                                                        <option value="054">054</option>
                                                        <option value="055">055</option>
                                                        <option value="061">061</option>
                                                        <option value="062">062</option>
                                                        <option value="063">063</option>
                                                        <option value="064">064</option>
                                                        <option value="0502">0502</option>
                                                        <option value="0503">0503</option>
                                                        <option value="0504">0504</option>
                                                        <option value="0505">0505</option>
                                                        <option value="0506">0506</option>
                                                        <option value="0507">0507</option>
                                                        <option value="070">070</option>
                                                        <option value="010">010</option>
                                                        <option value="011">011</option>
                                                        <option value="016">016</option>
                                                        <option value="017">017</option>
                                                        <option value="018">018</option>
                                                        <option value="019">019</option>
                                                        <option value="0508">0508</option>
                                                    </select>-<input id="phone2" name="phone[]" maxlength="4"  value="" type="text">-<input id="phone3" name="phone[]" maxlength="4" value="" type="text">
                                                </td>

                                            </tr>

                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">휴대전화</span>
                                                    <span class="th-required">*</span>
                                                </th>
                                                <td>
                                                    <div id="mobile-input">
                                                        <select id="mobile1" name="mobile[]">
                                                            <option value="010">010</option>
                                                            <option value="011">011</option>
                                                            <option value="016">016</option>
                                                            <option value="017">017</option>
                                                            <option value="018">018</option>
                                                            <option value="019">019</option>
                                                        </select>
                                                         - 
                                                        <input id="mobile2" name="mobile[]" maxlength="4"  value="" type="text">
                                                         - 
                                                        <input id="mobile3" name="mobile[]" maxlength="4" value="" type="text">
                                                        <button type="button" id="btn-verify-mobile" onclick="alert('간편인증 온클릭')">간편인증</button>
                                                    </div>
                                                    <div class="must-write">
                                                        <!-- 간편인증 누르면 튀어나와서 인증번호 쓰라는 칸인데 일단 패스 -->
                                                         <!-- 만약 구현할거면 class=must-write 찾아서 구현.. -->
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">SMS 수신여부</span>
                                                    <span class="th-required">*</span>
                                                </th>
                                                <td class="SP_RadioBox">
                                                    <input id="is_sms0" name="is_sms" value="T" type="radio">
                                                    <label for="is_sms0">수신함</label>
                                                    <input id="is_sms1" name="is_sms" value="F" type="radio" checked="checked">
                                                    <label for="is_sms1">수신안함</label>
                                                    <p class="SP_stxt SP_pdTop5">쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p>
                                                </td>
                                            </tr>

                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">이메일</span>
                                                    <span class="th-required">*</span>
                                                </th>
                                                <td>
                                                    <input type="text" id="email1" name="email1">
                                                    <span id="emailMsg" class=""></span>
                                                    <!-- 얘도 형식 어긋나면 error 클래스 추가되면서 옆에 튀어나옴 -->
                                                    <!-- 공백 시에는 이메일을 입력해 주세요. 라고 나옴 -->
                                                    <!-- 중복 시에는  이미 사용중인 이메일입니다. 다른 이메일로 다시 시도해 주세요. 라고 나옴 -->
                                                </td>
                                            </tr>

                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">이메일 수신여부</span>
                                                    <span class="th-required">*</span>
                                                </th>

                                                <td class="SP_RadioBox">
                                                    <input id="is_news_mail0" name="is_news_mail" value="T" type="radio">
                                                    <label for="is_news_mail0">수신함</label>
                                                    <input id="is_news_mail1" name="is_news_mail" value="F" type="radio" checked="checked">
                                                    <label for="is_news_mail1">수신안함</label>
                                                    <p class="SP_stxt SP_pdTop5">쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p>
                                                </td>

                                            </tr>
                                        </tbody>
                                        
                                    </table>
                                </div>

                            </div>


                            <div class="edit-table-wrap">

                                <div class="edit-table-top-wrap">
                                    <div class="table-title">추가정보</div>
                                </div>
                                <div class="additional-info-wrap">
                                    <table class="additional-table">
                                        <colgroup>
                                            <col style="width:150px;">
                                            <col style="width:auto;">
                                        </colgroup>

                                        <tbody>
                                            <tr>
                                                <th scope="row">
                                                    <span class="th-title">생년월일</span>
                                                    <span class="th-required displayNone">*</span>
                                                </th>
                                                <td>
                                                    <input id="birth_year" name="birth_year" class="inputTypeText" maxlength="4" value="" type="text">
                                                    년
                                                    <input id="birth_month" name="birth_month" class="inputTypeText" maxlength="2" value="" type="text">
                                                    월
                                                    <input id="birth_day" name="birth_day" class="inputTypeText" maxlength="2" value="" type="text">
                                                    일
                                                </td>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <!-- 추가 정보 테이블 (생일) -->

                            <div>
                                <h3>개인정보 처리 위탁 동의(선택)</h3>
                                <div class="info-use-agree-wrap">
                                    <div class="info-use-content">
                                        <div class="view-privacy-optional">아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.<br>
                                            <br>
                                            - 위탁받는 자(수탁업체) : (주)데이터라이즈<br>
                                            <br>
                                            - 위탁업무의 내용:<br>
                                            목적 - 사용자 행태 기반의 맞춤형 정보 제공. SMS, 카카오톡 채널 및 E-mail 등의 메시지 발송에 필요한 정보. 이벤트 전달 및 분석리포트 업무.<br>
                                            항목 - [일반] 이름, 아이디, 휴대폰번호, 이메일 주소<br>
                                            보유기간 - 계약종료시까지<br>
                                        </div>
                                    </div>
                                    <p class="check">
                                        <span>개인정보 처리 위탁에 동의하십니까?</span>
                                        <input type="checkbox" id="infoUse-agree" name="infoUse-agree">
                                        <label for="infoUse-agree"></label>
                                    </p>
                                </div>
                            </div>

                            <div class="SP_submitBtn_wrap">
                                <div class="SP_submitBtn_left">
                                    <a href="" class="cnclBtn">취소</a>
                                    <a href="" class="memDelBtn" onclick="">회원탈퇴</a>
                                </div>
                                <div class="SP_submitBtn_right">
                                    <a href="" class="modifyBtn" onclick="">회원정보수정</a>
                                </div>
                            </div>


                        
                        </div>
                        <!-- 멤버 에딧 랩 끝 -->


                    </form>

                </div>
            </div>
        

        </div>    
        <!-- 전체 contents 끝 -->

    </div>
    <!-- 전체 container 끝 -->
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function addrFinder() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode1').value = data.zonecode;
                document.getElementById("addr1").value = addr;

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("addr1").value += extraAddr;
                
                } else {
                    document.getElementById("addr1").value += '';
                }

                
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr2").focus();
            }
        }).open();
    }
</script>
<%@include file="footer.jsp" %>
<script src="../resources/js/oho_memInfo.js"></script>
</html>