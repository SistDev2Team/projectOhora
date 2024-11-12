<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ - ohora</title>
<link rel="shortcut icon"
	href="https://www.ohora.kr/web/upload/favicon_20190801113230.ico" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="${contextPath}/resources/cdn-main/FAQ02.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>

<body>
<%@include file="../header.jsp" %>
    <div id="wrap" >
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
                      <li class="${param.category == 'all' || param.category == null ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=all&currentPage=1">전체</a>
                      </li>
                      <li class="${param.category == 'product' ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=product&currentPage=1">상품</a>
                      </li>
                      <li class="${param.category == 'cancel' ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=cancel&currentPage=1">주문/결제/취소</a>
                      </li>
                      <li class="${param.category == 'delivery' ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=delivery&currentPage=1">배송</a>
                      </li>
                      <li class="${param.category == 'refund' ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=refund&currentPage=1">교환/반품/환불</a>
                      </li>
                      <li class="${param.category == 'usesit' ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=usesite&currentPage=1">사이트 이용</a>
                      </li>
                      <li class="${param.category == 'member' ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=member&currentPage=1">회원</a>
                      </li>
                      <li class="${param.category == 'etc' ? 'active' : ''}">
                        <a href="${contextPath}/board/faqlist.do?category=etc&currentPage=1">기타</a>
                      </li>
                    </ul>
                  </div>
                  <!-- //카테고리 분류 -->
                </div>
               
                <div class="ec-base-table SP_subSection gBorder">
                  <table border="1" summary="" class="SP_tableSt02_isThead SP_cateBoard_table">
                    <caption>
                      게시판 목록
                    </caption>
                    <colgroup
                      class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
                  
                      <col style="width: 150px" class="" />
                      <col style="width: auto" />
                    
                    </colgroup>
                    <thead
                      class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
                      <tr style="">
                        <th scope="col" class="">카테고리</th>
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
										<c:if test="${param.currentPage == null || param.currentPage == 1}">
											<c:forEach var="pinned" items="${pinnedList}">
												<tr class="xans-record-">
													<td class="category">${pinned.category}</td>
													<td class="subject left txtBreak"><a
														href="faqview.do?seq=${ pinned.seq }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }"><strong>${ pinned.title }</strong></a></td>
												</tr>
											</c:forEach>
											</c:if>

											<!-- 일반 게시글 출력 -->
											<c:forEach var="dto" items="${list}">
												<tr class="xans-record-">
													<td class="category">${dto.category}</td>
													<td class="subject left txtBreak"><a
														href="faqview.do?seq=${dto.seq}&page=${param.page}&searchCondition=${param.searchCondition}&searchWord=${param.searchWord}">
															${dto.title} </a></td>
												</tr>
											</c:forEach>
											<%--  <c:forEach items="${ list }" var="dto">
                                <c:if test="${ dto.tag == 2 }">
                                    <tr class="xans-record-">
	                                    <td class="category">${ dto.category }</td>
                                        <td class="subject left txtBreak"><a href="faqview.do?seq=${ dto.seq }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }">${ dto.title }</a></td>
                                    </tr>
                                </c:if>
                            </c:forEach> --%>
										</c:if>

										<c:out value="${normalList}" />
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
                <form id="boardSearchForm" name="" action="${contextPath}/board/faqlist.do" method="get" > <!--  target="_top" enctype="multipart/form-data" -->
                  <input id="board_no" name="board_no" value="3" type="hidden" />
                  <input id="page" name="page" value="1" type="hidden" />
                  <input id="board_sort"  name="board_sort" value="" type="hidden" />
                  <div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 SP_boardSearh_wrap" >
                    <fieldset class="boardSearch">
                      <legend>게시물 검색</legend>
                      <p>
                      <!-- 검색 조건을 제목으로 고정 -->
						 <input type="hidden" name="searchKey" value="title">
                        <span class="xans-element- xans-board xans-board-category-1002 xans-board-category xans-board-1002 board_category displaynone" >
                        </span>

                        <span class="SP_search_key" style="display: none" >
                        </span>
                        <!-- 검색어 입력 -->
                        <input id="search" name="searchWord" class="inputTypeText" placeholder="" type="text" value="${param.searchWord}" />
                        
                        <!-- 검색 조건-->
                        
                        <a href="javascript:void(0)" class="SP_cm_btn SP_btn_blue_bg" onclick="submitSearchForm()">검색하기</a>
                      </p>
                    </fieldset>
                  </div>
                </form>
              </div>
              <div class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 SP_pagenation_wrap">
							<div class="SP_page_prev_wrap">
						<c:if test="${pagination.prevBlock > 1}">
							<a href="?category=${ param.category }&currentPage=${pagination.prevBlock}" class="SP_pg_prev_btn"></a>
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
						                <a href="?category=${ param.category }&currentPage=${i}" class="other">${i}</a>
						                </li>
						            </c:otherwise>
						        </c:choose>
						    </c:forEach>
					        </ol>
						</div>

							<div class="SP_page_next_wrap">
							<c:if test="${pagination.nextBlock < pagination.totalPages}">
								<a href="?category=${ param.category }&currentPage=${pagination.nextBlock}" class="SP_pg_next_btn"></a>
							</c:if>
							</div>
                </div>
                
          </div>
					<script>
						function submitSearchForm() {
							document.getElementById('boardSearchForm').submit();
						}
					</script>

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
    <%@include file="../footer.jsp" %>
  </body>
</html>
