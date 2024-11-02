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
<link rel="stylesheet" href="../resources/cdn-main/termsofservice.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="header.jsp" %>
<body>
    <img
      src="https://www.ohora.kr/optimize/images/pc/common/PC_header_lamp2.webp"
      alt=""
      class="header"
      style
      width="100%"
    />
    <header>
      <div class="SP_top_wrap">
        <div class="layout_Top">
          <div
            class="xans-element- xans-layout xans-layout-statelogoff SP_gnb_inr"
          >
            <a href=""><span class="title">회원가입 &nbsp;&nbsp;|</span></a>
            <a href="" class="log"><span class="title">로그인</span></a>
          </div>
        </div>
      </div>

      <div id="nav">
        <div>
          <div class="SMS_fixed_inner">
            <div
              class="xans-element- xans-layout xans-layout-logotop fixed_logo"
            >
              <a href="/" style="display: block; text-align: center">
                <img
                  src="https://ohora.kr/web/upload/logo/ohora_BI_logotype_w.png"
                  id="navLogo"
                />
              </a>
            </div>

            <!-- 헤더 주메뉴 -->
            <div class="gnb_menu_container no-hover">
              <ul class="gnb_menu_wrap menu_1ul">
                <li class="eng_font menu_1li submenu">
                  <a href="/product/list.html?cate_no=121">new</a>
                </li>
                <li class="eng_font menu_1li submenu">
                  <a href="/product/list.html?cate_no=120">best</a>
                </li>

                <li class="product">
                  <a href="/product/list.html?cate_no=44">product</a>
                  <!-- 마우스 오버 시 나오는 영역(product) -->
                  <ul class="menu_2ul">
                    <li>
                      <a href="/product/list.html?cate_no=160"
                        ><span>네일</span></a
                      >
                    </li>
                    <li>
                      <a href="/product/list.html?cate_no=161"
                        ><span>페디</span></a
                      >
                    </li>
                    <li>
                      <a href="/product/list.html?cate_no=470"
                        ><span>커스텀</span></a
                      >
                    </li>
                    <li>
                      <a href="/product/list.html?cate_no=49"
                        ><span>케어 &amp; 툴</span></a
                      >
                    </li>
                  </ul>
                  <!-- //마우스 오버 시 나오는 영역(product) -->
                </li>
                <li class="eng_font menu_1li submenu">
                  <a href="/product/list.html?cate_no=671">outlet</a>
                </li>

                <!-- 마우스 오버 시 나오는 영역(2+1) -->
                <ul class="menu_2ul"></ul>
                <!-- //마우스 오버 시 나오는 영역(2+1) -->
                <li class="eng_font">
                  <a href="/event/index.html">event</a>
                </li>
                <li class="eng_font">
                  <a href="/board/gallery/list.html?board_no=13">how to</a>
                </li>
              </ul>
            </div>
            <!-- //헤더 주메뉴 -->
            <div class="icon_wrap">
              <div class="small_icon search_fixed_btn">
                <img
                  src="https://ohora.kr/web/upload/common/icon_ham_search.svg"
                  alt=""
                />
              </div>
              <div
                class="xans-element- xans-layout xans-layout-orderbasketcount small_icon m_cart common_cart"
              >
                <a href="/order/basket.html"
                  ><b class="count EC-Layout-Basket-count">0</b>
                  <img
                    src="https://ohora.kr/web/upload/common/icon_cart.svg"
                    alt=""
                /></a>
              </div>
              <div class="small_icon m_menu active">
                <a class="SMS_menu">
                  <img
                    src="https://ohora.kr/web/upload/common/icon_menu.svg"
                    alt=""
                  />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- 콘텐츠 -->
    <div id="contents">
      <div class="SP_subContHeader">
        <h2 class="SP_subTitle eng_font">
          <span class="eng_font">AGREEMENT</span>
        </h2>
      </div>
      <style type="text/css">
        .agree span {
          font-family: 'Noto Sans KR', sans-serif!important;
          font-size: 16px!important;
          word-break: keep-all!important;
          line-height: 1.5!important;
          color:#000!important;
        }      
      </style>
      <div class="SP_extraContainer SP_subContHeader">
        <div class="SP_layoutFix">
          <div
            class="xans-element- xans-mall xans-mall-term ec-base-box typeThinBg"
          >
            <div class="agree">
              <div class="fr-view fr-view-mall-agreement">
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제1조(목적)&nbsp;</span
                        ></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-size: 9pt"
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >이 약관은 글루가 회사(전자상거래 사업자)가 운영하는
                            오호라 사이버 몰(이하 “몰”이라 한다)에서 제공하는
                            인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에
                            있어 사이버 몰과 이용자의 권리·의무 및 책임 사항을
                            규정함을 목적으로 합니다.&nbsp;</span
                          ></span
                        ></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도
                          그 성질에 반하지 않는 한 이 약관을 준용합니다.」</span
                        ></span
                      ></span
                    ></span
                  >
                </p>
                <p><br /></p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt">제2조(정의)</span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”이란 오호라가 재화 또는 용역(이하 “재화 등”이라
                          함)을 이용자에게 제공하기 위하여 컴퓨터 등
                          정보통신설비를 이용하여 재화 등을 거래할 수 있도록
                          설정한 가상의 영업장을 말하며, 아울러 사이버몰을
                          운영하는 사업자의 의미로도 사용합니다.&nbsp;</span
                        ></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이
                          제공하는 서비스를 받는 회원 및 비회원을
                          말합니다.&nbsp;</span
                        ></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서,
                          계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는
                          자를 말합니다.&nbsp;</span
                        ></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이
                          제공하는 서비스를 이용하는 자를 말합니다.&nbsp;</span
                        ></span
                      ></span
                    ></span
                  >
                </p>
                <p><br /></p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제3조 (약관 등의 명시와 설명 및 개정)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소
                          소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를
                          포함), 전화번호.모사전송번호.전자우편주소,
                          사업자등록번호, 통신판매업 신고번호, 개인정보보호
                          책임자 등을 이용자가 쉽게 알 수 있도록 오호라
                          사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만,
                          약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록
                          할 수 있습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰은 이용자가 약관에 동의하기에 앞서 약관에
                          정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과
                          같은 중요한 내용을 이용자가 이해할 수 있도록 별도의
                          연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을
                          구하여야 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ “몰”은 「전자상거래 등에서의 소비자보호에 관한
                          법률」, 「약관의 규제에 관한 법률」, 「전자문서 및
                          전자거래기본법」, 「전자금융거래법」, 「전자서명법」,
                          「정보통신망 이용촉진 및 정보보호 등에 관한 법률」,
                          「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련
                          법을 위배하지 않는 범위에서 이 약관을 개정할 수
                          있습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ “몰”이 약관을 개정할 경우에는 적용 일자 및 개정
                          사유를 명시하여 현행약관과 함께 몰의 초기화면에 그
                          적용 일자 7일 이전부터 적용 일자 전일까지 공지합니다.
                          다만, 이용자에게 불리하게 약관 내용을 변경하는
                          경우에는 최소한 30일 이상의 사전 유예기간을 두고
                          공지합니다. 이 경우 “몰“은 개정 전 내용과 개정 후
                          내용을 명확하게 비교하여 이용자가 알기 쉽도록
                          표시합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용
                          일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미
                          체결된 계약에 대해서는 개정 전의 약관조항이 그대로
                          적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관
                          조항의 적용을 받기를 원하는 뜻을 제3항에 의한
                          개정약관의 공지 기간 내에 “몰”에 송신하여 “몰”의
                          동의를 받은 경우에는 개정약관 조항이 적용됩니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에
                          관하여는 전자상거래 등에서의 소비자보호에 관한 법률,
                          약관의 규제 등에 관한 법률, 공정거래위원회가 정하는
                          전자상거래 등에서의 소비자 보호 지침 및 관계 법령 또는
                          상관례에 따릅니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p><br /></p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제4조(서비스의 제공 및 변경)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 다음과 같은 업무를 수행합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 1. 재화 또는 용역에 대한 정보 제공 및
                          구매계약의 체결
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 2. 구매계약이 체결된 재화 또는 용역의 배송
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 3. 기타 “몰”이 정하는 업무
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의
                          변경 등의 경우에는 장차 체결되는 계약에 의해 제공할
                          재화 또는 용역의 내용을 변경할 수 있습니다. 이
                          경우에는 변경된 재화 또는 용역의 내용 및 제공 일자를
                          명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에
                          즉시 공지합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의
                          내용을 재화 등의 품절 또는 기술적 사양의 변경 등의
                          사유로 변경할 경우에는 그 사유를 이용자에게 통지
                          가능한 주소로 즉시 통지합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를
                          배상합니다. 다만, “몰”이 고의 또는 과실이 없음을
                          입증하는 경우에는 그러하지 아니합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p><br /></p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제5조(서비스의 중단)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 컴퓨터 등 정보통신설비의 보수점검.교체 및
                          고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의
                          제공을 일시적으로 중단할 수 있습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로
                          중단됨으로 인하여 이용자 또는 제3자가 입은 손해에
                          대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을
                          입증하는 경우에는 그러하지 아니합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ 사업 종목의 전환, 사업의 포기, 업체 간의 통합 등의
                          이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은
                          제8조에 정한 방법으로 이용자에게 통지하고 당초
                          “몰”에서 제시한 조건에 따라 소비자에게 보상합니다.
                          다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는
                          이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는
                          통화가치에 상응하는 현물 또는 현금으로 이용자에게
                          지급합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p><br /></p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제6조(회원가입)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① 이용자는 “몰”이 정한 가입 양식에 따라 회원 정보를
                          기입한 후 이 약관에 동의한다는 의사표시를 함으로서
                          회원가입을 신청합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한
                          이용자 중 다음 각 호에 해당하지 않는 한 회원으로
                          등록합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 1. 가입신청자가 이 약관 제7조 제3항에 의하여
                          이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조
                          제3항에 의한 회원자격 상실 후 3년이 경과한 자로서
                          “몰”의 회원 재가입 승낙을 얻은 경우에는 예외로 한다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 2. 등록 내용에 허위, 기재누락, 오기가 있는
                          경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 3. 기타 회원으로 등록하는 것이 “몰”의 기술상
                          현저히 지장이 있다고 판단되는 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ 회원가입 계약의 성립 시기는 “몰”의 승낙이 회원에게
                          도달한 시점으로 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우,
                          상당한 기간 이내에 “몰”에 대하여 회원 정보 수정 등의
                          방법으로 그 변경사항을 알려야 합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p><br /></p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제7조(회원 탈퇴 및 자격 상실 등)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며
                          “몰”은 즉시 회원탈퇴를 처리합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은
                          회원자격을 제한 및 정지시킬 수 있습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 1. 가입 신청 시에 허위 내용을 등록한 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 2. “몰”을 이용하여 구입한 재화 등의 대금, 기타
                          “몰”이용에 관련하여 회원이 부담하는 채무를 기일에
                          지급하지 않는 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 3. 다른 사람의 “몰” 이용을 방해</span
                        ></span
                      ></span
                    ></span
                  ><span style="font-size: 9pt"
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >하거나 그 정보를 도용하는 등 전자상거래 질서를
                            위협하는 경우
                          </span></span
                        ></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-size: 9pt"></span
                  ><span
                    lang="EN-US"
                    style="
                      font-size: 9pt;
                      font-family: 돋움;
                      letter-spacing: 0pt;
                    "
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">&nbsp; 4. “</span></span
                        ></span
                      ></span
                    ></span
                  ><span style="font-size: 9pt"
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">몰</span></span
                        ></span
                      ></span
                    ></span
                  ><span
                    lang="EN-US"
                    style="
                      font-size: 9pt;
                      font-family: 돋움;
                      letter-spacing: 0pt;
                    "
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">”</span></span
                        ></span
                      ></span
                    ></span
                  ><span style="font-size: 9pt"
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >을 이용하여 법령 또는 이 약관이 금지하거나
                            공서양속에 반하는 행위를 하는 경우
                          </span></span
                        ></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-size: 9pt; letter-spacing: 0pt"
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">③ </span></span
                        ></span
                      ></span
                    ></span
                  ><span
                    lang="EN-US"
                    style="
                      font-size: 9pt;
                      font-family: 돋움;
                      letter-spacing: 0pt;
                    "
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">“</span></span
                        ></span
                      ></span
                    ></span
                  ><span style="font-size: 9pt"
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">몰</span></span
                        ></span
                      ></span
                    ></span
                  ><span
                    lang="EN-US"
                    style="
                      font-size: 9pt;
                      font-family: 돋움;
                      letter-spacing: 0pt;
                    "
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">”</span></span
                        ></span
                      ></span
                    ></span
                  ><span style="font-size: 9pt"
                    ><span style="font-family: 돋움, dotum"
                      ><span style="font-size: 9pt"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >이 회원 자격을 제한·</span
                          ></span
                        ></span
                      ></span
                    ></span
                  ><span style="font-size: 9pt; font-family: 돋움, dotum"
                    >설치비 등의 비용부담과 관련한 내용에 대한 확인
                  </span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 4. 이 약관에 동의하고 위 3.호의 사항을
                          확인하거나 거부하는 표시(예, 마우스 클릭)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 5. 재화 등의 구매신청 및 이에 관한 확인 또는
                          “몰”의 확인에 대한 동의
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 6. 결제 방법의 선택
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”이 제3자에게 구매자 개인정보를 제공·위탁할
                          필요가 있는 경우 실제 구매신청 시 구매자의 동의를
                          받아야 하며, 회원가입 시 미리 포괄적으로 동의를 받지
                          않습니다. 이 때 “몰”은 제공되는 개인정보 항목,
                          제공받는 자, 제공받는 자의 개인정보 이용 목적 및
                          보유·이용 기간 등을 구매자에게 명시하여야 합니다. 다만
                          「정보통신망이용촉진 및 정보보호 등에 관한 법률」
                          제25조 제1항에 의한 개인정보 처리위탁의 경우 등 관련
                          법령에 달리 정함이 있는 경우에는 그에 따릅니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제10조 (계약의 성립)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에
                          해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와
                          계약을 체결하는 경우에는 법정대리인의 동의를 얻지
                          못하면 미성년자 본인 또는 법정대리인이 계약을 취소할
                          수 있다는 내용을 고지하여야 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 1. 신청 내용에 허위, 기재누락, 오기가 있는
                          경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 2. 미성년자가 담배, 주류 등 청소년보호법에서
                          금지하는 재화 및 용역을 구매하는 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 3. 기타 구매신청에 승낙하는 것이 “몰” 기술상
                          현저히 지장이 있다고 판단하는 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”의 승낙이 제12조제1항의 수신확인통지형태로
                          이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ “몰”의 승낙의 의사표시에는 이용자의 구매 신청에
                          대한 확인 및 판매 가능 여부, 구매신청의 정정 취소 등에
                          관한 정보 등을 포함하여야 합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제11조(지급방법)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은
                          다음 각 호의 방법중 가용한 방법으로 할 수 있습니다.
                          단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에
                          어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >3. 온라인무통장입금
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >4. 전자화폐에 의한 결제
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >5. 수령 시 대금지급
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >6. 마일리지 등 “몰”이 지급한 포인트에 의한 결제
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한
                          결제
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >8. 기타 전자적 지급 방법에 의한 대금 지급 등
                        </span></span
                      ></span
                    ></span
                  ><br /><br />제 12조 (쿠폰/적립금/마일리지 제도의 운영)
                  &nbsp;<br />① "몰"은 "이용자"의 "몰"의 이용, 재화 등 구입,
                  이벤트 참여시 경품 등 "몰"이 제시한 사용가능 조건을 달성한
                  경우, "몰"의 정책에 따라 "이용자"에게
                  &nbsp;쿠폰/적립금/마일리지제도를 운영할 수 있습니다.<br />②
                  "이용자"가 명시적으로 쿠폰/적립금/마일리지의 부여 중단을
                  요청한 경우를 제외하고, "이용자"가 동의한 약관 및 "몰"의 정책
                  상 쿠폰/적립금/마일리지 부여의무가 있는 경우 "몰"은
                  이용자"에게 쿠폰/적립금/마일리지을 부여할 수 있습니다.<br />③
                  적립금 및 마일리지는 “몰”이 "이용자"에게 “몰”의 정책에 따라
                  부여하는 결제수단을 말합니다.<br />④ 쿠폰은 “몰”이
                  "이용자"에게 “몰”의 정책에 따라 일정액 또는 일정비율을 할인
                  받을 수 있는 수단을 말합니다.<br />⑤ 쿠폰/적립금/마일리지는
                  다음 각 호의 사유에 해당하는 경우 소멸되어 사용할 수
                  없습니다.<br />1. 사전에 명시된 쿠폰/적립금/마일리지
                  유효기간이 경과하는 경우<br />2. 쿠폰/적립금/마일리지 사용가능
                  조건 및 소멸에 대한 내용이 별도로 공지된 경우<br />⑥
                  "이용자"가 명시적으로 카카오톡 통지를 거절한 경우를 제외하고,
                  "몰"은 쿠폰/적립금/마일리지의 발급 시 및
                  쿠폰/적립금/마일리지의 유효기간이 지나기 전에 유효기간의 도래,
                  유효기간 내 사용방법 등을 "이용자"에게 카카오톡으로
                  통지합니다.<br />쿠폰/적립금/마일리지 유효기간 내임에도
                  불구하고 "몰"의 귀책사유로 상품 등의 공급이 전면 중단되는 등
                  사용이 불가능한 경우, "몰"은 "이용자"에게
                  &nbsp;쿠폰/적립금/마일리지에 해당되는 금액 전액을
                  환불합니다.<br />⑦ 쿠폰/적립금/마일리지의 제공 및 사용 등과
                  관련한 사항은 이용 약관 또는 "몰"의 운영 정책이 정한 바에
                  따릅니다.<br /><br />
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제13조(수신확인통지.구매신청 변경 및 취소)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 이용자의 구매신청이 있는 경우 이용자에게
                          수신확인통지를 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이
                          있는 경우에는 수신확인통지를 받은 후 즉시 구매신청
                          변경 및 취소를 요청할 수 있고 “몰”은 배송 전에
                          이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라
                          처리하여야 합니다. 다만 이미 대금을 지불한 경우에는
                          제15조의 청약철회 등에 관한 규정에 따릅니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제14조(재화 등의 공급)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의
                          약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에
                          재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의
                          필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의
                          대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는
                          일부를 받은 날부터 3영업일 이내에 조치를 취합니다.
                          이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행
                          사항을 확인할 수 있도록 적절한 조치를 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별
                          배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약
                          “몰”이 약정 배송기간을 초과한 경우에는 그로 인한
                          이용자의 손해를 배상하여야 합니다. 다만 “몰”이
                          고의·과실이 없음을 입증한 경우에는 그러하지
                          아니합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt">제15조(환급) </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >“몰”은 이용자가 구매 신청한 재화 등이 품절 등의
                          사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그
                          사유를 이용자에게 통지하고 사전에 재화 등의 대금을
                          받은 경우에는 대금을 받은 날부터 3영업일 이내에
                          환급하거나 환급에 필요한 조치를 취합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제16조(청약철회 등)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”과 재화 등의 구매에 관한 계약을 체결한 이용자는
                          「전자상거래 등에서의 소비자보호에 관한 법률」 제13조
                          제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을
                          받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는
                          재화 등을 공급받거나 재화 등의 공급이 시작된 날을
                          말합니다)부터 7일 이내에는 청약의 철회를 할 수
                          있습니다. 다만, 청약철회에 관하여 「전자상거래
                          등에서의 소비자보호에 관한 법률」에 달리 정함이 있는
                          경우에는 동 법 규정에 따릅니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② 이용자는 재화 등을 배송받은 경우 다음 각 호의 1에
                          해당하는 경우에는 반품 및 교환을 할 수 없습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 1. 이용자에게 책임 있는 사유로 재화 등이 멸실
                          또는 훼손된 경우(다만, 재화 등의 내용을 확인하기
                          위하여 포장 등을 훼손한 경우에는 청약철회를 할 수
                          있습니다)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 2. 이용자의 사용 또는 일부 소비에 의하여 재화
                          등의 가치가 현저히 감소한 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 3. 시간의 경과에 의하여 재판매가 곤란할 정도로
                          재화등의 가치가 현저히 감소한 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >&nbsp; 4. 같은 성능을 지닌 재화 등으로 복제가 가능한
                          경우 그 원본인 재화 등의 포장을 훼손한 경우
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ 제2항 제2호 내지 제4호의 경우에 “몰”이 사전에 청약
                          철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는
                          곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지
                          않았다면 이용자의 청약 철회 등이 제한되지 않습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의
                          내용이 표시·광고 내용과 다르거나 계약내용과 다르게
                          이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내,
                          그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에
                          청약철회 등을 할 수 있습니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제17조(청약철회 등의 효과)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일
                          이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이
                          경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그
                          지연기간에 대하여 「전자상거래 등에서의 소비자보호에
                          관한 법률 시행령」제21조의2에서 정하는 지연이자율(괄호
                          부분 삭제)을 곱하여 산정한 지연이자를 지급합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드
                          또는 전자화폐 등의 결제수단으로 재화 등의 대금을
                          지급한 때에는 지체 없이 당해 결제수단을 제공한
                          사업자로 하여금 재화 등의 대금의 청구를 정지 또는
                          취소하도록 요청합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한
                          비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회
                          등을 이유로 위약금 또는 손해배상을 청구하지 않습니다.
                          다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약
                          내용과 다르게 이행되어 청약철회 등을 하는 경우 재화
                          등의 반환에 필요한 비용은 “몰”이 부담합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ 이용자가 재화 등을 제공받을 때 발송비를 부담한
                          경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를
                          이용자가 알기 쉽도록 명확하게 표시합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제18조(개인정보보호)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 이용자의 개인정보 수집 시 서비스제공을
                          위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 회원가입 시 구매계약이행에 필요한 정보를
                          미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을
                          위하여 구매계약 이전에 본인확인이 필요한 경우로서
                          최소한의 특정 개인정보를 수집하는 경우에는 그러하지
                          아니합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ “몰”은 이용자의 개인정보를 수집·이용하는 때에는
                          당해 이용자에게 그 목적을 고지하고 동의를 받습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ “몰”은 수집된 개인정보를 목적 외의 용도로 이용할 수
                          없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게
                          제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그
                          목적을 고지하고 동의를 받습니다. 다만, 관련 법령에
                          달리 정함이 있는 경우에는 예외로 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를 받아야
                          하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및
                          전화번호, 기타 연락처), 정보의 수집목적 및 이용목적,
                          제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및
                          제공할 정보의 내용) 등 「정보통신망 이용촉진 및
                          정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을
                          미리 명시하거나 고지해야 하며 이용자는 언제든지 이
                          동의를 철회할 수 있습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의
                          개인정보에 대해 열람 및 오류정정을 요구할 수 있으며
                          “몰”은 이에 대해 지체 없이 필요한 조치를 취할 의무를
                          집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은
                          그 오류를 정정할 때까지 당해 개인정보를 이용하지
                          않습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를
                          처리하는 자를 최소한으로 제한하여야 하며 신용카드,
                          은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난,
                          유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의
                          손해에 대하여 모든 책임을 집니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는
                          개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는
                          당해 개인정보를 지체 없이 파기합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >⑨ “몰”은 개인정보의 수집·이용·제공에 관한 동의란을
                          미리 선택한 것으로 설정해두지 않습니다. 또한
                          개인정보의 수집·이용·제공에 관한 이용자의 동의거절시
                          제한되는 서비스를 구체적으로 명시하고, 필수수집항목이
                          아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의
                          거절을 이유로 회원가입 등 서비스 제공을 제한하거나
                          거절하지 않습니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제19조(“몰“의 의무)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 법령과 이 약관이 금지하거나 공서양속에
                          반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라
                          지속적이고, 안정적으로 재화.용역을 제공하는데 최선을
                          다하여야 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수
                          있도록 이용자의 개인정보(신용정보 포함)보호를 위한
                          보안 시스템을 갖추어야 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ “몰”이 상품이나 용역에 대하여 「표시.광고의
                          공정화에 관한 법률」 제3조 소정의 부당한
                          표시.광고행위를 함으로써 이용자가 손해를 입은 때에는
                          이를 배상할 책임을 집니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >④ “몰”은 이용자가 원하지 않는 영리목적의 광고성
                          전자우편을 발송하지 않습니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제20조(회원의 ID 및 비밀번호에 대한 의무)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① 제17조의 경우를 제외한 ID와 비밀번호에 관한
                          관리책임은 회원에게 있습니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게
                          해서는 안됩니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가
                          사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고
                          “몰”의 안내가 있는 경우에는 그에 따라야 합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제21조(이용자의 의무)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >이용자는 다음 행위를 하여서는 안 됩니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >1. 신청 또는 변경시 허위 내용의 등록
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >2. 타인의 정보 도용
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >3. “몰”에 게시된 정보의 변경
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >4. “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등)
                          등의 송신 또는 게시
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >5. “몰” 기타 제3자의 저작권 등 지적재산권에 대한 침해
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >6. “몰” 기타 제3자의 명예를 손상시키거나 업무를
                          방해하는 행위
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타
                          공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제22조(연결“몰”과 피연결“몰” 간의 관계)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① 상위 “몰”과 하위 “몰”이 하이퍼링크(예: 하이퍼링크의
                          대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로
                          연결된 경우, 전자를 연결 “몰”(웹사이트)이라고 하고
                          후자를 피연결 “몰”(웹사이트)이라고 합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② 연결“몰”은 피연결“몰”이 독자적으로 제공하는 재화
                          등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을
                          지지 않는다는 뜻을 연결“몰”의 초기화면 또는 연결되는
                          시점의 팝업화면으로 명시한 경우에는 그 거래에 대한
                          보증 책임을 지지 않습니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제23조(저작권의 귀속 및 이용제한)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰“이 작성한 저작물에 대한 저작권 기타
                          지적재산권은 ”몰“에 귀속합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게
                          지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제,
                          송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로
                          이용하거나 제3자에게 이용하게 하여서는 안됩니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을
                          사용하는 경우 당해 이용자에게 통보하여야 합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제24조(분쟁해결)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”은 이용자가 제기하는 정당한 의견이나 불만을
                          반영하고 그 피해를 보상처리하기 위하여
                          피해보상처리기구를 설치.운영합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”은 이용자로부터 제출되는 불만사항 및 의견은
                          우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가
                          곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시
                          통보해 드립니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과
                          관련하여 이용자의 피해구제신청이 있는 경우에는
                          공정거래위원회 또는 시·도지사가 의뢰하는
                          분쟁조정기관의 조정에 따를 수 있습니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"><br /></span></span></span
                  ></span>
                </p>
                <p>
                  <span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >제25조(재판권 및 준거법)
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한
                          소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는
                          경우에는 거소를 관할하는 지방법원의 전속관할로 합니다.
                          다만, 제소 당시 이용자의 주소 또는 거소가 분명하지
                          않거나 외국 거주자의 경우에는 민사소송법상의
                          관할법원에 제기합니다.
                        </span></span
                      ></span
                    ></span
                  ><br /><span style="font-family: 돋움, dotum"
                    ><span style="font-size: 9pt"
                      ><span style="font-size: 10pt"
                        ><span style="font-size: 9pt"
                          >② “몰”과 이용자 간에 제기된 전자상거래 소송에는
                          한국법을 적용합니다.
                        </span></span
                      ></span
                    ></span
                  >
                </p>
                <span style="font-family: 돋움, dotum"
                  ><span style="font-size: 9pt"
                    ><span style="font-size: 10pt"
                      ><span style="font-size: 9pt"
                        >부 칙(시행일) 이 약관은 2019년 7월 12일부터 시행합니다.
                        부 칙(시행일) 이 약관은 2019년 7월 12일부터 시행합니다.
                      </span></span
                    ></span
                  ></span
                >
                <div><br /></div>
                <div>
                  <p
                    class="MsoNormal"
                    style="
                      color: rgb(34, 34, 34);
                      font-family: Arial, Helvetica, sans-serif;
                      font-size: small;
                      background-image: initial;
                      background-position: initial;
                      background-size: initial;
                      background-repeat: initial;
                      background-attachment: initial;
                      background-origin: initial;
                      background-clip: initial;
                    "
                  >
                    <span
                      lang="EN-US"
                      style="
                        font-size: 9pt;
                        font-family: 굴림;
                        color: rgb(51, 51, 51);
                      "
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">#</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ></span
                    ><span
                      style="
                        font-size: 9pt;
                        font-family: 굴림;
                        color: rgb(51, 51, 51);
                      "
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >카카오톡</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >알림톡</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >시행에</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >관한</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >내용&nbsp;</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ></span
                    ><span
                      lang="EN-US"
                      style="font-size: 9pt; font-family: 굴림"
                      ><ins></ins><ins></ins
                    ></span>
                  </p>
                  <p
                    class="MsoNormal"
                    style="
                      color: rgb(34, 34, 34);
                      font-family: Arial, Helvetica, sans-serif;
                      font-size: small;
                      background-image: initial;
                      background-position: initial;
                      background-size: initial;
                      background-repeat: initial;
                      background-attachment: initial;
                      background-origin: initial;
                      background-clip: initial;
                    "
                  >
                    <span
                      style="
                        font-size: 9pt;
                        font-family: 굴림;
                        color: rgb(51, 51, 51);
                      "
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >“오호라”는</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >회원가입</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >,&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >주문안내</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >,&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >배송안내</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">등</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">비</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><wbr /><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >광고성</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >정보를</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >카카오톡</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >알림톡으로</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >알려드리며</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >,&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >만약</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">알</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><wbr /><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >림톡</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >수신이</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >불가능하거나</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >수신</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >차단하신</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >경우에는</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >일반</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><wbr /><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >문자메시지로</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >보내드립니다</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >.&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >카카오톡</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >알림톡을</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >통해</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >안내</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><wbr /><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >되는</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >정보를</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >와이파이가</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >아닌</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >이동통신망으로</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >이용할</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >경우</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><wbr /><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >,&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >알림톡</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >수신</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">중</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >데이터</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >요금이</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >발생할</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">수</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >있습니다</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt">.</span></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ><wbr /><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >카카오톡을</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >통해</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >발송되는</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >알림톡</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >수신을</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >원치</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >않으실</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><wbr /><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >경우</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >반드시</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >알림톡을</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >차단하여</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >주시기</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >바랍니다</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >.&nbsp;</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ></span
                    ><span
                      lang="EN-US"
                      style="font-size: 9pt; font-family: 굴림"
                      ><ins></ins><ins></ins
                    ></span>
                  </p>
                  <p
                    class="MsoNormal"
                    style="
                      color: rgb(34, 34, 34);
                      font-family: Arial, Helvetica, sans-serif;
                      font-size: small;
                      background-image: initial;
                      background-position: initial;
                      background-size: initial;
                      background-repeat: initial;
                      background-attachment: initial;
                      background-origin: initial;
                      background-clip: initial;
                    "
                  >
                    <span lang="EN-US" style="font-size: 9pt; font-family: 굴림"
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >&nbsp;</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><ins></ins><ins></ins
                    ></span>
                  </p>
                  <p
                    class="MsoNormal"
                    style="
                      color: rgb(34, 34, 34);
                      font-family: Arial, Helvetica, sans-serif;
                      font-size: small;
                      background-image: initial;
                      background-position: initial;
                      background-size: initial;
                      background-repeat: initial;
                      background-attachment: initial;
                      background-origin: initial;
                      background-clip: initial;
                    "
                  >
                    <span lang="EN-US" style="font-size: 9pt; font-family: 굴림"
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">#</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-size: 9pt; font-family: 굴림"
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >카카오톡 상담톡 시행에 관한 내용
                                  </span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"><ins></ins><ins></ins></span
                    ></span>
                  </p>
                  <p
                    class="MsoNormal"
                    style="
                      color: rgb(34, 34, 34);
                      font-family: Arial, Helvetica, sans-serif;
                      font-size: small;
                      background-image: initial;
                      background-position: initial;
                      background-size: initial;
                      background-repeat: initial;
                      background-attachment: initial;
                      background-origin: initial;
                      background-clip: initial;
                    "
                  >
                    <span
                      style="
                        font-size: 9pt;
                        font-family: 굴림;
                        color: rgb(51, 51, 51);
                      "
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >“오호라”는</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-size: 9pt; font-family: 굴림"
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >&nbsp;상담업무를 카카오톡 상담톡으로
                                    진행하며</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >,
                                    </span></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >만약 카카오톡을 통해 안내되는 상담
                                    내용을</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;Wi-Fi
                                    </span></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt">나</span></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >&nbsp;PC</span
                                    ></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >가 아닌 이동통신망으로 이용할 경우</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >,
                                    </span></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >데이터 요금이 발생할 수 있습니다</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt"
                                      >.
                                    </span></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span style="font-family: 돋움, dotum"
                        ><span style="font-size: 9pt"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt"
                              ><span style="font-family: Arial"
                                ><span style="font-size: 10pt"
                                  ><span style="font-size: 9pt"
                                    >카카오톡을 통해 상담을 원치 않으실 경우
                                    고객센터를 이용해 주시기 바랍니다</span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><span style="font-family: Arial"
                                  ><span style="font-size: 10pt"
                                    ><span style="font-size: 9pt">.</span></span
                                  ></span
                                ></span
                              ></span
                            ></span
                          ></span
                        ></span
                      ></span
                    >
                  </p>
                  <p
                    class="MsoNormal"
                    style="
                      color: rgb(34, 34, 34);
                      font-family: Arial, Helvetica, sans-serif;
                      font-size: small;
                      background-image: initial;
                      background-position: initial;
                      background-size: initial;
                      background-repeat: initial;
                      background-attachment: initial;
                      background-origin: initial;
                      background-clip: initial;
                    "
                  >
                    <span style="font-size: 9pt; font-family: 굴림"
                      ><span lang="EN-US"
                        ><span style="font-family: 돋움, dotum"
                          ><span style="font-size: 9pt"
                            ><span style="font-size: 10pt"
                              ><span style="font-size: 9pt"
                                ><br /></span></span></span></span></span
                    ></span>
                  </p>
                  <p
                    style="
                      margin: 0cm 0cm 0.0001pt;
                      font-size: 10pt;
                      text-align: justify;
                      font-family: '맑은 고딕';
                    "
                  >
                    <span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">#</span></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >네이버 알림 시행에 관한 내용</span
                          ></span
                        ></span
                      ></span
                    ><span lang="EN-US"></span>
                  </p>
                  <p
                    style="
                      margin: 0cm 0cm 0.0001pt;
                      font-size: 10pt;
                      text-align: justify;
                      font-family: '맑은 고딕';
                    "
                  >
                    <span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">“오호라</span></span
                        ></span
                      ></span
                    ><span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">”는</span></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >&nbsp;회원가입</span
                          ></span
                        ></span
                      ></span
                    ><span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">,</span></span
                          ></span
                        ></span
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">&nbsp;</span></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt">주문안내</span></span
                        ></span
                      ></span
                    ><span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">,</span></span
                          ></span
                        ></span
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">&nbsp;</span></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >배송안내 등 비광고성 정보를 네이버 알림으로
                            알려드립니다</span
                          ></span
                        ></span
                      ></span
                    ><span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">.</span></span
                          ></span
                        ></span
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">&nbsp;</span></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >네이버 알림을 통해 안내되는 정보를 와이파이가 아닌
                            이동통신망으로 이용할 경우</span
                          ></span
                        ></span
                      ></span
                    ><span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">,</span></span
                          ></span
                        ></span
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">&nbsp;</span></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >네이버 알림 수신 중 데이터 요금이 발생할 수
                            있습니다</span
                          ></span
                        ></span
                      ></span
                    ><span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">.</span></span
                          ></span
                        ></span
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">&nbsp;</span></span
                          ></span
                        ></span
                      ></span
                    ><span style="font-family: Arial"
                      ><span style="font-family: Arial"
                        ><span style="font-size: 10pt"
                          ><span style="font-size: 9pt"
                            >네이버 알림 수신을 원치 않으실 경우 반드시 알림을
                            해제하여 주시기 바랍니다</span
                          ></span
                        ></span
                      ></span
                    ><span lang="EN-US"
                      ><span style="font-family: Arial"
                        ><span style="font-family: Arial"
                          ><span style="font-size: 10pt"
                            ><span style="font-size: 9pt">.</span></span
                          ></span
                        ></span
                      ><span style="color: red"></span
                    ></span>
                  </p>
                  <div>
                    <span lang="EN-US"><br /></span>
                  </div>
                  <p
                    style="
                      margin: 0cm 0cm 0.0001pt;
                      font-size: 10pt;
                      text-align: justify;
                      font-family: '맑은 고딕';
                    "
                  >
                    <span lang="EN-US"
                      ><span style="font-family: Arial"></span
                    ></span>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
      <!---- snappush  start contact mail: support@snapvi.co.kr --->
      <div id="spm_page_type" style="display: none">sq_join_first_page</div>
      <script
        async=""
        type="text/javascript"
        src="//cdn.snapfit.co.kr/js/spm_f_common.js"
        charset="utf-8"
      ></script>
      <div id="spm_banner_main"></div>
      <!---- snappush  end -->
    </div>
    <!-- 콘텐츠 -->

    <!-- 아래 필수 -->
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
            <img src="../image/1.png" />
          </a>
          <a href="https://www.facebook.com/ohora.official" target="_blank">
            <img src="../image/2.png" />
          </a>
          <a href="https://pf.kakao.com/_axjYfj" target="_blank">
            <img src="../image/3.png" />
          </a>
          <a
            href="https://www.youtube.com/channel/UCV72a2QWRpEZjZYkWjXHZWQ"
            target="_blank"
          >
            <img src="../image/4.png" />
          </a>
          <a
            href="https://post.naver.com/my.nhn?memberNo=47439708"
            target="_blank"
          >
            <img src="../image/5.png" />
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
            <a href="#">마이페이지</a><br /><br />
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
            <a href="#">FAQ</a><br /><br />
            <a href="#">상담톡</a><br /><br />
            <a href="#">사용법</a><br /><br />
            <a href="#">공지사항</a>
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
        <span class="a"><a href="#">브랜드 소개</a></span>
        <span class="b"><a href="#">이용약관</a></span>
        <span class="c"><a href="#">개인정보처리방침</a></span>
      </div>
    </div>
  </body>
  <%@include file="footer.jsp" %>
</html>
