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
<link rel="stylesheet" href="../resources/cdn-main/notice.css">
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
      <div id="SP_boardPageChk">
        <div class="SP_layoutFix">
          <div
            class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002"
            style="padding-right: 6%; padding-left: 6%"
          >
            <div
              class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 SP_subContHeader"
            >
              <h2 class="SP_subTitle eng_font">
                <font color="#333333">Notice</font>
              </h2>
              <!-- <p class="SP_subTtileStxt">오호라 서비스 안내/공지 게시판 입니다.</p> -->
              <!-- <p class="imgArea"></p> -->
              <!-- 카테고리 분류 -->
              <div class="base_board_category displaynone">
                <ul></ul>
              </div>
              <!-- //카테고리 분류 -->
            </div>
            <!--
                  <div class="boardSort">
                      <span module="board_category_1002"></span>
                      <span module="board_ReplySort_1002"></span>
                  </div>
            -->
            <div class="ec-base-table SP_subSection gBorder">
              <table
                border="1"
                summary=""
                class="SP_tableSt02_isThead SP_cateBoard_table"
              >
                <colgroup
                  class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002"
                >
                  <!-- <col style="width:70px;" /> -->
                  <col style="width: 150px" class="displaynone" />
                  <col style="width: auto" />
                </colgroup>
                <thead
                  class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002"
                >
                  <!-- <th scope="col"> 번호</th> -->
                  <th scope="col">제목</th>
                </thead>
                <tbody
                  class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center"
                >
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 공지</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <strong>
                        <a
                          href="/article/notice/14/231005/"
                          style="color: #333333"
                          >[공지]개인정보 처리방침 변경 안내</a
                        >
                        <span class="txtEm"></span
                      ></strong>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 공지</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <strong>
                        <a
                          href="/article/notice/14/229221/"
                          style="color: #333333"
                          >[공지]개인정보 처리방침 내 수탁업체(택배사)
                          변경사항</a
                        >
                        <span class="txtEm"></span
                      ></strong>
                    </td>
                  </tr>
                </tbody>
                <tbody
                  class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center"
                >
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 10</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/231166/"
                        style="color: #333333"
                        >[종료][10/14~10/28] 오호라 보관함 증정 이벤트</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 9</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/231094/"
                        style="color: #333333"
                        >[종료][10/7~10/14] 오호라 팝젤 증정 이벤트</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 8</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/230607/"
                        style="color: #333333"
                        >[공지]추석 연휴 배송 및 고객 상담 마감 안내</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 7</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/229586/"
                        style="color: #333333"
                        >[공지]친구 추천 프로모션 종료 안내</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 6</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/228129/"
                        style="color: #333333"
                        >[7/8~7/15] 구매 금액대별 쿠폰팩 이벤트</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 5</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/227697/"
                        style="color: #333333"
                        >[공지]개인정보 처리방침 내 수탁업체 변경사항</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/227584/"
                        style="color: #333333"
                        >[종료][6/24~7/1] 오호라 보관함 증정 이벤트</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 3</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/227316/"
                        style="color: #333333"
                        >[종료][6/17~6/28] 신제품 포토 리뷰 적립금 5,000점 지급
                        이벤트</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 2</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/224951/"
                        style="color: #333333"
                        >[공지] 포토 리뷰 적립금 변경 안내</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                  <tr
                    style="background-color: #ffffff; color: #333333"
                    class="xans-record-"
                  >
                    <!-- <td> 1</td> -->
                    <td class="category displaynone"></td>
                    <td class="subject left txtBreak">
                      <a
                        href="/article/notice/14/222930/"
                        style="color: #333333"
                        >[공지] 2023년 휴면 회원 약관 개정 안내</a
                      >
                      <span class="txtEm"></span>
                    </td>
                  </tr>
                </tbody>
              </table>
              <p
                class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 SP_message displaynone"
              ></p>
            </div>
            <div
              class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 SP_tableBtn_wrap displaynone"
            >
              <div class="SP_tableBtnAlign_right">
                <a
                  href="/board/free/write.html?board_no=14"
                  class="SP_cm_btn SP_btn_gray_bd displaynone"
                  >글쓰기</a
                >
              </div>
            </div>
          </div>

          <div class="g-search base_board_search">
            <form
              id="boardSearchForm"
              name=""
              action="/board/notice/14"
              method="get"
              target="_top"
              enctype="multipart/form-data"
            >
              <input id="board_no" name="board_no" value="14" type="hidden" />
              <input id="page" name="page" value="1" type="hidden" />
              <input id="board_sort" name="board_sort" value="" type="hidden" />
              <div
                class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 SP_boardSearh_wrap"
              >
                <fieldset class="boardSearch">
                  <p>
                    <span class="SP_search_key" style="display: none"
                      ><select
                        id="search_key"
                        name="search_key"
                        fw-filter=""
                        fw-label=""
                        fw-msg=""
                      >
                        <option value="subject">제목</option>
                        <option value="content">내용</option>
                        <option value="writer_name">글쓴이</option>
                        <option value="member_id">아이디</option>
                        <option value="nick_name">별명</option>
                      </select></span
                    >
                    <input
                      id="search"
                      name="search"
                      fw-filter=""
                      fw-label=""
                      fw-msg=""
                      class="inputTypeText"
                      placeholder=""
                      value=""
                      type="text"
                    />
                    <a
                      href="#none"
                      class="SP_cm_btn SP_btn_blue_bg"
                      onclick="BOARD.form_submit('boardSearchForm');"
                      >검색하기</a
                    >
                  </p>
                </fieldset>
              </div>
            </form>
          </div>

          <div
            style="
              font-size: 15px;
              font-weight: bolder;
              text-align: center;
              margin-top: 100px;
              margin-bottom: 170px;
            "
          >
            1
          </div>
        </div>
      </div>

      <style>
        .SP_subContHeader .SP_subTitle,
        .SP_subSection .SP_subTitle,
        .SP_subLoginHeader .SP_subTitle {
          text-transform: uppercase;
        }
        #SP_boardPageChk .SP_subTitle font {
          text-transform: uppercase;
        }
      </style>
    </div>

    <!-- 콘텐츠 -->

    <!-- 아래 필수 -->
    
  </body>
  <%@include file="footer.jsp" %>
</html>
