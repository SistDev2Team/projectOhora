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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cdn-main/addr_manage.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
 
 /* 컨테이너 스타일을 추가하여 수평 정렬 */
    .checkbox-container {
        display: flex;
        align-items: center; /* 세로 가운데 정렬 */
    }

    /* 커스텀 체크박스 스타일 */
    .custom-checkbox {
        width: 20px;
        height: 20px;
        cursor: pointer;
        border-radius: 100%;
        background: #ddd url('https://www.ohora.kr/smartpc/_img/icon/input_unchked.svg') no-repeat center center;
        background-size: cover;
        margin-right: 8px;
    }

    /* 체크박스가 선택되었을 때 스타일 */
    #ADDR_MAIN:checked + .custom-checkbox {
        background: #4caf50 url('https://www.ohora.kr/smartpc/_img/icon/input_checked.svg') no-repeat center center;
        background-size: cover;
    }

    /* 텍스트 스타일 */
    .checkbox-label {
        cursor: pointer; /* 텍스트를 클릭해도 체크 가능 */
    }

</style>

</head>
      <%@include file="header.jsp" %>
<body>
<form action="${pageContext.request.contextPath}/addrmanage.do" method="post" onsubmit="return validateForm()">

	  <div id="SP_mypage_wrap">
      <div class="SP_layoutFix">
        <div class="SP_subSection">
        
          <h2 class="SP_subTitle Nunito_Sans_font">
            <span class="eng_font" style="font-family: 'Libre Baskerville', 'Noto Sans KR', sans-serif !important;">배송 주소록 관리</span>
          </h2>
        </div>

  
          <div class="xans-element- xans-myshop xans-myshop-addrregister">
   
            <div class="SP_chgAdressTable_wrap SP_subSection">
            
           
             
              <table border="1" summary="" class="SP_tableSt01_isThAndTd type2" style="border-bottom: 1px solid #eeeeee;
   				 border-top: 1px solid #eeeeee;">
                <colgroup>
                  <col style="width: 120px" />
                  <col style="width: auto" />
                </colgroup>
                
               
                <tbody>
                  <tr>
                    <th scope="row">
                      배송지명
                      <img
                        src="https://img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
                        alt="필수"
                      />
                    </th>
                    <td>
                    
                      <input
                      
                        id="ADDR_NICK"
                        
                        name="ADDR_NICK"
                        
                        fw-filter="isFill&amp;isMaxByte[90]"
                        fw-label="배송지명"
                        fw-msg=""
                        class="inputTypeText"
                        placeholder=""
                        value=""
                        type="text"
                        
                      />
                      
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      성명
                      <img
                        src="https://img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
                        alt="필수"
                      />
                    </th>
                    <td>
                      <input
                      
                        id="ADDR_NAME"
                        name="ADDR_NAME"
                        
                        fw-filter="isFill&amp;isMaxByte[90]"
                        fw-label="성명"
                        fw-msg=""
                        class="ec-member-name"
                        placeholder=""
                        value=""
                        type="text"
                      />
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      주소
                      <img
                        src="https://img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
                        alt="필수"
                      />
                    </th>
                    <td>
                      <input
                      
                        id="ADDR_ZIPCODE"
                        name="ADDR_ZIPCODE"
                        
                        fw-filter="isMin[3]&amp;isMax[8]"
                        fw-label="우편번호"
                        fw-msg=""
                        class="inputTypeText"
                        placeholder=""
                        readonly="readonly"
                        maxlength="14"
                        value=""
                        type="text"
                      />
                      <a
                        href="#none"
                        class="SP_cm_btn SP_btn_gray_bg"
                        onclick="addrFinder()"
                        id="SearchAddress"
                        style="background: #111; color: #fff;"
                        >우편번호</a
                      ><br />
                      <input
                        id="ADDR_ADDRESS_MAIN"
                        name="ADDR_ADDRESS_MAIN"
                        fw-filter=""
                        fw-label="주소"
                        fw-msg=""
                        class="inputTypeText"
                        placeholder=""
                        readonly="readonly"
                        value=""
                        type="text"
                        style="width:500px; margin: 8px 0;"
                      />
                      기본주소<br />
                      <input
                        id="ADDR_ADDRESS_DETAIL"
                        name="ADDR_ADDRESS_DETAIL"
                        fw-filter="isFill"
                        fw-label="주소"
                        fw-msg=""
                        class="inputTypeText"
                        placeholder=""
                        value=""
                        type="text"
                      />
                      나머지주소<span class="displaynone">(선택입력가능)</span>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      일반전화
                      <span class="displaynone"
                        ><img
                          src="https://img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
                          alt="필수"
                      /></span>
                    </th>
                    <td>
                      <select
                      
                        id="ADDR_HTEL1"
                        name="ADDR_HTEL1"
                        
                        fw-filter="isNumber"
                        fw-label="유선전화"
                        fw-alone="N"
                        fw-msg=""
                        style=" height:40px; -webkit-appearance:none; /* 크롬 화살표 없애기 */
								    -moz-appearance:none; /* 파이어폭스 화살표 없애기 */
								    appearance:none /* 화살표 없애기 */"
                      >
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
                        <option value="0508">0508</option></select
                      >-<input
                        id="ADDR_HTEL2"
                        name="ADDR_HTEL2"
                        maxlength="4"
                        fw-filter="isNumber"
                        fw-label="유선전화"
                        fw-alone="N"
                        fw-msg=""
                        value=""
                        type="text"
                      />-<input
                        id="ADDR_HTEL3"
                        name="ADDR_HTEL3"
                        maxlength="4"
                        fw-filter="isNumber"
                        fw-label="유선전화"
                        fw-alone="N"
                        fw-msg=""
                        value=""
                        type="text"
                      />
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">
                      휴대전화
                      <span class=""
                        ><img
                          src="https://img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
                          alt="필수"
                      /></span>
                    </th>
                    <td>
                      <select
                        id="ADDR_TEL1"
                        name="ADDR_TEL1"
                        fw-filter="isNumber&amp;isFill"
                        fw-label="휴대전화"
                        fw-alone="N"
                        fw-msg=""
                          style=" height:40px; -webkit-appearance:none; /* 크롬 화살표 없애기 */
								    -moz-appearance:none; /* 파이어폭스 화살표 없애기 */
								    appearance:none /* 화살표 없애기 */"
                      >
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="016">016</option>
                        <option value="017">017</option>
                        <option value="018">018</option>
                        <option value="019">019</option></select
                      >-<input
                        id="ADDR_TEL2"
                        name="ADDR_TEL2"
                        maxlength="4"
                        fw-filter="isNumber&amp;isFill"
                        fw-label="휴대전화"
                        fw-alone="N"
                        fw-msg=""
                        placeholder=""
                        value=""
                        type="text"
                      />-<input
                        id="ADDR_TEL3"
                        name="ADDR_TEL3"
                        maxlength="4"
                        fw-filter="isNumber&amp;isFill"
                        fw-label="휴대전화"
                        fw-alone="N"
                        fw-msg=""
                        placeholder=""
                        value=""
                        type="text"
                      />
                    </td>
                  </tr>
                  <tr class="right">
                    <td colspan="2">
                    
					<!-- 수평 정렬을 위한 컨테이너 -->
					<div class="checkbox-container">
					    <!-- 실제 체크박스 (숨김 처리) -->
					    <input type="checkbox" id="ADDR_MAIN" name="ADDR_MAIN" value="Y" style="display: none;" />
					    
					    <!-- 커스텀 체크박스 역할을 하는 레이블 -->
					    <label for="ADDR_MAIN" class="custom-checkbox"></label>
					    
					    <!-- 체크박스 설명 텍스트 역할의 레이블 -->
					    <label for="ADDR_MAIN" class="checkbox-label">기본 배송지로 저장</label>
					</div>
                      
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="SP_tableBtn_wrap">
              <div class="SP_tableBtnAlign_right">
              <button type="submit" class="SP_cm_btn SP_btn_gray_bd">등록</button>                              								                                             
                <a href="/projectOhora/ohora/addr.jsp" class="SP_cm_btn SP_btn_gray_bd">취소</a>
              </div>
            </div>
          </div>

