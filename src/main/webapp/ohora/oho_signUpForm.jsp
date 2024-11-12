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
<script src="${pageContext.request.contextPath}/resources/js/oho-signUpForm.js"></script>
<script> var contextPath = "${pageContext.request.contextPath}"; </script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cdn-main/oho-signUpForm.css">
<style>


#authSection {
    display: none; /* 기본적으로 숨김 */
    margin-top: 10px;
    display: flex; /* 내부 요소를 수직 정렬하는 flex 레이아웃 */
    gap: 10px; /* 인증번호 입력 필드와 버튼 사이 간격 */
    align-items: center; /* 인증번호 필드와 버튼이 같은 높이에 정렬되도록 설정 */
    position: relative;
    left: -20px; /* 왼쪽으로 20px 이동 */
}

 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
 
 /* 모달창 스타일 */
.modal {
    display: none; /* 기본적으로 숨겨짐 */
    position: fixed;
    z-index: 10000; /* 매우 높은 값으로 설정하여 최상위로 띄우기 */
    left: 0; /* 전체 화면을 덮기 위해 0으로 설정 */
    top: 0; /* 전체 화면을 덮기 위해 0으로 설정 */
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5) !important; /* 반투명 배경 */
    overflow: auto; /* 화면이 작을 경우 스크롤 가능하도록 */
}

