<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cdn-main/join_complete.css">
<link rel="shortcut icon"
	href="https://www.ohora.kr/web/upload/favicon_20190801113230.ico" />
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
</head>
<%@include file="header.jsp"%>
<body>
	<div id="wrap">
		<div class="layout-fix">
			<div class="join-cp-title-wrap">
			<div class="join-cp"></div>
				<h2 class="join-cp-title-h2">
					<span class="join-cp-title">회원가입이 완료 되었습니다.</span>
				</h2>
			</div>
		</div>

		<div class="join-cp-area">
			<div class="join-cp-padding">


				<div class="default-join-cp">
					<table class="join-cp-table">
						<tr>
							<td class="label">아이디</td>
							<td>${userId}</td>
						</tr>
						<tr>
							<td class="label">이 름</td>
							<td>${userName}</td>
						</tr>
						<tr>
							<td class="label">이메일</td>
							<td>${userEmail}</td>
						</tr>
					</table>
					<div class="join-cp-textbox">
						<p>
						    ${userId} 님은 [Friend] 등급입니다.<br />
						    <c:if test="${userSnsAgree == 'Y'}">
						        첫 구매시 오호라 젤램프를 받으실 수 있습니다.
						    </c:if>
						</p>
					</div>
				</div>


				<div class="btnArea">
					<div class="btn">
						<a href="${pageContext.request.contextPath}/loginHandlerstart.do">계속 쇼핑하기</a>
					
					</div>
				</div>

			</div>
		</div>
	</div>


	<!-- 아래로 추천상품 -->

	<div class="reco-list-container">
		<div class="text-area">
			<h3 class="reco-text-h3">추천 상품</h3>
		</div>

		<div class="reco-item-list">
			<div class="item-container">
				<ul class="item-list-ul">
					<li class="reco-item">
						<div class="item-div">
							<!-- 여기 ::before 들어감-->
							<dl>
								<a href=""></a>
								<div class="base-img">
									<div class="thumb">
										<img src="../image/cart_image/상품1.jpg" alt="상품1"
											class="thumbnail" width="800" height="800" />
										<!-- hover에 관한건 알아서 만들어야하는듯 -->
										<img src="../image/cart_image/상품2.jpg" alt="상품2"
											class="hover_img" width="800" height="800" /> <span
											class="sold-out"></span>
										<!--품절 상품시에만 적용한다는데 안쓰는듯?-->
									</div>
								</div>
								<div class="base-desc">
									<dd class="info-container">
										<p class="name">
											<span>N 오닉스 네일</span>
										</p>
									</dd>

									<dd class="price-container">
										<p class="ori-price">12,800</p>
										<p class="sale-price">10,240</p>
										<p class="dcPercent">20%</p>
									</dd>

									<div class="desc-bot">
										<div class="bot-container">
											<div class="bot-wrap">
												<p class="rv_count-wrap">
													<span class="rv-count">3,520</span>
												</p>
											</div>
										</div>
									</div>

									<div class="cart-container">
										<img src="" alt="" />
									</div>
								</div>
							</dl>
						</div>
					</li>

					<li class="reco-item">
						<div class="item-div">
							<!-- 여기 ::before 들어감-->
							<dl>
								<a href=""></a>
								<div class="base-img">
									<div class="thumb">
										<img src="../image/cart_image/상품1.jpg" alt="상품1"
											class="thumbnail" width="800" height="800" />
										<!-- hover에 관한건 알아서 만들어야하는듯 -->
										<img src="../image/cart_image/상품2.jpg" alt="상품2"
											class="hover_img" width="800" height="800" /> <span
											class="sold-out"></span>
										<!--품절 상품시에만 적용한다는데 안쓰는듯?-->
									</div>
								</div>
								<div class="base-desc">
									<dd class="info-container">
										<p class="name">
											<span>N 오닉스 네일</span>
										</p>
									</dd>

									<dd class="price-container">
										<p class="ori-price">12,800</p>
										<p class="sale-price">10,240</p>
										<p class="dcPercent">20%</p>
									</dd>

									<div class="desc-bot">
										<div class="bot-container">
											<div class="bot-wrap">
												<p class="rv_count-wrap">
													<span class="rv-count">3,520</span>
												</p>
											</div>
										</div>
									</div>

									<div class="cart-container">
										<img src="" alt="" />
									</div>
								</div>
							</dl>
						</div>
					</li>

					<li class="reco-item">
						<div class="item-div">
							<!-- 여기 ::before 들어감-->
							<dl>
								<a href=""></a>
								<div class="base-img">
									<div class="thumb">
										<img src="../image/cart_image/상품1.jpg" alt="상품1"
											class="thumbnail" width="800" height="800" />
										<!-- hover에 관한건 알아서 만들어야하는듯 -->
										<img src="../image/cart_image/상품2.jpg" alt="상품2"
											class="hover_img" width="800" height="800" /> <span
											class="sold-out"></span>
										<!--품절 상품시에만 적용한다는데 안쓰는듯?-->
									</div>
								</div>
								<div class="base-desc">
									<dd class="info-container">
										<p class="name">
											<span>N 오닉스 네일</span>
										</p>
									</dd>

									<dd class="price-container">
										<p class="ori-price">12,800</p>
										<p class="sale-price">10,240</p>
										<p class="dcPercent">20%</p>
									</dd>

									<div class="desc-bot">
										<div class="bot-container">
											<div class="bot-wrap">
												<p class="rv_count-wrap">
													<span class="rv-count">3,520</span>
												</p>
											</div>
										</div>
									</div>

									<div class="cart-container">
										<img src="" alt="" />
									</div>
								</div>
							</dl>
						</div>
					</li>
				</ul>
			</div>

			<div class="next"></div>
			<div class="prev"></div>
			<div class="scrollBar"></div>
		</div>
	</div>
</body>
<%@include file="footer.jsp"%>
</html>
