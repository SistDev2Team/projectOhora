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

<div id="contents">
    <div id="SP_boardPageChk">
        <div class="SP_layoutFix">
            <div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002" style="padding-right: 6%; padding-left: 6%">
                <div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 SP_subContHeader">
                    <h2 class="SP_subTitle eng_font">
                        <font color="#333333">Notice</font>
                    </h2>
                </div>
                
                <table border="1" summary="" class="SP_tableSt02_isThead SP_cateBoard_table">
                    <colgroup class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
                        <col style="width: 150px" class="displaynone" />
                        <col style="width: auto" />
                    </colgroup>
                    <thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
                        <tr>
                            <th scope="col">제목</th>
                        </tr>
                    </thead>
                    <tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
                        <!-- 작성한 공지사항이 없을때 -->
                        <c:if test="${ empty list }">
                            <tr class="xans-record-">
                                <td align="center" colspan="2">
                                    <h3>작성된 게시글이 없습니다.</h3>
                                </td>
                            </tr>
                        </c:if>

                        <!-- 공지사항 및 일반 게시글 출력 -->
                        <c:if test="${ not empty list }">
                            <c:forEach items="${ list }" var="dto">
                            <!-- Tag가 1인 게시글을 먼저 출력 (고정된 공지사항) -->
                                <c:if test="${ dto.tag == 1 }">
                                    <tr class="xans-record-">
                                        <td><a href="noticeview.do?seq=${ dto.seq }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }"><strong>${ dto.title }</strong></a></td>
                                    </tr>
                                </c:if>
                            </c:forEach>

                            <c:forEach items="${ list }" var="dto">
                                <c:if test="${ dto.tag == 2 }">
                                    <tr class="xans-record-">
                                        <td><a href="noticeview.do?seq=${ dto.seq }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }">${ dto.title }</a></td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </tbody>
                </table>

                <!-- 검색 영역 -->
                <div class="g-search base_board_search">
                
                    <form id="boardSearchForm" action="notice_list.do" method="get" target="_top" enctype="multipart/form-data">
                        <input id="board_no" name="board_no" value="14" type="hidden" />
                        <input id="page" name="page" value="1" type="hidden" />
                        <input id="board_sort" name="board_sort" value="" type="hidden" />
                        <div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 SP_boardSearh_wrap "><fieldset class="boardSearch">
<legend>게시물 검색</legend>
                      					<fieldset class="boardSearch">
										<p>
											<span class="SP_search_key" style="display: none">
												<select	id="search_key" name="search_key">
													<option value="title" selected>제목</option>
													<!-- 기본값을 "제목"으로 설정 -->
													<option value="content">내용</option>
													<option value="writer">글쓴이</option>
													<option value="member_id">아이디</option>
													<option value="nick_name">별명</option>
											</select>
											</span>

											<!-- 검색어 입력 필드 -->
											<input id="search" name="searchWord" class="inputTypeText" type="text" value="${param.searchWord != null ? param.searchWord : ''}" />

											<!-- 검색 버튼 -->
											<button type="submit" class="SP_cm_btn SP_btn_blue_bg" onclick="$('#boardSearchForm').submit();">검색하기</button>
										</p>
									</fieldset></div>
                    </form>
                </div>

                <!-- 글쓰기 버튼 -->
                <div class="btnArea">
                    <a href="notice_write.do" class="SP_cm_btn2 SP_btn_blue_bg2 displaynone">글쓰기</a>
                </div>

                <!-- 페이지 네비게이션 -->
                
                <div class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 SP_pagenation_wrap">
							<div class="SP_page_prev_wrap">
						<c:if test="${pagination.prevBlock > 1}">
							<a href="?currentPage=${pagination.prevBlock}" class="SP_pg_prev_btn"></a>
						</c:if>
							</div>

						<div class="SP_page_num_list">
							<ol>
						<c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}">
						        <c:choose>
						            <c:when test="${i == pagination.currentPage}">
						                <li class="xans-record-">
						                <a href="?page=${i}" class="this">${i}</a>
						                </li>
						            </c:when>
						            <c:otherwise>
						            	<li class="xans-record-">
						                <a href="?currentPage=${i}" class="other">${i}</a>
						                </li>
						            </c:otherwise>
						        </c:choose>
						    </c:forEach>
					        </ol>
						</div>

							<div class="SP_page_next_wrap">
							<c:if test="${pagination.nextBlock < pagination.totalPages}">
								<a href="?currentPage=${pagination.nextBlock}" class="SP_pg_next_btn"></a>
							</c:if>
							</div>
                </div>
                
                
            </div>
        </div>
    </div>
</div>


							<!-- 아래 필수 -->
</body>
<%@include file="../footer.jsp"%>
</html>