</form>
        <div class="SP_pageGuideText_wrap SP_subSection" style="background-color: #fff">
        
          <h3 class="SP_pageGuideTxt_tt">배송주소록 유의사항</h3>
          <div class="SP_pageGuideTxt_cont">
            <ol>
              <li class="item1">
                배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지
                않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.
              </li>
              <li class="item2">
                자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면
                선택된 주소록은 업데이트 대상에서 제외됩니다.
              </li>
              <li class="item3">
                기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로
                설정하시면 기본 배송지가 변경됩니다.
              </li>
            </ol>
          </div>
        </div>
      </div>
    </div>
      <%@include file="footer.jsp" %>
    </body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function addrFinder() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('ADDR_ZIPCODE').value = data.zonecode; // 우편번호 필드
                document.getElementById("ADDR_ADDRESS_MAIN").value = addr; // 기본 주소 필드

                // 사용자가 선택한 주소가 도로명 타입일 때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합된 참고항목을 기본 주소 필드에 추가한다.
                    if (extraAddr !== '') {
                        document.getElementById("ADDR_ADDRESS_MAIN").value += ' (' + extraAddr + ')';
                    }
                }

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("ADDR_ADDRESS_DETAIL").focus();
            }
        }).open();
    }
    function validateForm() {
        const addrNick = document.getElementById("ADDR_NICK").value.trim();
        const addrName = document.getElementById("ADDR_NAME").value.trim();
        const addrZipcode = document.getElementById("ADDR_ZIPCODE").value.trim();
        const addrAddressMain = document.getElementById("ADDR_ADDRESS_MAIN").value.trim();
        const addrAddressdetail = document.getElementById("ADDR_ADDRESS_DETAIL").value.trim();
        const addrTel1 = document.getElementById("ADDR_TEL1").value.trim();
        const addrTel2 = document.getElementById("ADDR_TEL2").value.trim();
        const addrTel3 = document.getElementById("ADDR_TEL3").value.trim();

        if (addrNick === "") {
            alert("배송지명 항목은 필수 입력값입니다.");
            document.getElementById("ADDR_NICK").focus();
            return false;
        }

        if (addrName === "") {
            alert("성명 항목은 필수 입력값입니다.");
            document.getElementById("ADDR_NAME").focus();
            return false;
        }

        if (addrZipcode === "" || addrAddressMain === "" || addrAddressdetail === "" ) {
            alert("주소 항목은 필수 입력값입니다. 주소를 입력하세요.");
            document.getElementById("ADDR_ZIPCODE").focus();
            return false;
        }

        if (addrTel1 === "" || addrTel2 === "" || addrTel3 === "") {
            alert("휴대전화 항목은 필수 입력값입니다.");
            document.getElementById("ADDR_TEL1").focus();
            return false;
        }

        return true; // 모든 필수 항목이 입력된 경우 폼 제출
    }
</script>
</html>