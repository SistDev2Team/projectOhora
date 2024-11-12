<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost/jspPro/images/SiSt.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/prd-page.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
</head>
<body>

	<%@include file="header.jsp"%>
	
	<div class="SP_layoutFix">
	<div class="xans-element- xans-product xans-product-headcategory SP_subContHeader displaynone ">
		<h2 class="SP_subTitle eng_font">
			<span class="eng_font">search</span>
		</h2>
	</div>
	<div
		class="xans-element- xans-product xans-product-searchdata search_keyword_wrapper xans-record-">
		<form class="searchField"
			id="ec-product-searchdata-searchkeyword_form"
			action="${ contextPath }/product/search.do" method="get">
			<fieldset>
				<div class="searchInput">
					<span class="xans-element- xans-layout xans-layout-mobileaction "><a
						href="#none" onclick="history.go(-1);return false;"></a> </span> <input
						class="keyword" name="keyword" id="ec-product-searchdata-keyword"
						autocomplete="off" onkeyup="SEARCH_HASHTAG.getHashtag($(this));"
						value="${ param.keyword }" type="text">
					<button type="submit" class="btnSearch btnSubmitFix sizeM"
						id="search_btn">검색</button>
					<ul class="autoDrop" id="ec-product-searchdata-keyword_drop"></ul>
					<input id="currentPage" name="currentPage" value="1" type="hidden" />
				</div>
			</fieldset>
			<div class="xans-element- xans-product xans-product-relatekeyword keywordArea">
			</div>
		</form>
		<div class="SP_subSection">
			<div class="SP_listAlignSort_wrap">
				<div id=""
					class="xans-element- xans-product xans-product-normalpackage align_sort_wrap ">
					<div
						class="xans-element- xans-product xans-product-normalmenu sory_type_wrap ">
						<div class="sort_type_tt">
						</div>
						<ul
							class="xans-element- xans-product xans-product-orderby sort_type_list">
						</ul>
					</div>
					<span class="compare displaynone"><a href="#none"
						class="btnCompare" onclick="">상품비교</a></span>
					<button type="button" class="shoppingQ_btn layout-view"></button>
				</div>

			</div>
		</div>
		<p class="noData displaynone">검색 결과가 없습니다.</p>
	</div>

	<div id="second-wrap">
		<div id="second-wrap-layout">
			<div id="sort-menu-wrap">
				<div id="sort-type-wrap">
					<div id="select-sort-wrap"></div>
				</div>
			</div>

			<div id="custom-filter-wrap">
				<div class="swiper-container" id="custom-filter"></div>
			</div>

			<div id="item-list-wrap">
				<div id="item-list">
					<ul id="item-list-ul">
						<c:choose>
							<c:when test="${ empty list }">
								<li>검색 결과가 없습니다.</li>
							</c:when>
							<c:otherwise>
								<c:forEach items="${ list }" var="pdt" varStatus="status">


									<li id="itembox${ status.index + 1 }" class="item-wrap">
										<div class="item-container">
											<dl>
												<a
													href="${contextPath}/product/detail.do?pdt_id=${pdt.pdt_id}&cate_no=${param.cate_no}"
													class="item-viewlink"></a>
												<div class="item-image">
													<img
														src="../resources/images/prd_image/imgs/${pdt.pdt_img_url}.jpg"
														alt="" width="800" height="800" /> <img
														src="../resources/images/prd_image/imgs_hover/${pdt.pdt_img_url}.jpg"
														alt="" width="800" height="800" />
												</div>
												<div class="item-info">
													<dd class="name-container">
														<p class="item-name">${pdt.pdt_name}</p>
													</dd>
													<dd class="price-container">
														<c:choose>
															<c:when test="${pdt.pdt_discount_rate != 0}">
																<p class="dcRate">${pdt.pdt_discount_rate}%</p>
																<p class="sale-price">
																	<fmt:formatNumber value="${pdt.pdt_discount_amount}"
																		type="number" pattern="#,##0" />
																</p>
																<p class="normal-price">
																	<fmt:formatNumber value="${pdt.pdt_amount}"
																		type="number" pattern="#,##0" />
																</p>
															</c:when>
															<c:otherwise>
																<p class="dcRate"></p>
																<p class="sale-price">
																	<fmt:formatNumber value="${pdt.pdt_amount}"
																		type="number" pattern="#,##0" />
																</p>
																<p class="normal-price"></p>
															</c:otherwise>
														</c:choose>
													</dd>
													<div class="review-container">
														<p class="rvCount-wrap">
															<span class="rvCount">${pdt.pdt_review_count}</span>
														</p>
													</div>
													<div class="cart-in">
														<img src="../resources/images/btn_list_cart.gif"
															data-pdtid="${pdt.pdt_id}" alt="장바구니 추가 버튼" />
													</div>

												</div>
											</dl>
										</div>
									</li>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>


				<!-- prev [1start] 2 3 4 5 6 7 8 9 10 next -->
				<div id="page-container">
					<a
						href="search.do?keyword=${param.keyword}&currentPage=${ pvo.first }"
						class="first">first</a>

					<c:if test="${ pvo.prev }">
						<a
							href="search.do?keyword=${param.keyword}&currentPage=${ pvo.start - 1 }"
							class="prev">prev</a>
					</c:if>

					<c:if test="${ not pvo.prev }">
						<a
							href="search.do?keyword=${param.keyword}&currentPage=${ pvo.first }"
							class="prev">prev</a>
					</c:if>

					<ol>
						<c:forEach begin="${ pvo.start }" end="${ pvo.end }" step="1"
							var="i">
							<c:choose>
								<c:when test="${ i == pvo.currentPage }">
									<li><a href="#" class="active">${ i }</a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="search.do?keyword=${param.keyword}&currentPage=${ i }">${ i }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ol>
					<c:choose>
						<c:when test="${ pvo.currentPage != pvo.last }">
							<a
								href="search.do?keyword=${param.keyword}&currentPage=${ pvo.currentPage + 1 }"
								class="next">next</a>
						</c:when>
						<c:otherwise>
							<a
								href="search.do?keyword=${param.keyword}&currentPage=${ pvo.last }"
								class="next">next</a>
						</c:otherwise>
					</c:choose>


					<a
						href="search.do?keyword=${param.keyword}&currentPage=${ pvo.last }"
						class="last">last</a>
				</div>

			</div>
		</div>
	</div>
	</div>
	<!--아래 div-->

	<script>
   // 쿠키 생성 스크립트
    // 비회원 상태일 경우
    if (userPk == 0) {
        console.log("비회원 상태입니다. 쿠키 함수를 실행합니다.");

        // 장바구니 추가 이벤트
        $(document).on("click", ".cart-in img", function () {
            const pdtId = $(this).data("pdtid");
            addToCart(pdtId);
            updateCartCount();
        });

    } else {
        console.log("로그인 상태입니다. 쿠키 함수가 실행되지 않습니다.");

        // 비회원이 아닐 경우 클릭 이벤트를 제거하거나 다른 동작 설정
        $(document).off("click", ".cart-in img");
    }

    // 비회원 장바구니 쿠키 함수
    const CookieUtil = {
        setCookie: function (name, value, days = 14) {
            let expires = "";
            if (days) {
                const date = new Date();
                date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                expires = "; expires=" + date.toUTCString();
            }
            document.cookie = name + "=" + encodeURIComponent(value) + expires + "; path=/";
        },

        getCookie: function (name) {
            const nameEQ = name + "=";
            const ca = document.cookie.split(";");
            for (let i = 0; i < ca.length; i++) {
                let c = ca[i].trim();
                if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length));
            }
            return null;
        },

        saveCartItems: function (items) {
            const simplifiedItems = items.map((item) => ({
                pdtId: item.pdtId,
                quantity: item.quantity,
            }));
            this.setCookie("cartItems", JSON.stringify(simplifiedItems), 14);
        },

        setBasketId: function () {
            let basketId = this.getCookie("basketId");
            if (!basketId) {
                basketId = Math.random().toString(36).substring(2, 10);
                this.setCookie("basketId", basketId, 14);
            }
            return basketId;
        },

        getCartItems: function () {
            const cartCookie = this.getCookie("cartItems");
            try {
                return cartCookie ? JSON.parse(cartCookie) : [];
            } catch (e) {
                console.error("Error parsing cart items from cookie:", e);
                return [];
            }
        },
    };

    // 장바구니에 아이템 추가 함수
    function addToCart(pdtId) {
        const basketId = CookieUtil.setBasketId();
        const cartItems = CookieUtil.getCartItems();
        const existingItem = cartItems.find((item) => item.pdtId === pdtId);

        if (existingItem) {
            const userConfirmed = confirm("같은 상품이 존재합니다. 추가하시겠습니까?");
            if (!userConfirmed) return;
            existingItem.quantity += 1;
        } else {
            cartItems.push({
                pdtId: pdtId,
                quantity: 1,
            });
        }

        CookieUtil.saveCartItems(cartItems);
        alert("장바구니에 상품이 추가되었습니다.");
        updateCartCount();
    }

    // 장바구니 카운트 업데이트 함수
    function updateCartCount() {
        const cartItems = CookieUtil.getCartItems();
        const uniquepdtIds = new Set(cartItems.map((item) => item.pdtId));
        const cartCount = uniquepdtIds.size;
        $(".count.EC-Layout-Basket-count").text(cartCount);
    }

    // 초기화
    $(document).ready(function () {
        updateCartCount();
    });
</script>

	<%@include file="footer.jsp"%>
</body>
</html>