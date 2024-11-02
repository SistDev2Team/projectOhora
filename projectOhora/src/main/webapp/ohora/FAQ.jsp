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
<link rel="stylesheet" href="../resources/cdn-main/FAQ.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>

<body>
<%@include file="header.jsp" %>
    <div id="wrap" style="padding-top: 157px !important">
      <div id="container">
        <div id="contents">
          <div id="SP_boardPageChk">
            <div class="SP_layoutFix">
              <div
                class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002"
              >
                <div
                  class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 SP_subContHeader"
                >
                  <h2 class="SP_subTitle eng_font">
                    <font color="#555555">FAQ</font>
                  </h2>
                  <!-- <p class="SP_subTtileStxt">이용안내 FAQ입니다.</p> -->
                  <!-- <p class="imgArea"><img src="//img0001.echosting.cafe24.com/front/type_b/image/board/board_top.gif"  /></p> -->
                  <!-- 카테고리 분류 -->
                  <div class="base_board_category">
                    <ul>
                      <li class="active">
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no="
                          >전체</a
                        >
                      </li>
                      <li>
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no=1"
                          >상품</a
                        >
                      </li>
                      <li>
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no=2"
                          >주문/결제/취소</a
                        >
                      </li>
                      <li>
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no=3"
                          >배송</a
                        >
                      </li>
                      <li>
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no=4"
                          >교환/반품/환불</a
                        >
                      </li>
                      <li>
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no=5"
                          >사이트 이용</a
                        >
                      </li>
                      <li>
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no=6"
                          >회원</a
                        >
                      </li>
                      <li>
                        <a
                          href="/board/free/list.html?board_no=3&amp;category_no=7"
                          >기타</a
                        >
                      </li>
                    </ul>
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
                    <caption>
                      게시판 목록
                    </caption>
                    <colgroup
                      class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002"
                    >
                      <!-- <col style="width:70px;" /> -->
                      <col style="width: 150px" class="" />
                      <col style="width: auto" />
                      <!-- <col style="width:84px;" />
                        <col style="width:150px;" class="" />
                        <col style="width:55px;" class="" />
                        <col style="width:55px;" class="displaynone" />
                        <col style="width:80px;" class="displaynone" /> -->
                    </colgroup>
                    <thead
                      class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002"
                    >
                      <tr style="">
                        <!-- <th scope="col"> 번호</th> -->
                        <th scope="col" class="">카테고리</th>
                        <th scope="col">제목</th>
                        <!-- <th scope="col">작성자</th>
                            <th scope="col" class="">작성일</th>
                            <th scope="col" class="">조회</th>
                            <th scope="col" class="displaynone">추천</th>
                            <th scope="col" class="displaynone">평점</th> -->
                      </tr>
                    </thead>
                    <tbody
                      class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center"
                    >
                      <!--
                            $count = 2
                            $login_page_url = /member/login.html
                            $deny_access_url = /index.html
                        -->
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 공지</td> -->
                        <td class="category">회원</td>
                        <td class="subject left txtBreak">
                          <strong>
                            <a
                              href="/article/faq/3/166365/"
                              style="color: #555555"
                              >Q. 비회원 구매 시 첫 구매 혜택 적용이
                              안되나요?</a
                            >
                            <span class="txtEm"></span
                          ></strong>
                        </td>
                        <!-- <td></td>
                            <td class=""><span class="txtNum">2022-05-31 17:42:44</span></td>
                            <td class=""><span class="txtNum">3955</span></td>
                            <td class="displaynone"><span class="txtNum">0</span></td>
                            <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 공지</td> -->
                        <td class="category">교환/반품/환불</td>
                        <td class="subject left txtBreak">
                          <strong>
                            <a
                              href="/article/faq/3/217049/"
                              style="color: #555555"
                              >Q. 반품 비용은 어떻게 되나요?</a
                            >
                            <span class="txtEm"></span
                          ></strong>
                        </td>
                        <!-- <td>ohora</td>
                            <td class=""><span class="txtNum">2023-08-30 15:29:04</span></td>
                            <td class=""><span class="txtNum">524</span></td>
                            <td class="displaynone"><span class="txtNum">0</span></td>
                            <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                    </tbody>
                    <tbody
                      class="xans-element- xans-board xans-board-fixed-1002 xans-board-fixed xans-board-1002 center"
                    >
                      <!--
                            $count = 2
                            $login_page_url = /member/login.html
                            $deny_access_url = /index.html
                        -->
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> <img src="//img.echosting.cafe24.com/skin/admin_ko_KR/board/ico_fixed_post.png"  alt="" class="ec-common-rwd-image" /></td> -->
                        <td class="category">교환/반품/환불</td>
                        <td class="subject left txtBreak">
                          <strong>
                            <a
                              href="/article/faq/3/17793/"
                              style="color: #555555"
                              >Q. 교환/반품을 하고 싶은 경우 어떻게 하면
                              되나요?</a
                            >
                            <span class="txtEm"></span
                          ></strong>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2019-12-27 17:00:19</span></td> -->
                        <!-- <td class=""><span class="txtNum">18307</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> <img src="//img.echosting.cafe24.com/skin/admin_ko_KR/board/ico_fixed_post.png"  alt="" class="ec-common-rwd-image" /></td> -->
                        <td class="category">주문/결제/취소</td>
                        <td class="subject left txtBreak">
                          <strong>
                            <a
                              href="/article/faq/3/217046/"
                              style="color: #555555"
                              >Q. 네이버페이로 주문했는데 젤램프 사은품이 오지
                              않았어요.</a
                            >
                            <span class="txtEm"></span
                          ></strong>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:20:45</span></td> -->
                        <!-- <td class=""><span class="txtNum">1095</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                    </tbody>
                    <tbody
                      class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center"
                    >
                      <!--
                            $login_page_url = /member/login.html
                            $deny_access_url = /index.html
                        -->
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 57</td> -->
                        <td class="category">상품</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/222470/"
                            style="color: #555555"
                            >Q. [젤스트립] 국가별 젤스트립 사이즈가 어떻게
                            되나요?</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-11-29 16:26:04</span></td> -->
                        <!-- <td class=""><span class="txtNum">463</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 56</td> -->
                        <td class="category">상품</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217177/"
                            style="color: #555555"
                            >Q. 오호라 보관함 사이즈가 어떻게 되나요?</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-31 15:10:24</span></td> -->
                        <!-- <td class=""><span class="txtNum">894</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 55</td> -->
                        <td class="category">회원</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217054/"
                            style="color: #555555"
                            >Q. 비회원으로 주문했는데 주문 번호를
                            잊어버렸어요.</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:47:43</span></td> -->
                        <!-- <td class=""><span class="txtNum">321</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 54</td> -->
                        <td class="category">교환/반품/환불</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217053/"
                            style="color: #555555"
                            >Q. 불량 제품을 받았는데 어떻게 하나요?</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:39:15</span></td> -->
                        <!-- <td class=""><span class="txtNum">427</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 53</td> -->
                        <td class="category">상품</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217052/"
                            style="color: #555555"
                            >Q. [젤램프]오호라 프로 포터블 램프가 빨리 꺼져요/안
                            켜져요.</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:37:07</span></td> -->
                        <!-- <td class=""><span class="txtNum">736</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 52</td> -->
                        <td class="category">상품</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217051/"
                            style="color: #555555"
                            >Q. [젤램프] 젤램프 다리가 펴지지 않아요.</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:33:54</span></td> -->
                        <!-- <td class=""><span class="txtNum">355</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 51</td> -->
                        <td class="category">상품</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217050/"
                            style="color: #555555"
                            >Q. 언더코트는 어떻게 사용하나요?</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:32:05</span></td> -->
                        <!-- <td class=""><span class="txtNum">1005</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 50</td> -->
                        <td class="category">배송</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217048/"
                            style="color: #555555"
                            >Q. 배송지 변경은 어떻게 하나요?</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:23:47</span></td> -->
                        <!-- <td class=""><span class="txtNum">302</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 49</td> -->
                        <td class="category">주문/결제/취소</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217045/"
                            style="color: #555555"
                            >Q. 네이버페이로 주문했는데 주문 번호 확인이 되지
                            않아요.</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:20:05</span></td> -->
                        <!-- <td class=""><span class="txtNum">275</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
                      </tr>
                      <tr
                        style="background-color: #ffffff; color: #555555"
                        class="xans-record-"
                      >
                        <!-- <td> 48</td> -->
                        <td class="category">주문/결제/취소</td>
                        <td class="subject left txtBreak">
                          <a
                            href="/article/faq/3/217044/"
                            style="color: #555555"
                            >Q.주문한 상품을 취소/변경 하고 싶어요.</a
                          >
                          <span class="txtEm"></span>
                        </td>
                        <!-- <td>ohora</td> -->
                        <!-- <td class=""><span class="txtNum">2023-08-30 15:18:02</span></td> -->
                        <!-- <td class=""><span class="txtNum">354</span></td> -->
                        <!-- <td class="displaynone"><span class="txtNum">0</span></td> -->
                        <!-- <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"/></td> -->
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
                      href="/board/free/write.html?board_no=3"
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
                  action="/board/free/list.html"
                  method="get"
                  target="_top"
                  enctype="multipart/form-data"
                >
                  <input
                    id="board_no"
                    name="board_no"
                    value="3"
                    type="hidden"
                  />
                  <input id="page" name="page" value="1" type="hidden" />
                  <input
                    id="board_sort"
                    name="board_sort"
                    value=""
                    type="hidden"
                  />
                  <div
                    class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 SP_boardSearh_wrap"
                  >
                    <fieldset class="boardSearch">
                      <legend>게시물 검색</legend>
                      <p>
                        <span
                          class="xans-element- xans-board xans-board-category-1002 xans-board-category xans-board-1002 board_category displaynone"
                          ><select
                            id="board_category"
                            name="board_category"
                            fw-filter=""
                            fw-label=""
                            fw-msg=""
                          >
                            <option value="" selected="selected">전체</option>
                            <option value="1">상품</option>
                            <option value="2">주문/결제/취소</option>
                            <option value="3">배송</option>
                            <option value="4">교환/반품/환불</option>
                            <option value="5">사이트 이용</option>
                            <option value="6">회원</option>
                            <option value="7">기타</option>
                          </select></span
                        >

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
                class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 SP_pagenation_wrap"
              >
                <!--
    사용처
    1. /myshop/board_list.html
