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
<link rel="stylesheet" href="../resources/cdn-main/orderlist_cancel.css">
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
      src="https://www.ohora.kr/optimize/images/pc/common/PC_header_kakao_0526.webp"
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
      <script>
        SMARTPC_GLOBAL_OBJECT.page = "mypage";
      </script>
      <div id="SP_mypage_wrap">
        <div class="SP_subSection large">
          <h2 class="SP_subTitle"><span class="eng_font">order</span></h2>
        </div>

        <div class="SP_layoutFix">
          <div
            class="xans-element- xans-myshop xans-myshop-orderhistorytab SP_myOrderlist_tab"
          >
            <ul class="menu">
              <li class="tab_class_cs">
                <a href="../orderlist_log/orderlist_log.html">
                  주문내역조회(<span id="xans_myshop_total_orders_cs">0</span
                  >)</a
                >
              </li>
              <li class="tab_class selected">
                <a
                  href="/myshop/order/list.html?history_start_date=2024-07-29&amp;history_end_date=2024-10-27&amp;past_year=2023"
                  >취소/반품/교환 내역 (<span id="xans_myshop_total_orders"
                    >0</span
                  >)</a
                >
              </li>
            </ul>
          </div>

          <form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
            <div
              class="xans-element- xans-myshop xans-myshop-orderhistoryhead SP_myOrderlist_srh"
            >
              <fieldset class="SP_myOrderlist_fildeset">
                <legend>검색기간설정</legend>
                <div
                  class="stateSelect SP_myOrderlist_li SP_ordSrh_chooseSel"
                ></div>
                <div class="SP_myOrderlist_li SP_ordSrh_chooseBtn">
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="00"
                    >오늘</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="07"
                    >1주일</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="30"
                    >1개월</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="90"
                    >3개월</a
                  >
                  <a href="#none" class="SP_cm_btn SP_btn_gray_bd" days="180"
                    >6개월</a
                  >
                </div>
                <div class="SP_myOrderlist_li SP_ordSrh_chooseSel">
                  <span class="SP_startday"
                    ><input
                      id="history_start_date"
                      name="history_start_date"
                      class="fText hasDatepicker"
                      readonly="readonly"
                      size="10"
                      value="2024-07-29"
                      type="text" /><button
                      type="button"
                      class="ui-datepicker-trigger"
                    >
                      <img
                        src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
                        alt="..."
                        title="..."
                      /></button></span
                  ><span class="SP_extraTxt">~</span
                  ><span class="SP_endday"
                    ><input
                      id="history_end_date"
                      name="history_end_date"
                      class="fText hasDatepicker"
                      readonly="readonly"
                      size="10"
                      value="2024-10-27"
                      type="text" /><button
                      type="button"
                      class="ui-datepicker-trigger"
                    >
                      <img
                        src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
                        alt="..."
                        title="..."
                      /></button
                  ></span>
                </div>
                <div class="SP_myOrderlist_li SP_ordSrh_chooseSubmit">
                  조회<span
                    ><input
                      alt="조회"
                      id="order_search_btn"
                      type="image"
                      src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"
                  /></span>
                </div>
              </fieldset>
              <ul class="SP_orderlist_srh_guide">
                <li>
                  기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난
                  주문내역을 조회하실 수 있습니다.
                </li>
                <li>
                  주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수
                  있습니다.
                </li>
                <li class="">
                  취소/교환/반품 신청은 배송완료일 기준 7일까지 가능합니다.
                </li>
              </ul>
            </div>
            <input id="mode" name="mode" value="" type="hidden" />
            <input id="term" name="term" value="" type="hidden" />
          </form>

          <div
            class="xans-element- xans-myshop xans-myshop-orderhistorytab SP_myOrderlist_tab"
          >
            <h3 class="SP_contTitle">주문 목록</h3>
            <table border="1" summary="" class="SP_tableSt01_isThumNail">
              <colgroup>
                <col style="width: 200px" />
                <col style="width: 120px" />
                <col style="width: auto" />
                <col style="width: 70x" />
                <col style="width: 120px" />
                <col style="width: 150px" />
                <col style="width: 160px" />
                <col style="width: 110px" />
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">주문일자 [주문번호]</th>
                  <th scope="col">이미지</th>
                  <th scope="col">상품정보</th>
                  <th scope="col">수량</th>
                  <th scope="col">상품구매금액</th>
                  <th scope="col">주문처리상태</th>
                  <th scope="col">취소/교환/반품</th>
                  <th scope="col">주문취소</th>
                </tr>
              </thead>
            </table>
            <p class="SP_message">주문 내역이 없습니다.</p>
          </div>

          <div
            class="xans-element- xans-myshop xans-myshop-orderhistorypaging SP_pagenation_wrap"
          >
            <!--
            * 사용처
            - /myshop/order/list.html
          --></div>
        </div>
      </div>

      <!-- cre.ma / init 스크립트 (PC) / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
      <script>
        (function (i, s, o, g, r, a, m) {
          if (s.getElementById(g)) {
            return;
          }
          (a = s.createElement(o)), (m = s.getElementsByTagName(o)[0]);
          a.id = g;
          a.async = 1;
          a.src = r;
          m.parentNode.insertBefore(a, m);
        })(
          window,
          document,
          "script",
          "crema-jssdk",
          "//widgets.cre.ma/ohora.kr/init.js"
        );
      </script>
    </div>

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

    <script>
      (function (i, s, o, g, r, a, m) {
        if (s.getElementById(g)) {
          return;
        }
        (a = s.createElement(o)), (m = s.getElementsByTagName(o)[0]);
        a.id = g;
        a.async = 1;
        a.src = r;
        m.parentNode.insertBefore(a, m);
      })(
        window,
        document,
        "script",
        "crema-jssdk",
        "//widgets.cre.ma/ohora.kr/init.js"
      );
    </script>
    <!-- 메인 전체 컨테이너 -->
  </body>
  <%@include file="footer.jsp" %>
</html>
