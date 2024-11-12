<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>${dto.title} Notice - ohora</title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost/jspPro/images/SiSt.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="${contextPath}/resources/cdn-main/notice_02.css">
<link rel="shortcut icon"
	href="https://www.ohora.kr/web/upload/favicon_20190801113230.ico" />
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
</head>
<%@include file="../header.jsp"%>
<body>
	<!-- 콘텐츠 -->

            <div id="container">
                <div id="contents">
                    
<div id="SP_boardPageChk">
    <div class="SP_layoutFix">
        <div class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 "><div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 SP_subContHeader "><h2 class="SP_subTitle eng_font"><font color="#333333">Notice</font> </h2>
<!-- <p class="SP_subTtileStxt">오호라 서비스 안내/공지 게시판 입니다.</p> -->
</div>
<form id="BoardDelForm" name="" action="/exec/front/Board/del/14" method="post" target="_self" enctype="multipart/form-data">
<input id="no" name="no" value="231005" type="hidden">
<input id="bulletin_no" name="bulletin_no" value="212031" type="hidden">
<input id="board_no" name="board_no" value="14" type="hidden">
<input id="member_id" name="member_id" value="ohoracs4" type="hidden">
<input id="list_url" name="list_url" value="/board/free/list.html?board_no=14" type="hidden">
<input id="bdf_modify_url" name="bdf_modify_url" value="/board/free/modify.html?board_act=edit&amp;no=231005&amp;board_no=14" type="hidden">
<input id="bdf_del_url" name="bdf_del_url" value="/exec/front/Board/del/14" type="hidden">
<input id="bdf_action_type" name="bdf_action_type" value="" type="hidden"><div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 SP_subSection"><!--
                    $login_page_url = /member/login.html
                    $deny_access_url = /board/free/list.html
                -->
<div class="ec-base-table typeWrite ">
                    <table border="1" summary="" class="SP_tableSt01_isThAndTd type2 SP_tableBoardRead_wrap">
<caption>게시판 상세</caption>
                    <colgroup>
<col style="width:130px;">
<col style="width:auto;">
<col style="width:130px;">
<col style="width:auto;">
</colgroup>
										<tbody>
											<tr>
												<th scope="row">제목</th>
												<td colspan="3">${dto.title}</td>
											</tr>
											<tr>
												<th scope="row">작성자</th>
												<td colspan="3"><span class="displaynone">(ip:)</span>
												</td>
											</tr>
											<tr class="">
												<th class="displaynone">평점</th>
												<td class="displaynone"><img
													src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif"
													alt="0점"></td>
												<th class="displaynone">추천</th>
												<td class="displaynone"><a href="#none"
													class="btnNormal"
													onclick="BOARD_READ.article_vote('/exec/front/Board/vote/14?no=231005&amp;return_url=%2Farticle%2Fnotice%2F14%2F231005%2F&amp;1fed1128473=05fbe9cb38d6ac33da89870985c85c8a&amp;board_no=14');"><img
														src="//img.echosting.cafe24.com/skin/base/common/btn_icon_recommend.gif"
														alt=""> 추천하기</a></td>
											</tr>
											<tr class="">
												<th class="">작성일</th>
												<td class="">${dto.writedate}</td>
												<th class="">조회수</th>
												<td class="">${dto.readed}</td>
												
												
											</tr>
											<tr>
												<td colspan="4">
													<div class="detail">
														<div class="fr-view fr-view-article">
														
															<pre>${dto.content}</pre>
														</div>
													</div>
												</td>
											</tr>
											<tr class="attach displaynone">
												<th scope="row">첨부파일</th>
												<td></td>
											</tr>
											<tr class="displaynone ">
												<th scope="row">비밀번호</th>
												<td><input id="password" name="password" fw-filter=""
													fw-label="비밀번호" fw-msg=""
													onkeydown="if (event.keyCode == 13 || event.which == 13) { return false; }"
													autocomplete="new-password" value="" type="password">
													<span class="ec-base-help txtInfo">수정 및 삭제하려면 비밀번호를
														입력하세요.</span></td>
											</tr>
										</tbody>
									</table>
