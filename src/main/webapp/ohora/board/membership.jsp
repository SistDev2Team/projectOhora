<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="${contextPath}/resources/cdn-main/membership.css">
<script src="../resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<%@include file="../header.jsp" %>
<body>

<div id="SP_boardPageChk">
      <div class="SP_layoutFix">
        <div
          class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002"
        >
          <div
            class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 SP_subContHeader"
          >
            <h2 class="SP_subTitle eng_font">
              <font color="#555555" style="text-transform: uppercase">Notice</font>
            </h2>
          </div>
          <form
            id="BoardDelForm"
            name=""
            action="/exec/front/Board/del/3"
            method="post"
            target="_self"
            enctype="multipart/form-data"
          >
            <input id="no" name="no" value="166365" type="hidden" />
            <input
              id="bulletin_no"
              name="bulletin_no"
              value="155959"
              type="hidden"
            />
            <input id="board_no" name="board_no" value="3" type="hidden" />
            <input
              id="member_id"
              name="member_id"
              value="ohoracs6"
              type="hidden"
            />
            <input
              id="list_url"
              name="list_url"
              value="/board/free/list.html?board_no=3"
              type="hidden"
            />
            <input
              id="bdf_modify_url"
              name="bdf_modify_url"
              value="/board/free/modify.html?board_act=edit&amp;no=166365&amp;board_no=3"
              type="hidden"
            />
            <input
              id="bdf_del_url"
              name="bdf_del_url"
              value="/exec/front/Board/del/3"
              type="hidden"
            />
            <input
              id="bdf_action_type"
              name="bdf_action_type"
              value=""
              type="hidden"
            />
            <div
              class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 SP_subSection"
            >
              <!--
                      $login_page_url = /member/login.html
                      $deny_access_url = /board/free/list.html
                  -->
              <div class="ec-base-table typeWrite">
                <table
                  border="1"
                  summary=""
                  class="SP_tableSt01_isThAndTd type2 SP_tableBoardRead_wrap"
                >
                  <caption>
                    게시판 상세
                  </caption>
                  <colgroup>
                    <col style="width: 130px" />
                    <col style="width: auto" />
                    <col style="width: 130px" />
                    <col style="width: auto" />
                  </colgroup>
                  <tbody>
                    <tr>
                      <th scope="row">제목</th>
                      <td colspan="3">
                        ohora membership 오호라 멤버쉽 안내
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">작성자</th>
                      <td colspan="3">
                        <span class="">ohora</span>
                      </td>
                    </tr>
                    <tr class="">
                      <th class="displaynone">평점</th>
                      <td class="displaynone">
                        <img
                          src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif"
                          alt="0점"
                        />
                      </td>
                      <th class="displaynone">추천</th>
                      <td class="displaynone">
                        <a
                          href="#none"
                          class="btnNormal"
                          onclick="BOARD_READ.article_vote('/exec/front/Board/vote/3?no=166365&amp;return_url=%2Farticle%2Ffaq%2F3%2F166365%2F&amp;4a1d1ff4e816cd89f20332b9e94d84=400108819b1984f0c19805f6ac891273&amp;board_no=3');"
                          ><img
                            src="//img.echosting.cafe24.com/skin/base/common/btn_icon_recommend.gif"
                            alt=""
                          />
                          추천하기</a
                        >
                      </td>
                    </tr>
                    <tr class="">
                      <th class="">작성일</th>
                      <td class="">2024-10-29 15:47:25</td>
                      <th class="">조회수</th>
                      <td class="">200</td>
                    </tr>
                    
                    <tr class="attach displaynone">
                      <th scope="row">첨부파일</th>
                      <td></td>
                    </tr>
                    <tr class="displaynone">
                      <th scope="row">비밀번호</th>
                      <td>
                        <input
                          id="password"
                          name="password"
                          fw-filter=""
                          fw-label="비밀번호"
                          fw-msg=""
                          onkeydown="if (event.keyCode == 13 || event.which == 13) { return false; }"
                          autocomplete="new-password"
                          value=""
                          type="password"
                        />
                        <span class="ec-base-help txtInfo"
                          >수정 및 삭제하려면 비밀번호를 입력하세요.</span
                        >
                      </td>
                    </tr>
                     <tr>
				      <td colspan="4">
				        <div class="detail" style="margin-left: 55px">
				          <div class="fr-view fr-view-article">
				            <p>
				              <img
				                src="https://ohora2019.cafe24.com/web/upload/NNEditor/20241029/EC9DB4EBAFB8ECA7801.jpg"
				                class="fr-fic fr-dib"
				                result="success"
				                name="EC9DB4EBAFB8ECA7801.jpg"
				                size="1000px/1496px"
				                filesize="75,11 kB"
				                error=""
				              />
				            </p>
				            <p>
				              <img
				                src="https://ohora2019.cafe24.com/web/upload/NNEditor/20241029/EC9DB4EBAFB8ECA7802.jpg"
				                class="fr-fic fr-dib"
				                result="success"
				                name="EC9DB4EBAFB8ECA7802.jpg"
				                size="1000px/2936px"
				                filesize="119,00 kB"
				                error=""
				              />
				            </p>
				            <p>
				              <img
				                src="https://ohora2019.cafe24.com/web/upload/NNEditor/20241029/EC9DB4EBAFB8ECA7803.jpg"
				                class="fr-fic fr-dib"
				                result="success"
				                name="EC9DB4EBAFB8ECA7803.jpg"
				                size="1000px/2218px"
				                filesize="195,31 kB"
				                error=""
				              />
				            </p>
				          </div>
				        </div>
				      </td>
				    </tr>
                    
                  </tbody>
                </table>
                
                
              </div>
              <div class="SP_submitBtn_wrap SP_submitBoardBtn_wrap">
                <div class="SP_submitBtn_left">
                  <span class="displaynone">
                    <a
                      href="#none"
                      onclick=""
                      class="SP_cm_btn SP_btn_gray_bd displaynone"
                    ></a>
                    <a
                      href="#none"
                      onclick=""
                      class="SP_cm_btn SP_btn_gray_bd admin displaynone"
                    ></a>
                    <a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd"
                      >스팸신고</a
                    >
                    <a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd"
                      >스팸해제</a
                    >
                  </span>
                  <a href="/projectOhora/ohora/notice.jsp" class="SP_cm_btn SP_btn_gray_bd sizeS"
                    >목록</a
                  >
                </div>
                <div class="SP_submitBtn_right">
                  <a
                    href="#none"
                    onclick="BOARD_READ.article_delete('BoardDelForm','3');"
                    class="SP_cm_btn SP_btn_gray_bd displaynone"
                    >삭제</a
                  >
                  <a
                    href="/board/free/modify.html?board_act=edit&amp;no=166365&amp;board_no=3"
                    class="SP_cm_btn SP_btn_gray_bd displaynone"
                    >수정</a
                  >
                  <a
                    href="/board/free/reply.html"
                    class="SP_cm_btn SP_btn_gray_bd displaynone"
                    >답변</a
                  >
                </div>
              </div>
            </div>
          </form>
        </div>

			

		<!-- 하단 목록 버튼 -->
        <div
          class="xans-element- xans-board xans-board-commentpackage-1002 xans-board-commentpackage xans-board-1002 SP_subSection"
        >
          <form
            id="commentForm"
            name=""
            action="/exec/front/Board/CommentUpdate/3"
            method="post"
            target="_self"
            enctype="multipart/form-data"
            style="display: none"
          >
            <input id="board_no" name="board_no" value="3" type="hidden" />
            <input id="no" name="no" value="166365" type="hidden" />
            <input id="comment_no" name="comment_no" value="" type="hidden" />
            <input id="member_id" name="member_id" value="" type="hidden" />
            <div
              class="xans-element- xans-board xans-board-commentform-1002 xans-board-commentform xans-board-1002 SP_commentModify_wrap"
            >
              <fieldset>
                <legend>댓글 수정</legend>
                <p>
                  비밀번호 :
                  <input
                    id="comment_password"
                    name="comment_password"
                    fw-filter="isFill"
                    fw-label="댓글비밀번호"
                    fw-msg=""
                    autocomplete="new-password"
                    value=""
                    type="password"
                  />
                  <span class="secret displaynone"
                    ><label>비밀댓글</label></span
                  >
                </p>
                <div class="view">
                  <textarea
                    id="comment_modify"
                    name="comment_modify"
                    fw-filter="isFill"
                    fw-label="댓글내용"
                    fw-msg=""
                  ></textarea>
                  <span class="submit">
                    <a
                      href="#none"
                      class="btnEm sizeL"
                      onclick="BOARD_COMMENT.comment_update_ok('commentForm');"
                      >수정</a
                    >
                    <a
                      href="#none"
                      class="btnNormal sizeL"
                      onclick="BOARD_COMMENT.comment_cancel_ok('commentForm');"
                      >취소</a
                    >
                  </span>
                </div>
                <p class="displaynone">/ byte</p>
              </fieldset>
            </div>
          </form>
          <form
            id="commentSecretForm"
            name=""
            action="/exec/front/Board/CommentSecret/3"
            method="post"
            target="_self"
            enctype="multipart/form-data"
            style="display: none"
          >
            <input id="board_no" name="board_no" value="3" type="hidden" />
            <input id="comment_no" name="comment_no" value="" type="hidden" />
            <input id="pass_check" name="pass_check" value="F" type="hidden" />
            <div
              class="xans-element- xans-board xans-board-commentformsecret-1002 xans-board-commentformsecret xans-board-1002"
            >
              <p>
                비밀번호 :
                <input
                  id="secure_password"
                  name="secure_password"
                  fw-filter="isFill"
                  fw-label="댓글비밀번호"
                  fw-msg=""
                  autocomplete="new-password"
                  value=""
                  type="password"
                />
                <a
                  href="#none"
                  class="btnNormal"
                  onclick="BOARD_COMMENT.show_secret_comment('commentSecretForm');"
                  >확인</a
                >
                <a
                  href="#none"
                  class="btnNormal"
                  onclick="BOARD_COMMENT.hide_secret_comment_form('commentSecretForm');"
                  >취소</a
                >
              </p>
            </div>
          </form>
        </div>

        <div
          class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 SP_subSection board_movement_wrap"
        >
          <ul>
            <li class="prev displaynone">
              <span>이전글</span
              ><a href="/article/faq/3/217049/"
                >
			 </a>
            </li>
            <li class="next">
              <span>다음글</span><a href="#empty">
              	[종료][10/14~10/28] 오호라 보관함 증정 이벤트</a>
            </li>
          </ul>
        </div>

        <!-- 관리자 전용 메뉴 -->
        <!-- // 관리자 전용 메뉴 -->
      </div>
    </div>
    
    <%@include file="../footer.jsp" %>
</body>
</html>