/* 모달 콘텐츠 스타일 */
.modal-content {
    background-color: #fff;
    position: absolute; /* 부모 요소인 .modal에 상대적인 위치 */
    left: 50%; /* 수평 가운데 정렬 */
    top: 40%; /* 원하는 위치에 맞춰 수직 위치 조정 */
    transform: translateX(-50%); /* 수평 중앙 정렬 */
    padding: 20px;
    border: 1px solid #888;
    width: 80%;            /* 모달의 너비를 화면의 80%로 설정 */
    max-width: 800px;      /* 모달의 최대 너비를 800px로 제한 */
    max-height: 35%;       /* 화면의 최대 50% 높이까지만 모달이 확장되도록 설정 */
    overflow-y: auto;      /* 모달 내용이 길 경우 세로 스크롤바 추가 */
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

/* 닫기 버튼 스타일 */
.close-btn {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close-btn:hover,
.close-btn:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
} 
</style>
</head>
<%@include file="header.jsp" %>
<body>
   <div class="memberJoin-container">
		<div id="memberJoin-container-contents">
			<div class="table-container">
				<div class="layout-fix">
				
						<div class="memberJoin-wrap">
                         <form action="${pageContext.request.contextPath}/register.do" method="post" onsubmit="return validateForm() && validatePassword() && validateAuth();">
							<div class="innerJoinWrap">
								<div class="innerJoin">
									<h2 class="mem_joinTitle">회원가입</h2>

									<div class="agreeAllWrap">
										<div class="agreeAllBox">
											<div class="agreeAllinner">
												<p class="check">
													<span class="chk-base"> 
                                                        <input type="checkbox" id="AgreeAllCk" name="agreeAll" value="Y" onclick="allAgreeBtn()"> 
                                                        <label for="AgreeAllCk" id="AgreeAlllb"></label>
													</span>
												</p>
												<h3>
													<label for="AgreeAllCk">전체동의</label>
												</h3>
											</div>
										</div>
									</div>

									<div class="termAgree-container">
										<div class="termAgWrap">
											<h3>
												이용약관 동의 <span>(필수)</span>
											</h3>
											<div class="term_check">
												<input id="termCk" type="checkbox" class="termCK" onclick="updateSelectAll()"> 
                                                <label for="termCk">동의합니다</label>
											</div>
											<div class="btn"  onclick="showModal(this)">내용보기</div>
										</div>
										<div class="content">
											<div class="fr-view fr-view-mall-agreement">
												<p>
													<span style="font-family: 돋움, dotum;"> <span
														style="font-size: 9pt;"> <span
															style="font-size: 10pt;"> <span
																style="font-size: 9pt;">제1조(목적)&nbsp;</span>
														</span>
													</span>
													</span>
												</p>
												<p>
													<span style="font-size: 9pt;"> <span
														style="font-family: 돋움, dotum;"> <span
															style="font-size: 9pt;"> <span
																style="font-size: 10pt;"> <span
																	style="font-size: 9pt;"> 이 약관은 글루가 회사(전자상거래
																		사업자)가 운영하는 오호라 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하
																		“서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임 사항을 규정함을
																		목적으로 합니다.&nbsp;</span></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">※「PC통신, 무선 등을 이용하는 전자상거래에
																	대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」</span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제2조(정의)</span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”이란 오호라가 재화 또는 용역(이하
																	“재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을
																	거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도
																	사용합니다.&nbsp;</span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “이용자”란 “몰”에 접속하여 이 약관에
																	따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.&nbsp;</span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ ‘회원’이라 함은 “몰”에 회원등록을 한
																	자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.&nbsp;</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ ‘비회원’이라 함은 회원에 가입하지 않고
																	“몰”이 제공하는 서비스를 이용하는 자를 말합니다.&nbsp;</span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제3조 (약관 등의 명시와 설명 및 개정) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이 약관의 내용과 상호 및 대표자
																	성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
																	전화번호.모사전송번호.전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호 책임자 등을
																	이용자가 쉽게 알 수 있도록 오호라 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의
																	내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰은 이용자가 약관에 동의하기에 앞서
																	약관에 정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과 같은 중요한 내용을 이용자가 이해할
																	수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”은 「전자상거래 등에서의 소비자보호에
																	관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」,
																	「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」,
																	「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ “몰”이 약관을 개정할 경우에는 적용 일자
																	및 개정 사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용 일자 7일 이전부터 적용 일자
																	전일까지 공지합니다. 다만, 이용자에게 불리하게 약관 내용을 변경하는 경우에는 최소한 30일 이상의
																	사전 유예기간을 두고 공지합니다. 이 경우 “몰“은 개정 전 내용과 개정 후 내용을 명확하게
																	비교하여 이용자가 알기 쉽도록 표시합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑤ “몰”이 약관을 개정할 경우에는 그
																	개정약관은 그 적용 일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는
																	개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을
																	받기를 원하는 뜻을 제3항에 의한 개정약관의 공지 기간 내에 “몰”에 송신하여 “몰”의 동의를 받은
																	경우에는 개정약관 조항이 적용됩니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑥ 이 약관에서 정하지 아니한 사항과 이
																	약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률,
																	공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호 지침 및 관계 법령 또는 상관례에 따릅니다.
															</span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제4조(서비스의 제공 및 변경) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 다음과 같은 업무를 수행합니다.
															</span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 재화 또는 용역에 대한 정보
																	제공 및 구매계약의 체결 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 구매계약이 체결된 재화 또는
																	용역의 배송 </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 기타 “몰”이 정하는 업무
															</span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 재화 또는 용역의 품절 또는
																	기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할
																	수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공 일자를 명시하여 현재의 재화 또는
																	용역의 내용을 게시한 곳에 즉시 공지합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”이 제공하기로 이용자와 계약을 체결한
																	서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를
																	이용자에게 통지 가능한 주소로 즉시 통지합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 전항의 경우 “몰”은 이로 인하여 이용자가
																	입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지
																	아니합니다. </span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제5조(서비스의 중단) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 컴퓨터 등 정보통신설비의
																	보수점검.교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할
																	수 있습니다. </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 제1항의 사유로 서비스의 제공이
																	일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이
																	고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 사업 종목의 전환, 사업의 포기, 업체
																	간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로
																	이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이
																	보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는
																	통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다. </span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제6조(회원가입) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 이용자는 “몰”이 정한 가입 양식에 따라
																	회원 정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 제1항과 같이 회원으로 가입할
																	것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 가입신청자가 이 약관 제7조
																	제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조 제3항에 의한 회원자격 상실
																	후 3년이 경과한 자로서 “몰”의 회원 재가입 승낙을 얻은 경우에는 예외로 한다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 등록 내용에 허위,
																	기재누락, 오기가 있는 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 기타 회원으로 등록하는 것이
																	“몰”의 기술상 현저히 지장이 있다고 판단되는 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 회원가입 계약의 성립 시기는 “몰”의
																	승낙이 회원에게 도달한 시점으로 합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 회원은 회원가입 시 등록한 사항에 변경이
																	있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원 정보 수정 등의 방법으로 그 변경사항을 알려야
																	합니다. </span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제7조(회원 탈퇴 및 자격 상실 등) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 회원은 “몰”에 언제든지 탈퇴를 요청할 수
																	있으며 “몰”은 즉시 회원탈퇴를 처리합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 회원이 다음 각 호의 사유에 해당하는
																	경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 가입 신청 시에 허위 내용을
																	등록한 경우 </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. “몰”을 이용하여 구입한
																	재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 다른 사람의 “몰” 이용을
																	방해</span></span></span></span><span style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">하거나 그 정보를 도용하는 등 전자상거래
																		질서를 위협하는 경우 </span></span></span></span></span>
												</p>
												<p>
													<span style="font-size: 9pt;"></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">&nbsp; 4. “</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">몰</span></span></span></span></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">”</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">을 이용하여 법령 또는 이 약관이 금지하거나
																		공서양속에 반하는 행위를 하는 경우 </span></span></span></span></span>
												</p>
												<p>
													<span style="font-size: 9pt; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">③ </span></span></span></span></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">“</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">몰</span></span></span></span></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">”</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">이 회원 자격을 제한·</span></span></span></span></span><span
														style="font-size: 9pt; font-family: 돋움, dotum;">설치비
														등의 비용부담과 관련한 내용에 대한 확인 </span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 4. 이 약관에 동의하고 위
																	3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 5. 재화 등의 구매신청 및 이에
																	관한 확인 또는 “몰”의 확인에 대한 동의 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 6. 결제 방법의 선택 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”이 제3자에게 구매자 개인정보를
																	제공·위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리
																	포괄적으로 동의를 받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는
																	자의 개인정보 이용 목적 및 보유·이용 기간 등을 구매자에게 명시하여야 합니다. 다만
																	「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 처리위탁의 경우
																	등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제10조 (계약의 성립) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 제9조와 같은 구매신청에 대하여
																	다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는
																	법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을
																	고지하여야 합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 신청 내용에 허위,
																	기재누락, 오기가 있는 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 미성년자가 담배, 주류 등
																	청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 기타 구매신청에 승낙하는
																	것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”의 승낙이 제12조제1항의
																	수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”의 승낙의 의사표시에는 이용자의 구매
																	신청에 대한 확인 및 판매 가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야
																	합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제11조(지급방법) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">“몰”에서 구매한 재화 또는 용역에 대한
																	대금지급방법은 다음 각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의
																	지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의
																	각종 계좌이체 </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">2. 선불카드, 직불카드, 신용카드 등의 각종
																	카드 결제 </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">3. 온라인무통장입금 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">4. 전자화폐에 의한 결제 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">5. 수령 시 대금지급 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">6. 마일리지 등 “몰”이 지급한 포인트에
																	의한 결제 </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">7. “몰”과 계약을 맺었거나 “몰”이 인정한
																	상품권에 의한 결제 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">8. 기타 전자적 지급 방법에 의한 대금 지급
																	등 </span></span></span></span><br> <br>제 12조 (쿠폰/적립금/마일리지 제도의 운영) &nbsp;<br>①
													"몰"은 "이용자"의 "몰"의 이용, 재화 등 구입, 이벤트 참여시 경품 등 "몰"이 제시한 사용가능
													조건을 달성한 경우, "몰"의 정책에 따라 "이용자"에게 &nbsp;쿠폰/적립금/마일리지제도를 운영할 수
													있습니다.<br>② "이용자"가 명시적으로 쿠폰/적립금/마일리지의 부여 중단을 요청한 경우를
													제외하고, "이용자"가 동의한 약관 및 "몰"의 정책 상 쿠폰/적립금/마일리지 부여의무가 있는 경우
													"몰"은 이용자"에게 쿠폰/적립금/마일리지을 부여할 수 있습니다.<br>③ 적립금 및 마일리지는
													“몰”이 "이용자"에게 “몰”의 정책에 따라 부여하는 결제수단을 말합니다.<br>④ 쿠폰은
													“몰”이 "이용자"에게 “몰”의 정책에 따라 일정액 또는 일정비율을 할인 받을 수 있는 수단을 말합니다.<br>⑤
													쿠폰/적립금/마일리지는 다음 각 호의 사유에 해당하는 경우 소멸되어 사용할 수 없습니다.<br>1.
													사전에 명시된 쿠폰/적립금/마일리지 유효기간이 경과하는 경우<br>2. 쿠폰/적립금/마일리지
													사용가능 조건 및 소멸에 대한 내용이 별도로 공지된 경우<br>⑥ "이용자"가 명시적으로 카카오톡
													통지를 거절한 경우를 제외하고, "몰"은 쿠폰/적립금/마일리지의 발급 시 및 쿠폰/적립금/마일리지의
													유효기간이 지나기 전에 유효기간의 도래, 유효기간 내 사용방법 등을 "이용자"에게 카카오톡으로 통지합니다.<br>쿠폰/적립금/마일리지
													유효기간 내임에도 불구하고 "몰"의 귀책사유로 상품 등의 공급이 전면 중단되는 등 사용이 불가능한 경우,
													"몰"은 "이용자"에게 &nbsp;쿠폰/적립금/마일리지에 해당되는 금액 전액을 환불합니다.<br>⑦
													쿠폰/적립금/마일리지의 제공 및 사용 등과 관련한 사항은 이용 약관 또는 "몰"의 운영 정책이 정한 바에
													따릅니다.<br> <br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제13조(수신확인통지.구매신청 변경 및 취소)
															</span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자의 구매신청이 있는 경우
																	이용자에게 수신확인통지를 합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 수신확인통지를 받은 이용자는 의사표시의
																	불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고
																	“몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.
																	다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제14조(재화 등의 공급) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자와 재화 등의 공급시기에
																	관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수
																	있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의
																	전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를
																	취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한
																	조치를 합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 이용자가 구매한 재화에 대해
																	배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을
																	초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의·과실이 없음을
																	입증한 경우에는 그러하지 아니합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제15조(환급) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">“몰”은 이용자가 구매 신청한 재화 등이 품절
																	등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에
																	재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를
																	취합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제16조(청약철회 등) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”과 재화 등의 구매에 관한 계약을
																	체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에
																	관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을
																	공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수
																	있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이
																	있는 경우에는 동 법 규정에 따릅니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 이용자는 재화 등을 배송받은 경우 다음 각
																	호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 이용자에게 책임 있는 사유로
																	재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한
																	경우에는 청약철회를 할 수 있습니다) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 이용자의 사용 또는 일부
																	소비에 의하여 재화 등의 가치가 현저히 감소한 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 시간의 경과에 의하여
																	재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 4. 같은 성능을 지닌 재화
																	등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 제2항 제2호 내지 제4호의 경우에
																	“몰”이 사전에 청약 철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나
																	시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약 철회 등이 제한되지 않습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 이용자는 제1항 및 제2항의 규정에
																	불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화
																	등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에
																	청약철회 등을 할 수 있습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제17조(청약철회 등의 효과) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자로부터 재화 등을 반환받은
																	경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게
																	재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률
																	시행령」제21조의2에서 정하는 지연이자율(괄호 부분 삭제)을 곱하여 산정한 지연이자를 지급합니다.
															</span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 위 대금을 환급함에 있어서
																	이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해
																	결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 청약철회 등의 경우 공급받은 재화 등의
																	반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는
																	손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약 내용과 다르게
																	이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 이용자가 재화 등을 제공받을 때 발송비를
																	부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게
																	표시합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제18조(개인정보보호) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자의 개인정보 수집 시
																	서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 회원가입 시 구매계약이행에 필요한
																	정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이
																	필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”은 이용자의 개인정보를 수집·이용하는
																	때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ “몰”은 수집된 개인정보를 목적 외의
																	용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는
																	이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리
																	정함이 있는 경우에는 예외로 합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑤ “몰”이 제2항과 제3항에 의해 이용자의
																	동의를 받아야 하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처),
																	정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할
																	정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을
																	미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑥ 이용자는 언제든지 “몰”이 가지고 있는
																	자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한
																	조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할
																	때까지 당해 개인정보를 이용하지 않습니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑦ “몰”은 개인정보 보호를 위하여 이용자의
																	개인정보를 처리하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의
																	개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여
																	모든 책임을 집니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑧ “몰” 또는 그로부터 개인정보를 제공받은
																	제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이
																	파기합니다. </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑨ “몰”은 개인정보의 수집·이용·제공에 관한
																	동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의
																	동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에
																	관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제19조(“몰“의 의무) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 법령과 이 약관이 금지하거나
																	공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로
																	재화.용역을 제공하는데 최선을 다하여야 합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 이용자가 안전하게 인터넷 서비스를
																	이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”이 상품이나 용역에 대하여
																	「표시.광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시.광고행위를 함으로써 이용자가 손해를
																	입은 때에는 이를 배상할 책임을 집니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ “몰”은 이용자가 원하지 않는 영리목적의
																	광고성 전자우편을 발송하지 않습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제20조(회원의 ID 및 비밀번호에 대한
																	의무) </span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 제17조의 경우를 제외한 ID와 비밀번호에
																	관한 관리책임은 회원에게 있습니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 회원은 자신의 ID 및 비밀번호를
																	제3자에게 이용하게 해서는 안됩니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 회원이 자신의 ID 및 비밀번호를
																	도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는
																	경우에는 그에 따라야 합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제21조(이용자의 의무) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">이용자는 다음 행위를 하여서는 안 됩니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">1. 신청 또는 변경시 허위 내용의 등록 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">2. 타인의 정보 도용 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">3. “몰”에 게시된 정보의 변경 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">4. “몰”이 정한 정보 이외의 정보(컴퓨터
																	프로그램 등) 등의 송신 또는 게시 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">5. “몰” 기타 제3자의 저작권 등
																	지적재산권에 대한 침해 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">6. “몰” 기타 제3자의 명예를 손상시키거나
																	업무를 방해하는 행위 </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">7. 외설 또는 폭력적인 메시지, 화상,
																	음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위 </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제22조(연결“몰”과 피연결“몰” 간의 관계)
															</span></span></span></span><br> <span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 상위 “몰”과 하위 “몰”이
																	하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우,
																	전자를 연결 “몰”(웹사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 연결“몰”은 피연결“몰”이 독자적으로
																	제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을
																	연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을
																	지지 않습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제23조(저작권의 귀속 및 이용제한) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰“이 작성한 저작물에 대한 저작권 기타
																	지적재산권은 ”몰“에 귀속합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 이용자는 “몰”을 이용함으로써 얻은 정보
																	중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송
																	기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”은 약정에 따라 이용자에게 귀속된
																	저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제24조(분쟁해결) </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자가 제기하는 정당한 의견이나
																	불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치.운영합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 이용자로부터 제출되는 불만사항 및
																	의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와
																	처리일정을 즉시 통보해 드립니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”과 이용자 간에 발생한 전자상거래
																	분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는
																	분쟁조정기관의 조정에 따를 수 있습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제25조(재판권 및 준거법) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”과 이용자 간에 발생한 전자상거래
																	분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는
																	지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국
																	거주자의 경우에는 민사소송법상의 관할법원에 제기합니다. </span></span></span></span><br> <span
														style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”과 이용자 간에 제기된 전자상거래
																	소송에는 한국법을 적용합니다. </span></span></span></span>
												</p>
												<span style="font-family: 돋움, dotum;"><span
													style="font-size: 9pt;"><span
														style="font-size: 10pt;"><span
															style="font-size: 9pt;">부 칙(시행일) 이 약관은 2019년 7월
																12일부터 시행합니다. 부 칙(시행일) 이 약관은 2019년 7월 12일부터 시행합니다. </span></span></span></span>
												<div>
													<br>
												</div>
												<div>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span lang="EN-US"
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">#</span></span></span></span></span></span></span></span><span
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">시행에</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">관한</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">내용&nbsp;</span></span></span></span></span></span></span></span><span
															lang="EN-US" style="font-size: 9pt; font-family: 굴림;"><ins></ins>
															<ins></ins></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">“오호라”는</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">회원가입</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">주문안내</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">배송안내</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">등</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">비</span></span></span></span></span></span></span> <wbr> <span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">광고성</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">정보를</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡으로</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알려드리며</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">만약</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알</span></span></span></span></span></span></span> <wbr> <span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">림톡</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신이</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">불가능하거나</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">차단하신</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">경우에는</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">일반</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span> <wbr>
															<span style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">문자메시지로</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">보내드립니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">통해</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">안내</span></span></span></span></span></span></span> <wbr> <span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">되는</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">정보를</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">와이파이가</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">아닌</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">이동통신망으로</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">이용할</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">경우</span></span></span></span></span></span></span><span lang="EN-US"><wbr>
																<span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">중</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">데이터</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">요금이</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">발생할</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">있습니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.</span></span></span></span></span></span></span> <wbr> <span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">통해</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">발송되는</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">원치</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">않으실</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span> <wbr>
															<span style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">경우</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">반드시</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">차단하여</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">주시기</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">바랍니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.&nbsp;</span></span></span></span></span></span></span></span></span><span
															lang="EN-US" style="font-size: 9pt; font-family: 굴림;"><ins></ins>
															<ins></ins></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span lang="EN-US"
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span> <ins></ins> <ins></ins></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span lang="EN-US"
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">#</span></span></span></span></span></span></span></span><span
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡 상담톡 시행에 관한 내용 </span></span></span></span></span></span></span><span
															lang="EN-US"><ins></ins> <ins></ins></span></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">“오호라”는</span></span></span></span></span></span></span></span><span
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">&nbsp;상담업무를 카카오톡
																						상담톡으로 진행하며</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">, </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">만약 카카오톡을 통해 안내되는 상담
																						내용을</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;Wi-Fi </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">나</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;PC</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">가 아닌 이동통신망으로 이용할 경우</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">, </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">데이터 요금이 발생할 수 있습니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">. </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡을 통해 상담을 원치 않으실
																						경우 고객센터를 이용해 주시기 바랍니다</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.</span></span></span></span></span></span></span></span></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span style="font-size: 9pt; font-family: 굴림;"><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><br></span></span></span></span></span></span>
													</p>
													<p
														style="margin: 0cm 0cm 0.0001pt; font-size: 10pt; text-align: justify; font-family: &amp; amp;">
														<span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">#</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림 시행에 관한 내용</span></span></span></span><span
															lang="EN-US"></span>
													</p>
													<p
														style="margin: 0cm 0cm 0.0001pt; font-size: 10pt; text-align: justify; font-family: &amp; amp;">
														<span style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">“오호라</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">”는</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">&nbsp;회원가입</span></span></span></span><span
															lang="EN-US"><span style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">,</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">주문안내</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">,</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">배송안내 등 비광고성 정보를 네이버 알림으로
																		알려드립니다</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">.</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림을 통해 안내되는 정보를
																		와이파이가 아닌 이동통신망으로 이용할 경우</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">,</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림 수신 중 데이터 요금이 발생할
																		수 있습니다</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">.</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림 수신을 원치 않으실 경우 반드시
																		알림을 해제하여 주시기 바랍니다</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">.</span></span></span></span><span
															style="color: red;"></span></span>
													</p>
													<div>
														<span lang="EN-US"><br></span>
													</div>
													<p
														style="margin: 0cm 0cm 0.0001pt; font-size: 10pt; text-align: justify; font-family: &amp; amp;">
														<span lang="EN-US"><span
															style="font-family: Arial;"></span></span>
													</p>
												</div>
											</div>
										</div>
									</div>

									<div class="termAgree-container">
										<div class="termAgWrap">
											<h3>
												개인정보 수집 및 이용 동의 <span>(필수)</span>
											</h3>
											<p class="term_check">
												<input id="privacyCk" type="checkbox" class="termCK" onclick="updateSelectAll()"> <label
													for="privacyCk">동의합니다</label>
											</p>
											<div class="btn" onclick="showModal(this)">내용보기</div>
										</div>
										<div class="sub_content">
											<p>개인정보 수집</p>
											<p>
												<span>목적</span>서비스 제공 및 회원 관리
											</p>
											<p>
												<span>항목 </span>이름, 로그인ID, 비밀번호, 휴대전화번호, 이메일, 주소
											</p>
											<p>
												<span>보유기간 </span>회원탈퇴 시 즉시 파기
											</p>
										</div>
										<div class="content">
											<div class="fr-view fr-view-privacy-required">
												<p>
													<span><span><span>1. 개인정보 수집목적 및 이용목적
														</span></span></span>
												</p>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른
															요금 정산 </span></span>
												</p>
												<p>
													<span><span>콘텐츠 제공 , 구매 및 요금 결제, 물품 배송 또는 청구지
															등 발송, 금융거래 본인 인증 및 금융 서비스 </span></span>
												</p>
												<p>
													<span><br></span>
												</p>
												<p>
													<span>나. 회원 관리 </span>
												</p>
												<p>
													<span><span>회원제 서비스 이용에 따른 본인확인 , 개인 식별 ,
															불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 불만 처리 등 민원처리,
															고지사항 전달 &nbsp;</span></span>
												</p>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>2. 수집하는 개인정보 항목 : 이름, 로그인ID,
															비밀번호, 휴대전화번호, 이메일, 주소</span></span>
												</p>
												<span></span><br>
												<p>
													<span><span> </span></span>
												</p>
												<p>
													가. 필수정보<br>- 아이디, 비밀번호, 이름, 이메일, 휴대폰번호
												</p>
												<p>나. 서비스 이용시</p>
												- 주소, 결제정보<br>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>3. 개인정보의 보유기간 및 이용기간 </span></span>
												</p>
												<p>
													<span><span>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당
															정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
													</span></span>
												</p>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>가. 회사 내부 방침에 의한 정보 보유 사유 </span></span>
												</p>
												<p>
													<span>o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : 1년 </span>
												</p>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>나. 관련 법령에 의한 정보보유 사유 </span></span>
												</p>
												<p>
													<span>o 계약 또는 청약철회 등에 관한 기록 </span>
												</p>
												<p>
													<span><span>- 보존이유 : 전자상거래 등에서의 소비자보호에 관한 법률
													</span></span>
												</p>
												<p>
													<span><span>- 보존기간 : 5년 </span></span>
												</p>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>o 대금 결제 및 재화 등의 공급에 관한 기록 </span></span>
												</p>
												<p>
													<span><span>- 보존이유: 전자상거래 등에서의 소비자보호에 관한 법률 </span></span>
												</p>
												<p>
													<span><span>- 보존기간 : 5년 </span></span>
												</p>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>o 소비자 불만 또는 분쟁처리에 관한 기록 </span></span>
												</p>
												<p>
													<span><span>-보존이유 : 전자상거래 등에서의 소비자보호에 관한 법률 </span></span>
												</p>
												<p>
													<span><span>-보존기간 : 3년 </span></span>
												</p>
												<p>
													<span><span><br></span></span>
												</p>
												<p>
													<span><span>o 로그 기록 </span></span>
												</p>
												<p>
													<span><span>-보존이유: 통신비밀보호법 </span></span>
												</p>
												<p>
													<span><span>-보존기간 : 3개월 </span></span>
												</p>
												<p>
													<span><span>※ 동의를 거부할 수 있으나 거부 시 회원 가입이
															불가능합니다.</span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span><span>#개인정보의 위탁 처리<br>“(주)글루가”는
															서비스 향상을 위해 관계법령에 따라 회원의 동의를 얻거나 관련 사항을 공개 또는 고지 후 회원의
															개인정보를 외부에 위탁하여<br>처리하고 있습니다.<br>“(<span
															style="color: rgb(0, 0, 0); font-family: &amp; quot; Malgun Gothic&amp;quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">주)글루가</span>”의
															개인정보처리 수탁자와 그 업무의 내용은 다음과 같습니다.
													</span></span><span><span><br>- 수탁사 : 주식회사 루나소프트<br>-
															알림 전송 수탁업체 : (주)스냅컴퍼니 (재위탁 : 비즈톡 주식회사, 주식회사 카카오)<br>-
															위탁 업무 내용 : 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 및 참여
															기회 제공<br>- 수집항목 : 이름, 아이디, 휴대전화 번호, 회원 및 주문 데이터<br>-
															보유기간 : 회원 탈퇴 시 혹은 법정 보유 기간 </span></span>
												</p>
											</div>
										</div>
									</div>

									<div class="termAgree-container">
										<div class="termAgWrap">
											<h3>
												개인정보 처리 위탁 동의 <span>(필수)</span>
											</h3>
											<p class="term_check">
												<input id="consignCk" type="checkbox" class="termCK" onclick="updateSelectAll()"> <label
													for="consignCk">동의합니다</label>
											</p>
											<div class="btn" onclick="showModal(this)">내용보기</div>
										</div>
										<div class="content">
											<div class="fr-view fr-view-privacy-optional">
												아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수
												있습니다.<br> <br> - 위탁받는 자(수탁업체) : (주)데이터라이즈<br>
												<br> - 위탁업무의 내용:<br> 목적 - 사용자 행태 기반의 맞춤형 정보 제공.
												SMS, 카카오톡 채널 및 E-mail 등의 메시지 발송에 필요한 정보. 이벤트 전달 및 분석리포트 업무.<br>
												항목 - [일반] 이름, 아이디, 휴대폰번호, 이메일 주소<br> 보유기간 - 계약종료시까지<br>
											</div>
										</div>
									</div>


									<div class="termAgree-container" id="adAgreeWrap">
										<div class="termAgWrap">
											<h3>
												개인정보 수집 및 이용 동의 <span>(선택)</span>
											</h3>
											<p class="term_check">
												<input id="privactUseCk" type="checkbox" class="termCK" onclick="updateSelectAll()"> <label
													for="privactUseCk">동의합니다</label>
											</p>
											<div class="btn">내용보기</div>
										</div>
										<div class="sub_content">
											<p>선택정보 수집</p>
											<p>
												<span>목적</span>맞춤 정보 제공, 마케팅
											</p>
											<p>
												<span>항목 </span>추천인 아이디, 생년월일
											</p>
											<p>
												<span>보유기간 </span>회원탈퇴 시 즉시 파기
											</p>
										</div>
										<div class="content">
											<p>나. 선택정보</p>
											<p>추천인 아이디, 생년월일</p>
											<p></p>
											<p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나
												이메일로 받아보실 수 있습니다.</p>
											<p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>
											<p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지
												수신여부를 변경하실 수 있습니다.</p>
										</div>
										<ul class="check-list">
											<li><span>SMS, 카카오톡 수신동의</span> <input type="checkbox"
												id="smsAgree" name="smsAgree" class="termCK" onclick="updateSelectAll()"> <label
												for="smsAgree">동의함</label></li>

											<li><span>이메일 수신동의</span> <input type="checkbox"
												id="emailAgree" name="emailAgree" class="termCK" onclick="updateSelectAll()"> <label
												for="emailAgree">동의함</label></li>

										</ul>
									</div>

									<div class="termAgree-container">
										<div class="termAgWrap">
											<h3>
												만 14세 이상 회원가입 하기 <span>(필수)</span> <br> <span
													class="sm">(만 14세 미만은 회원가입 및 서비스 이용이 불가합니다)</span>
											</h3>
											<p class="term_check">
												<input id="ageCk" type="checkbox" style="width: 26px; height: 26px;" class="termCK" onclick="updateSelectAll()"> <label
													for="ageCk">동의함</label>
											</p>
											
										</div>
									</div>
									<span class="lampEvent">전체 동의 시 젤램프가 증정됩니다 (첫 구매시)</span>

									<!-- 팝업구역 -->
									<div id="popupSection" style="display: none;">
										<div class="closeBtn"></div>
										<!-- 클로즈 버튼 누르면 popupSection 디스플레이none -->

										<!-- txt 바로 밑 div는 '내용보기' 버튼에 따라 달라진다( 내용이 바뀌니까)-->
										<div class="txt">

											<div class="fr-view fr-view-mall-agreement">
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제1조(목적)&nbsp;</span></span></span></span>
												</p>
												<p>
													<span style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">이 약관은 글루가 회사(전자상거래 사업자)가
																		운영하는 오호라 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하
																		“서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임 사항을 규정함을
																		목적으로 합니다.&nbsp;</span></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">※「PC통신, 무선 등을 이용하는 전자상거래에
																	대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」</span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제2조(정의)</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”이란 오호라가 재화 또는 용역(이하
																	“재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을
																	거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도
																	사용합니다.&nbsp;</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “이용자”란 “몰”에 접속하여 이 약관에
																	따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.&nbsp;</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ ‘회원’이라 함은 “몰”에 회원등록을 한
																	자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.&nbsp;</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ ‘비회원’이라 함은 회원에 가입하지 않고
																	“몰”이 제공하는 서비스를 이용하는 자를 말합니다.&nbsp;</span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제3조 (약관 등의 명시와 설명 및 개정) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이 약관의 내용과 상호 및 대표자
																	성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
																	전화번호.모사전송번호.전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호 책임자 등을
																	이용자가 쉽게 알 수 있도록 오호라 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의
																	내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰은 이용자가 약관에 동의하기에 앞서
																	약관에 정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과 같은 중요한 내용을 이용자가 이해할
																	수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”은 「전자상거래 등에서의 소비자보호에
																	관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」,
																	「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」,
																	「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ “몰”이 약관을 개정할 경우에는 적용 일자
																	및 개정 사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용 일자 7일 이전부터 적용 일자
																	전일까지 공지합니다. 다만, 이용자에게 불리하게 약관 내용을 변경하는 경우에는 최소한 30일 이상의
																	사전 유예기간을 두고 공지합니다. 이 경우 “몰“은 개정 전 내용과 개정 후 내용을 명확하게
																	비교하여 이용자가 알기 쉽도록 표시합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑤ “몰”이 약관을 개정할 경우에는 그
																	개정약관은 그 적용 일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는
																	개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을
																	받기를 원하는 뜻을 제3항에 의한 개정약관의 공지 기간 내에 “몰”에 송신하여 “몰”의 동의를 받은
																	경우에는 개정약관 조항이 적용됩니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑥ 이 약관에서 정하지 아니한 사항과 이
																	약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률,
																	공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호 지침 및 관계 법령 또는 상관례에 따릅니다.
															</span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제4조(서비스의 제공 및 변경) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 다음과 같은 업무를 수행합니다.
															</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 재화 또는 용역에 대한 정보
																	제공 및 구매계약의 체결 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 구매계약이 체결된 재화 또는
																	용역의 배송 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 기타 “몰”이 정하는 업무
															</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 재화 또는 용역의 품절 또는
																	기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할
																	수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공 일자를 명시하여 현재의 재화 또는
																	용역의 내용을 게시한 곳에 즉시 공지합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”이 제공하기로 이용자와 계약을 체결한
																	서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를
																	이용자에게 통지 가능한 주소로 즉시 통지합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 전항의 경우 “몰”은 이로 인하여 이용자가
																	입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지
																	아니합니다. </span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제5조(서비스의 중단) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 컴퓨터 등 정보통신설비의
																	보수점검.교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할
																	수 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 제1항의 사유로 서비스의 제공이
																	일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이
																	고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 사업 종목의 전환, 사업의 포기, 업체
																	간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로
																	이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이
																	보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는
																	통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다. </span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제6조(회원가입) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 이용자는 “몰”이 정한 가입 양식에 따라
																	회원 정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 제1항과 같이 회원으로 가입할
																	것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 가입신청자가 이 약관 제7조
																	제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조 제3항에 의한 회원자격 상실
																	후 3년이 경과한 자로서 “몰”의 회원 재가입 승낙을 얻은 경우에는 예외로 한다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 등록 내용에 허위,
																	기재누락, 오기가 있는 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 기타 회원으로 등록하는 것이
																	“몰”의 기술상 현저히 지장이 있다고 판단되는 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 회원가입 계약의 성립 시기는 “몰”의
																	승낙이 회원에게 도달한 시점으로 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 회원은 회원가입 시 등록한 사항에 변경이
																	있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원 정보 수정 등의 방법으로 그 변경사항을 알려야
																	합니다. </span></span></span></span>
												</p>
												<p>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제7조(회원 탈퇴 및 자격 상실 등) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 회원은 “몰”에 언제든지 탈퇴를 요청할 수
																	있으며 “몰”은 즉시 회원탈퇴를 처리합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 회원이 다음 각 호의 사유에 해당하는
																	경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 가입 신청 시에 허위 내용을
																	등록한 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. “몰”을 이용하여 구입한
																	재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 다른 사람의 “몰” 이용을
																	방해</span></span></span></span><span style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">하거나 그 정보를 도용하는 등 전자상거래
																		질서를 위협하는 경우 </span></span></span></span></span>
												</p>
												<p>
													<span style="font-size: 9pt;"></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">&nbsp; 4. “</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">몰</span></span></span></span></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">”</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">을 이용하여 법령 또는 이 약관이 금지하거나
																		공서양속에 반하는 행위를 하는 경우 </span></span></span></span></span>
												</p>
												<p>
													<span style="font-size: 9pt; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">③ </span></span></span></span></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">“</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">몰</span></span></span></span></span><span lang="EN-US"
														style="font-size: 9pt; font-family: 돋움; letter-spacing: 0pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">”</span></span></span></span></span><span
														style="font-size: 9pt;"><span
														style="font-family: 돋움, dotum;"><span
															style="font-size: 9pt;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">이 회원 자격을 제한·</span></span></span></span></span><span
														style="font-size: 9pt; font-family: 돋움, dotum;">설치비
														등의 비용부담과 관련한 내용에 대한 확인 </span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 4. 이 약관에 동의하고 위
																	3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 5. 재화 등의 구매신청 및 이에
																	관한 확인 또는 “몰”의 확인에 대한 동의 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 6. 결제 방법의 선택 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”이 제3자에게 구매자 개인정보를
																	제공·위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리
																	포괄적으로 동의를 받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는
																	자의 개인정보 이용 목적 및 보유·이용 기간 등을 구매자에게 명시하여야 합니다. 다만
																	「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 처리위탁의 경우
																	등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제10조 (계약의 성립) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 제9조와 같은 구매신청에 대하여
																	다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는
																	법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을
																	고지하여야 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 신청 내용에 허위,
																	기재누락, 오기가 있는 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 미성년자가 담배, 주류 등
																	청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 기타 구매신청에 승낙하는
																	것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”의 승낙이 제12조제1항의
																	수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”의 승낙의 의사표시에는 이용자의 구매
																	신청에 대한 확인 및 판매 가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야
																	합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제11조(지급방법) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">“몰”에서 구매한 재화 또는 용역에 대한
																	대금지급방법은 다음 각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의
																	지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의
																	각종 계좌이체 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">2. 선불카드, 직불카드, 신용카드 등의 각종
																	카드 결제 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">3. 온라인무통장입금 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">4. 전자화폐에 의한 결제 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">5. 수령 시 대금지급 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">6. 마일리지 등 “몰”이 지급한 포인트에
																	의한 결제 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">7. “몰”과 계약을 맺었거나 “몰”이 인정한
																	상품권에 의한 결제 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">8. 기타 전자적 지급 방법에 의한 대금 지급
																	등 </span></span></span></span><br>
													<br>제 12조 (쿠폰/적립금/마일리지 제도의 운영) &nbsp;<br>① "몰"은
													"이용자"의 "몰"의 이용, 재화 등 구입, 이벤트 참여시 경품 등 "몰"이 제시한 사용가능 조건을 달성한
													경우, "몰"의 정책에 따라 "이용자"에게 &nbsp;쿠폰/적립금/마일리지제도를 운영할 수 있습니다.<br>②
													"이용자"가 명시적으로 쿠폰/적립금/마일리지의 부여 중단을 요청한 경우를 제외하고, "이용자"가 동의한
													약관 및 "몰"의 정책 상 쿠폰/적립금/마일리지 부여의무가 있는 경우 "몰"은 이용자"에게
													쿠폰/적립금/마일리지을 부여할 수 있습니다.<br>③ 적립금 및 마일리지는 “몰”이 "이용자"에게
													“몰”의 정책에 따라 부여하는 결제수단을 말합니다.<br>④ 쿠폰은 “몰”이 "이용자"에게
													“몰”의 정책에 따라 일정액 또는 일정비율을 할인 받을 수 있는 수단을 말합니다.<br>⑤
													쿠폰/적립금/마일리지는 다음 각 호의 사유에 해당하는 경우 소멸되어 사용할 수 없습니다.<br>1.
													사전에 명시된 쿠폰/적립금/마일리지 유효기간이 경과하는 경우<br>2. 쿠폰/적립금/마일리지
													사용가능 조건 및 소멸에 대한 내용이 별도로 공지된 경우<br>⑥ "이용자"가 명시적으로 카카오톡
													통지를 거절한 경우를 제외하고, "몰"은 쿠폰/적립금/마일리지의 발급 시 및 쿠폰/적립금/마일리지의
													유효기간이 지나기 전에 유효기간의 도래, 유효기간 내 사용방법 등을 "이용자"에게 카카오톡으로 통지합니다.<br>쿠폰/적립금/마일리지
													유효기간 내임에도 불구하고 "몰"의 귀책사유로 상품 등의 공급이 전면 중단되는 등 사용이 불가능한 경우,
													"몰"은 "이용자"에게 &nbsp;쿠폰/적립금/마일리지에 해당되는 금액 전액을 환불합니다.<br>⑦
													쿠폰/적립금/마일리지의 제공 및 사용 등과 관련한 사항은 이용 약관 또는 "몰"의 운영 정책이 정한 바에
													따릅니다.<br>
													<br>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제13조(수신확인통지.구매신청 변경 및 취소)
															</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자의 구매신청이 있는 경우
																	이용자에게 수신확인통지를 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 수신확인통지를 받은 이용자는 의사표시의
																	불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고
																	“몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.
																	다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제14조(재화 등의 공급) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자와 재화 등의 공급시기에
																	관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수
																	있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의
																	전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를
																	취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한
																	조치를 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 이용자가 구매한 재화에 대해
																	배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을
																	초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의·과실이 없음을
																	입증한 경우에는 그러하지 아니합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제15조(환급) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">“몰”은 이용자가 구매 신청한 재화 등이 품절
																	등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에
																	재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를
																	취합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제16조(청약철회 등) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”과 재화 등의 구매에 관한 계약을
																	체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에
																	관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을
																	공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수
																	있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이
																	있는 경우에는 동 법 규정에 따릅니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 이용자는 재화 등을 배송받은 경우 다음 각
																	호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 1. 이용자에게 책임 있는 사유로
																	재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한
																	경우에는 청약철회를 할 수 있습니다) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 2. 이용자의 사용 또는 일부
																	소비에 의하여 재화 등의 가치가 현저히 감소한 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 3. 시간의 경과에 의하여
																	재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">&nbsp; 4. 같은 성능을 지닌 재화
																	등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 제2항 제2호 내지 제4호의 경우에
																	“몰”이 사전에 청약 철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나
																	시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약 철회 등이 제한되지 않습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 이용자는 제1항 및 제2항의 규정에
																	불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화
																	등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에
																	청약철회 등을 할 수 있습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제17조(청약철회 등의 효과) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자로부터 재화 등을 반환받은
																	경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게
																	재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률
																	시행령」제21조의2에서 정하는 지연이자율(괄호 부분 삭제)을 곱하여 산정한 지연이자를 지급합니다.
															</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 위 대금을 환급함에 있어서
																	이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해
																	결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 청약철회 등의 경우 공급받은 재화 등의
																	반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는
																	손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약 내용과 다르게
																	이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ 이용자가 재화 등을 제공받을 때 발송비를
																	부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게
																	표시합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제18조(개인정보보호) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자의 개인정보 수집 시
																	서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 회원가입 시 구매계약이행에 필요한
																	정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이
																	필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”은 이용자의 개인정보를 수집·이용하는
																	때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ “몰”은 수집된 개인정보를 목적 외의
																	용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는
																	이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리
																	정함이 있는 경우에는 예외로 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑤ “몰”이 제2항과 제3항에 의해 이용자의
																	동의를 받아야 하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처),
																	정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할
																	정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을
																	미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑥ 이용자는 언제든지 “몰”이 가지고 있는
																	자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한
																	조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할
																	때까지 당해 개인정보를 이용하지 않습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑦ “몰”은 개인정보 보호를 위하여 이용자의
																	개인정보를 처리하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의
																	개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여
																	모든 책임을 집니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑧ “몰” 또는 그로부터 개인정보를 제공받은
																	제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이
																	파기합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">⑨ “몰”은 개인정보의 수집·이용·제공에 관한
																	동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의
																	동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에
																	관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제19조(“몰“의 의무) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 법령과 이 약관이 금지하거나
																	공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로
																	재화.용역을 제공하는데 최선을 다하여야 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 이용자가 안전하게 인터넷 서비스를
																	이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”이 상품이나 용역에 대하여
																	「표시.광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시.광고행위를 함으로써 이용자가 손해를
																	입은 때에는 이를 배상할 책임을 집니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">④ “몰”은 이용자가 원하지 않는 영리목적의
																	광고성 전자우편을 발송하지 않습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제20조(회원의 ID 및 비밀번호에 대한
																	의무) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 제17조의 경우를 제외한 ID와 비밀번호에
																	관한 관리책임은 회원에게 있습니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 회원은 자신의 ID 및 비밀번호를
																	제3자에게 이용하게 해서는 안됩니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ 회원이 자신의 ID 및 비밀번호를
																	도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는
																	경우에는 그에 따라야 합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제21조(이용자의 의무) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">이용자는 다음 행위를 하여서는 안 됩니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">1. 신청 또는 변경시 허위 내용의 등록 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">2. 타인의 정보 도용 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">3. “몰”에 게시된 정보의 변경 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">4. “몰”이 정한 정보 이외의 정보(컴퓨터
																	프로그램 등) 등의 송신 또는 게시 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">5. “몰” 기타 제3자의 저작권 등
																	지적재산권에 대한 침해 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">6. “몰” 기타 제3자의 명예를 손상시키거나
																	업무를 방해하는 행위 </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">7. 외설 또는 폭력적인 메시지, 화상,
																	음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위 </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제22조(연결“몰”과 피연결“몰” 간의 관계)
															</span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① 상위 “몰”과 하위 “몰”이
																	하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우,
																	전자를 연결 “몰”(웹사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 연결“몰”은 피연결“몰”이 독자적으로
																	제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을
																	연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을
																	지지 않습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제23조(저작권의 귀속 및 이용제한) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰“이 작성한 저작물에 대한 저작권 기타
																	지적재산권은 ”몰“에 귀속합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② 이용자는 “몰”을 이용함으로써 얻은 정보
																	중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송
																	기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”은 약정에 따라 이용자에게 귀속된
																	저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제24조(분쟁해결) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”은 이용자가 제기하는 정당한 의견이나
																	불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치.운영합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”은 이용자로부터 제출되는 불만사항 및
																	의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와
																	처리일정을 즉시 통보해 드립니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">③ “몰”과 이용자 간에 발생한 전자상거래
																	분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는
																	분쟁조정기관의 조정에 따를 수 있습니다. </span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;"><br></span></span></span></span>
												</p>
												<p>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">제25조(재판권 및 준거법) </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">① “몰”과 이용자 간에 발생한 전자상거래
																	분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는
																	지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국
																	거주자의 경우에는 민사소송법상의 관할법원에 제기합니다. </span></span></span></span><br>
													<span style="font-family: 돋움, dotum;"><span
														style="font-size: 9pt;"><span
															style="font-size: 10pt;"><span
																style="font-size: 9pt;">② “몰”과 이용자 간에 제기된 전자상거래
																	소송에는 한국법을 적용합니다. </span></span></span></span>
												</p>
												<span style="font-family: 돋움, dotum;"><span
													style="font-size: 9pt;"><span
														style="font-size: 10pt;"><span
															style="font-size: 9pt;">부 칙(시행일) 이 약관은 2019년 7월
																12일부터 시행합니다. 부 칙(시행일) 이 약관은 2019년 7월 12일부터 시행합니다. </span></span></span></span>
												<div>
													<br>
												</div>
												<div>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span lang="EN-US"
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">#</span></span></span></span></span></span></span></span><span
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">시행에</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">관한</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">내용&nbsp;</span></span></span></span></span></span></span></span><span
															lang="EN-US" style="font-size: 9pt; font-family: 굴림;"><ins></ins>
															<ins></ins></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">“오호라”는</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">회원가입</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">주문안내</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">배송안내</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">등</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">비</span></span></span></span></span></span></span>
														<wbr>
															<span style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">광고성</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">정보를</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡으로</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알려드리며</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">만약</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알</span></span></span></span></span></span></span>
														<wbr>
															<span style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">림톡</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신이</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">불가능하거나</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">차단하신</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">경우에는</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">일반</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span>
														<wbr>
															<span style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">문자메시지로</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">보내드립니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">통해</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">안내</span></span></span></span></span></span></span>
														<wbr>
															<span style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">되는</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">정보를</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">와이파이가</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">아닌</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">이동통신망으로</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">이용할</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">경우</span></span></span></span></span></span></span><span lang="EN-US"><wbr>
																<span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">,&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">중</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">데이터</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">요금이</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">발생할</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">있습니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.</span></span></span></span></span></span></span>
															<wbr>
																<span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">통해</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">발송되는</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">수신을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">원치</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">않으실</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span>
														<wbr>
															<span style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">경우</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">반드시</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">알림톡을</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">차단하여</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">주시기</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">바랍니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.&nbsp;</span></span></span></span></span></span></span></span></span><span
															lang="EN-US" style="font-size: 9pt; font-family: 굴림;"><ins></ins>
															<ins></ins></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span lang="EN-US"
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">&nbsp;</span></span></span></span></span></span></span>
														<ins></ins>
															<ins></ins></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span lang="EN-US"
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">#</span></span></span></span></span></span></span></span><span
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡 상담톡 시행에 관한 내용 </span></span></span></span></span></span></span><span
															lang="EN-US"><ins></ins>
																<ins></ins></span></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span
															style="font-size: 9pt; font-family: 굴림; color: rgb(51, 51, 51);"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">“오호라”는</span></span></span></span></span></span></span></span><span
															style="font-size: 9pt; font-family: 굴림;"><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">&nbsp;상담업무를 카카오톡
																						상담톡으로 진행하며</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">, </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">만약 카카오톡을 통해 안내되는 상담
																						내용을</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;Wi-Fi </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">나</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">&nbsp;PC</span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">가 아닌 이동통신망으로 이용할 경우</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">, </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">데이터 요금이 발생할 수 있습니다</span></span></span></span></span></span></span><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">. </span></span></span></span></span></span></span></span><span
															style="font-family: 돋움, dotum;"><span
																style="font-size: 9pt;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;"><span
																			style="font-family: Arial;"><span
																				style="font-size: 10pt;"><span
																					style="font-size: 9pt;">카카오톡을 통해 상담을 원치 않으실
																						경우 고객센터를 이용해 주시기 바랍니다</span></span></span></span></span></span></span><span lang="EN-US"><span
																style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><span
																				style="font-family: Arial;"><span
																					style="font-size: 10pt;"><span
																						style="font-size: 9pt;">.</span></span></span></span></span></span></span></span></span>
													</p>
													<p class="MsoNormal"
														style="color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
														<span style="font-size: 9pt; font-family: 굴림;"><span
															lang="EN-US"><span style="font-family: 돋움, dotum;"><span
																	style="font-size: 9pt;"><span
																		style="font-size: 10pt;"><span
																			style="font-size: 9pt;"><br></span></span></span></span></span></span>
													</p>
													<p
														style="margin: 0cm 0cm 0.0001pt; font-size: 10pt; text-align: justify; font-family: &amp; quot;맑은 고딕&amp;quot;;">
														<span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">#</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림 시행에 관한 내용</span></span></span></span><span
															lang="EN-US"></span>
													</p>
													<p
														style="margin: 0cm 0cm 0.0001pt; font-size: 10pt; text-align: justify; font-family: &amp; quot;맑은 고딕&amp;quot;;">
														<span style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">“오호라</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">”는</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">&nbsp;회원가입</span></span></span></span><span
															lang="EN-US"><span style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">,</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">주문안내</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">,</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">배송안내 등 비광고성 정보를 네이버 알림으로
																		알려드립니다</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">.</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림을 통해 안내되는 정보를
																		와이파이가 아닌 이동통신망으로 이용할 경우</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">,</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림 수신 중 데이터 요금이 발생할
																		수 있습니다</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">.</span></span></span></span><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">&nbsp;</span></span></span></span></span><span
															style="font-family: Arial;"><span
															style="font-family: Arial;"><span
																style="font-size: 10pt;"><span
																	style="font-size: 9pt;">네이버 알림 수신을 원치 않으실 경우 반드시
																		알림을 해제하여 주시기 바랍니다</span></span></span></span><span lang="EN-US"><span
															style="font-family: Arial;"><span
																style="font-family: Arial;"><span
																	style="font-size: 10pt;"><span
																		style="font-size: 9pt;">.</span></span></span></span><span
															style="color: red;"></span></span>
													</p>
													<div>
														<span lang="EN-US"><br></span>
													</div>
													<p
														style="margin: 0cm 0cm 0.0001pt; font-size: 10pt; text-align: justify; font-family: &amp; quot;맑은 고딕&amp;quot;;">
														<span lang="EN-US"><span
															style="font-family: Arial;"></span></span>
													</p>
												</div>
											</div>
										</div>
									</div>
                                    <div class="background-zone" style="display: none;"></div>

								</div>
								<!-- innerJoin -->
							</div>
                        
                                                   
                            <div class="innerJoinWrap2nd">

                                <div class="innerJoin2nd">
                                    <div class="innerJoin2ndbox">
                                        <table class="formTable">
                                            <colgroup>
                                                <col style="width:150px;">
                                                <col style="width:auto;">
                                            </colgroup>
                                            <tbody>
											<!-- 아이디 입력란 및 중복 확인 -->
											<tr class="checked-vali">
											    <th scope="row">
											        <span class="SP_th_Title">아이디</span>
											        <span class="SP_required">*</span>
											    </th>
											    <td>
											        <input type="text" id="member_id" name="member_id" data-checked="false">
											        <button type="button" onclick="checkDuplication('id', 'member_id', 'idMsg')">중복 확인</button>
											        <!-- 중복 검사 완료 시 뜨는 메시지 -->
											        <span id="idMsg" class="txtOK error"></span>
											    </td>
											</tr>
                                                <tr class="checked-vali">
                                                    <th scope="row">
                                                        <span class="SP_th_Title">비밀번호</span>
                                                        <span class="SP_required">*</span>
                                                    </th>
                                                    <td>
                                                        <input type="password" id="passwd" name="passwd">
                                                        <div class="pwGuide">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</div>
                                                    </td>
                                                </tr>

                                                <tr class="checked-vali">
                                                    <th scope="row">
                                                        <span class="SP_th_Title">비밀번호<br>확인
                                                            <span class="SP_required">*</span>
                                                        </span>
                                                    </th>
                                                    <td>
                                                        <input type="password" id="passwd-confirm" name="passwd-confirm">
                                                        <span id="pwConfirmMsg" class=""></span>
                                                    </td>
                                                </tr>

                                                <tr class="checked-vali">
                                                    <th scope="row">
                                                        <span class="SP_th_Title">이름</span>
                                                        <span class="SP_required">*</span>
                                                    </th>
                                                    <td>
                                                        <span id="nameContent">
                                                            <input type="text" id="name" name="name">
                                                        </span>
                                                    </td>
                                                </tr>
                                                
                                                <!-- 이메일 입력란 및 중복 확인 -->
												<tr class="checked-vali">
												    <th scope="row">
												        <span class="SP_th_Title">이메일</span>
												        <span class="SP_required">*</span>
												    </th>
												    <td>
												        <input type="text" id="email" name="email" data-checked="false">
												        <button type="button" onclick="checkDuplication('email', 'email', 'emailMsg')">중복 확인</button>
												        <!-- 중복 검사 완료 시 뜨는 메시지 -->
												        <span id="emailMsg" class="txtOK error"></span>

												    </td>
												</tr>

              
													<!-- 휴대폰 번호 입력란 및 중복 확인 -->
													<tr class="checked-vali">
													
													    <th scope="row">
													        <span class="SP_th_Title">휴대폰</span>
													     													        																	
													        <span class="SP_required">*</span>
													    </th>
													    
													    <td>
													        <input type="text" id="phone" name="phone" data-checked="false">
													        <button type="button" onclick="checkDuplication('phone', 'phone', 'phoneMsg')">휴대폰 인증</button>
													        
													        <!-- 중복 검사 완료 시 뜨는 메시지 -->
													        <span id="phoneMsg" class="txtOK error"></span>
													        
												        	<!-- 인증번호 입력 및 확인 버튼 (초기에는 hidden 상태) -->
													        <div id="authSection" style="display:none;">
													        
													            <input type="text" id="authCode" placeholder="인증번호 입력">
													            <button type="button" onclick="verifyAuthCode()">인증번호 확인</button> <br>
													            
													         <span id="authMsg"></span>
														         
														    </div>
														    
														    
													    </td>
													    
								
														        											    
													</tr>

                                            </tbody>
                                        
                   
                   
                                       </table>
                                    </div>
                                </div>
                            </div>
                            <!-- innerJoinWrap -->

                            <div class="innerJoinWrap3rd">
                                <div class="innerJoin3rd">
                                    <div class="tableTopWrap">
                                        <div class="tableTopTitle">추가정보</div>
                                    </div>
                                    <div class="table-container2">
                                        <table class="table3">
											<tbody>
												<colgroup>
													<col style="width:150px;">
													<col style="width:auto;">
												</colgroup>
												<tr class="birth">
													<th scope="row">
														<span class="SP_th_Title">생년<br>월일</span>
													</th>
													<td>
														<input type="text" id="birth-year" name="birth-year" placeholder="년도" maxlength="4">
														<input type="text" id="birth-month" name="birth-month" placeholder="월" maxlength="4">
														<input type="text" id="birth-day" name="birth-day" placeholder="일" maxlength="4">
													</td>
												</tr>
											</tbody>	
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="SP_joinsubmit_wrap inner_join_wrap">
                                <div class="inner_join">
                                     <button type="submit" class="SP_cm_btn SP_btn_black_bg">회원 가입하기</button>
                                </div>
                            </div>
                           </form>                                                   
						</div>		
				</div>
			</div>

		</div>
	</div>

	    					<!-- 모달창 구조: 페이지의 마지막 부분에 추가 -->
							<div id="modal" class="modal">
							    <div class="modal-content">
							        <span class="close-btn">&times;</span>
							        <div id="modalText"></div>
							    </div>
							</div>
</body>
<%@include file="footer.jsp" %>
<script>
document.addEventListener('DOMContentLoaded', function() {
    window.showModal = function(button) {
    	 //alert("클릭!");

    	    // 버튼의 부모 요소 다음에 위치한 약관 내용 요소 찾기
    	    var contentElement = button.parentElement.nextElementSibling.querySelector('.fr-view');

    	    if (contentElement) {
    	    	
    	    
    	        // 텍스트만 가져오기 (태그 제외)
    	        var content = contentElement.textContent;
    	        
    	        // 가져온 텍스트를 콘솔에 출력해서 확인
    	        console.log("모달에 표시할 텍스트: ", content);

    	        // 모달창을 띄우기 위한 모달 요소 가져오기
    	        var modal = document.getElementById('modal');
    	        var modalText = document.getElementById('modalText');

    	        // 모달 내용 설정
    	        modalText.innerText = content; // textContent 또는 innerText 사용 가능

    	        // 모달창 보이기
    	        modal.style.display = 'block';
    	    } else {
    	        console.error("contentElement를 찾을 수 없습니다.");
    	    }
    }

    // 모달 닫기 버튼 처리
    document.querySelector('.close-btn').addEventListener('click', function() {
        document.getElementById('modal').style.display = 'none';
    });

    // 모달 외부를 클릭 시 모달 닫기
    window.addEventListener('click', function(event) {
        var modal = document.getElementById('modal');
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    });
});
</script>

</html>