</div>
<div class="SP_submitBtn_wrap SP_submitBoardBtn_wrap ">
                    <div class="SP_submitBtn_left">
                        <span class="displaynone">
                            <a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd displaynone"></a>
                            <a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd admin displaynone"></a>
                            <a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd ">스팸신고</a>
                            <a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd ">스팸해제</a>
                        </span>
             
                       <a href="noticelist.do?currentPage=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }" class="SP_cm_btn SP_btn_gray_bd sizeS">목록</a>
                      
                    </div>
                    <div class="SP_submitBtn_right">
                        <a href="#none" onclick="BOARD_READ.article_delete('BoardDelForm','14');" class="SP_cm_btn SP_btn_gray_bd displaynone">삭제</a>
                        <a href="/board/free/modify.html?board_act=edit&amp;no=231005&amp;board_no=14" class="SP_cm_btn SP_btn_gray_bd displaynone">수정</a>
                        <a href="/board/free/reply.html" class="SP_cm_btn SP_btn_gray_bd displaynone">답변</a>
                    </div>
                </div>
</div>
</form></div>

        <div class="xans-element- xans-board xans-board-commentpackage-1002 xans-board-commentpackage xans-board-1002 SP_subSection"><form id="commentForm" name="" action="/exec/front/Board/CommentUpdate/14" method="post" target="_self" enctype="multipart/form-data" style="display: none;">
<input id="board_no" name="board_no" value="14" type="hidden">
<input id="no" name="no" value="231005" type="hidden">
<input id="comment_no" name="comment_no" value="" type="hidden">
<input id="member_id" name="member_id" value="" type="hidden"><div class="xans-element- xans-board xans-board-commentform-1002 xans-board-commentform xans-board-1002 SP_commentModify_wrap "><fieldset>
<legend>댓글 수정</legend>
                    <p>비밀번호 : <input id="comment_password" name="comment_password" fw-filter="isFill" fw-label="댓글비밀번호" fw-msg="" autocomplete="new-password" value="" type="password"> <span class="secret displaynone"><label>비밀댓글</label></span></p>
                    <div class="view">
                        <textarea id="comment_modify" name="comment_modify" fw-filter="isFill" fw-label="댓글내용" fw-msg=""></textarea>                        <span class="submit">
                            <a href="#none" class="btnEm sizeL" onclick="BOARD_COMMENT.comment_update_ok('commentForm');">수정</a>
                            <a href="#none" class="btnNormal sizeL" onclick="BOARD_COMMENT.comment_cancel_ok('commentForm');">취소</a>
                        </span>
                    </div>
                    <p class="displaynone"> /  byte</p>
                </fieldset>
</div>
</form><form id="commentSecretForm" name="" action="/exec/front/Board/CommentSecret/14" method="post" target="_self" enctype="multipart/form-data" style="display: none;">
<input id="board_no" name="board_no" value="14" type="hidden">
<input id="comment_no" name="comment_no" value="" type="hidden">
<input id="pass_check" name="pass_check" value="F" type="hidden"><div class="xans-element- xans-board xans-board-commentformsecret-1002 xans-board-commentformsecret xans-board-1002 "><p>비밀번호 : <input id="secure_password" name="secure_password" fw-filter="isFill" fw-label="댓글비밀번호" fw-msg="" autocomplete="new-password" value="" type="password">                    <a href="#none" class="btnNormal" onclick="BOARD_COMMENT.show_secret_comment('commentSecretForm');">확인</a>
                    <a href="#none" class="btnNormal" onclick="BOARD_COMMENT.hide_secret_comment_form('commentSecretForm');">취소</a>
                </p>
</div>
</form></div>


					<!-- <div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 SP_subSection board_movement_wrap">
						<ul>
							<li class="prev displaynone"><span>이전글</span>
							
							<a href="/article/notice/14/$3/"></a></li>
							<li class="next "><span>다음글</span>
							<a href="/article/notice/14/229221/">[공지]개인정보 처리방침 내 수탁업체(택배사)
									변경사항</a>
									</li>
						</ul>
					</div> -->
					
					<div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 SP_subSection board_movement_wrap">
    <ul>
       <c:if test="${not empty previousPost}">
           <li class="prev"><span>이전글</span>
               <a href="noticeview.do?seq=${previousPost.seq}&page=${param.page}">${previousPost.title}</a>
           </li>
       </c:if>
       <c:if test="${not empty nextPost}">
           <li class="next"><span>다음글</span>
               <a href="noticeview.do?seq=${nextPost.seq}&page=${param.page}">${nextPost.title}</a>
           </li>
       </c:if>
    </ul>
</div>

					<!-- // 관리자 전용 메뉴 -->
        
    </div>
</div>

                </div>
            </div>

	<!-- 아래 필수 -->

</body>
<%@include file="../footer.jsp"%>
