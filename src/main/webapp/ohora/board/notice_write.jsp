<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice - ohora</title>
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
					<div
						class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
						<div
							class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 SP_subContHeader ">
							<h2 class="SP_subTitle eng_font">
								<font color="#333333">Notice</font>
							</h2>
							<!-- <p class="SP_subTtileStxt">오호라 서비스 안내/공지 게시판 입니다.</p> -->
						</div>
						<form id="BoardDelForm" name="" action="/exec/front/Board/del/14"
							method="post" target="_self" enctype="multipart/form-data">
							<input id="no" name="no" value="231005" type="hidden"> <input
								id="bulletin_no" name="bulletin_no" value="212031" type="hidden">
							<input id="board_no" name="board_no" value="14" type="hidden">
							<input id="member_id" name="member_id" value="ohoracs4"
								type="hidden"> <input id="list_url" name="list_url"
								value="/board/free/list.html?board_no=14" type="hidden">
							<input id="bdf_modify_url" name="bdf_modify_url"
								value="/board/free/modify.html?board_act=edit&amp;no=231005&amp;board_no=14"
								type="hidden"> <input id="bdf_del_url"
								name="bdf_del_url" value="/exec/front/Board/del/14"
								type="hidden"> <input id="bdf_action_type"
								name="bdf_action_type" value="" type="hidden">
							<div
								class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002 SP_subSection">
								<!--
                    $login_page_url = /member/login.html
                    $deny_access_url = /board/free/list.html
                -->
								<div class="ec-base-table typeWrite ">
									<table border="1" summary=""
										class="SP_tableSt01_isThAndTd type2 SP_tableBoardRead_wrap">
										<caption>게시판 상세</caption>
										<colgroup>
											<col style="width: 130px;">
											<col style="width: auto;">
											<col style="width: 130px;">
											<col style="width: auto;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">제목</th>
												<td colspan="3"><input type="text" name="nt_subject" size="50"></td>
											</tr>
											<tr>
												<th scope="row">작성자</th>
												<td colspan="3"><span>(ip:)</span>	<!-- 아이피가 찍히게 -->
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
												<td class="">2024-09-30 10:31:33</td>
											</tr>
											<tr>
												<td scope="col">내용</td>
												<td colspan="4">
													<div class="detail">
														<div class="fr-view fr-view-article">
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<strong
																	style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; font-weight: bolder; letter-spacing: 0px;"><span
																	style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; color: inherit; font-size: 26px; letter-spacing: 0px;">2024
																		개인정보 처리방침 변경</span></strong><span
																	style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; color: inherit; font-size: 16px; letter-spacing: 0px;"><br
																	style="box-sizing: border-box; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; letter-spacing: 0px;"></span>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br
																	style="box-sizing: border-box; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; letter-spacing: 0px;">
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">안녕하세요</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">오호라
																개인정보 처리 방침 내 수탁 업체가 아래와 같이 변경되어 안내 드립니다.</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<strong>1.변경 사유</strong>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">고객
																상담 시스템 변경으로 인한 신규 업체 도입에 따른 위탁 업체 변경</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br
																	style="box-sizing: border-box; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; letter-spacing: 0px;">
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<strong></strong>﻿<strong>2.변경 내용</strong>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">:
																개인정보 처리 방침 제6조(개인 정보 취급 위탁) 내 수탁 업체가 변경되었습니다.</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<img data-fr-image-pasted="true"
																	src="data:image/png;base64,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"
																	class="fr-fic fr-dib fr-fil">
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br
																	style="box-sizing: border-box; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; letter-spacing: 0px;">
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br
																	style="box-sizing: border-box; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; letter-spacing: 0px;">
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<strong>3.공고 및 시행일자</strong>
															</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">-
																공고일자 : 2024년 09월 30일</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">-
																시행일자 : 2024년 10월 07일</p>
															<p
																style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline: 0px; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; display: block; line-height: 1.5; letter-spacing: 0px;">
																<br
																	style="box-sizing: border-box; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; letter-spacing: normal; color: rgb(0, 0, 0); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
															</p>
															<p>개정된 개인정보 처리 방침은 2024년 10월 7일부터 적용됩니다.</p>
															<p>개정된 개인정보 처리 방침에 동의하지 않는 경우에는 회원 탈퇴를 요청하실 수 있으며,</p>
															<p>별도의 거부 의사(회원 탈퇴)를 표시하지 않으실 경우 해당 사항에 동의한 것으로
																간주합니다.</p>
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
										<span class="displaynone"> <a href="#none" onclick=""
											class="SP_cm_btn SP_btn_gray_bd displaynone"></a> <a
											href="#none" onclick=""
											class="SP_cm_btn SP_btn_gray_bd admin displaynone"></a> <a
											href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd ">스팸신고</a>
											<a href="#none" onclick="" class="SP_cm_btn SP_btn_gray_bd ">스팸해제</a>
										</span> <a href="/board/notice/14/"
											class="SP_cm_btn SP_btn_gray_bd sizeS">목록</a>
									</div>
									<div class="SP_submitBtn_right">
										<a href="#none"
											onclick="BOARD_READ.article_delete('BoardDelForm','14');"
											class="SP_cm_btn SP_btn_gray_bd displaynone">삭제</a> <a
											href="/board/free/modify.html?board_act=edit&amp;no=231005&amp;board_no=14"
											class="SP_cm_btn SP_btn_gray_bd displaynone">수정</a> <a
											href="/board/free/reply.html"
											class="SP_cm_btn SP_btn_gray_bd displaynone">답변</a>
									</div>
								</div>
							</div>
						</form>
					</div>

					<div
						class="xans-element- xans-board xans-board-commentpackage-1002 xans-board-commentpackage xans-board-1002 SP_subSection">
						<form id="commentForm" name=""
							action="/exec/front/Board/CommentUpdate/14" method="post"
							target="_self" enctype="multipart/form-data"
							style="display: none;">
							<input id="board_no" name="board_no" value="14" type="hidden">
							<input id="no" name="no" value="231005" type="hidden"> <input
								id="comment_no" name="comment_no" value="" type="hidden">
							<input id="member_id" name="member_id" value="" type="hidden">
							<div
								class="xans-element- xans-board xans-board-commentform-1002 xans-board-commentform xans-board-1002 SP_commentModify_wrap ">
								<fieldset>
									<legend>댓글 수정</legend>
									<p>
										비밀번호 : <input id="comment_password" name="comment_password"
											fw-filter="isFill" fw-label="댓글비밀번호" fw-msg=""
											autocomplete="new-password" value="" type="password">
										<span class="secret displaynone"><label>비밀댓글</label></span>
									</p>
									<div class="view">
										<textarea id="comment_modify" name="comment_modify"
											fw-filter="isFill" fw-label="댓글내용" fw-msg=""></textarea>
										<span class="submit"> <a href="#none"
											class="btnEm sizeL"
											onclick="BOARD_COMMENT.comment_update_ok('commentForm');">수정</a>
											<a href="#none" class="btnNormal sizeL"
											onclick="BOARD_COMMENT.comment_cancel_ok('commentForm');">취소</a>
										</span>
									</div>
									<p class="displaynone">/ byte</p>
								</fieldset>
							</div>
						</form>
						<form id="commentSecretForm" name=""
							action="/exec/front/Board/CommentSecret/14" method="post"
							target="_self" enctype="multipart/form-data"
							style="display: none;">
							<input id="board_no" name="board_no" value="14" type="hidden">
							<input id="comment_no" name="comment_no" value="" type="hidden">
							<input id="pass_check" name="pass_check" value="F" type="hidden">
							<div
								class="xans-element- xans-board xans-board-commentformsecret-1002 xans-board-commentformsecret xans-board-1002 ">
								<p>
									비밀번호 : <input id="secure_password" name="secure_password"
										fw-filter="isFill" fw-label="댓글비밀번호" fw-msg=""
										autocomplete="new-password" value="" type="password">
									<a href="#none" class="btnNormal"
										onclick="BOARD_COMMENT.show_secret_comment('commentSecretForm');">확인</a>
									<a href="#none" class="btnNormal"
										onclick="BOARD_COMMENT.hide_secret_comment_form('commentSecretForm');">취소</a>
								</p>
							</div>
						</form>
					</div>

					<div
						class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 SP_subSection board_movement_wrap">
						<ul>
							<li class="prev displaynone"><span>이전글</span><a
								href="/article/notice/14/$3/"></a></li>
							<li class="next "><span>다음글</span><a
								href="/article/notice/14/229221/">[공지]개인정보 처리방침 내 수탁업체(택배사)
									변경사항</a></li>
						</ul>
					</div>

					<!-- 관리자 전용 메뉴 -->
					<!-- // 관리자 전용 메뉴 -->

				</div>
			</div>

		</div>
	</div>

	<!-- 아래 필수 -->

</body>
<%@include file="../footer.jsp"%>
</html>