-->
                <div class="SP_page_prev_wrap">
                  <a href="?board_no=3&amp;page=1" class="SP_pg_prev_btn"></a>
                </div>
                <div class="SP_page_num_list">
                  <ol>
                    <li class="xans-record-">
                      <a href="?board_no=3&amp;page=1" class="this">1</a>
                    </li>
                    <li class="xans-record-">
                      <a href="?board_no=3&amp;page=2" class="other">2</a>
                    </li>
                    <li class="xans-record-">
                      <a href="?board_no=3&amp;page=3" class="other">3</a>
                    </li>
                    <li class="xans-record-">
                      <a href="?board_no=3&amp;page=4" class="other">4</a>
                    </li>
                    <li class="xans-record-">
                      <a href="?board_no=3&amp;page=5" class="other">5</a>
                    </li>
                    <li class="xans-record-">
                      <a href="?board_no=3&amp;page=6" class="other">6</a>
                    </li>
                  </ol>
                </div>
                <div class="SP_page_next_wrap">
                  <a href="?board_no=3&amp;page=2" class="SP_pg_next_btn"></a>
                </div>
              </div>

              <!-- 관리자 전용 메뉴 -->

              <!-- // 관리자 전용 메뉴 -->
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
      </div>
    </div>
  </body>
</html>
