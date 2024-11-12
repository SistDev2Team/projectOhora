<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="${contextPath}/resources/cdn-main/oho_main.css">
 <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
<%@include file="header.jsp" %>
</head>
<body>
<%-- <% 
Integer userPk = (Integer) session.getAttribute("userPk");
if(userPk != null){
System.out.print(" 로그인 해서 메인 옴 userPk : " + userPk);
}else{
System.out.print(" 로그인안함 userPk : " + userPk);	
}
%> --%>

<%-- <%
    int userPk = -1; 
    if (session.getAttribute("userPk") != null) {
        userPk = (int) session.getAttribute("userPk"); 
    }
    if (userPk != -1) {
         System.out.print("이건 받아왔을 때 " + userPk);
    } else {
    	System.out.print("무슨 값임 이거 " + userPk); 
    }
 %> --%> 

    <div class="main_container">
        <!-- 메인 배너 (메인 이미지 - 스와이프) 영역 -->
        <div class="mainSwipeBanner">

            <div class="mainBannerWrapper swiper mySwiper">
                   <!-- 화면에 띄워질 경우 : cloneBanner-active 클래스 추가 -->

                <div class="swiper-wrapper">
                   <div class="cloneBanner cloneBanner-active swiper-slide">
                       <a href="">
                           <img src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/d48eebf0f5f2c9dd1c5c69708d37e872.jpg" alt="월간 베스트 오브 베스트">
                           <span class="shopNow">shop now</span>
                       </a>
                   </div>

                   <div class="cloneBanner swiper-slide">
                       <a href="">
                           <img src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/cff66bbfd6b49ef154d19564381c73d0.jpg" alt="컬렉션 상시 배너">
                           <span class="shopNow" class="swiper-slide">shop now</span>
                       </a>
                   </div>

                   <div class="cloneBanner swiper-slide">
                       <a href="">
                           <img src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/4160fe76d5fd935dddb5ae90f7607d03.webp" alt="첫구매 사은품">
                           <span class="shopNow" class="swiper-slide">shop now</span>
                       </a>
                   </div>

                   <div class="cloneBanner swiper-slide">
                       <a href="">
                           <img src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/472e9fbd0e36e3d5757bc47e500fb700.webp" alt="베스트 리뷰 보상">
                           <span class="shopNow" class="swiper-slide">shop now</span>
                       </a>
                   </div>
                </div>

                <div class="swiper-pagination"></div>
            </div>
        </div>   

       <!-- 메인 배너 이미지 , 페이지네이션 끝 -->

       <div class="mainSection-new">
           <h3>
               <strong>이 달의 신상품</strong>
               <a href="" class="main-moreBtn">+ 더보기</a> 
               <!-- 더보기 누르면 list에 카테고리값 가지고 감 -->
           </h3>

           <div class="cate_tab">
               <span class="on" data-cate="121">전체</span>
               <span data-cate="123"></span>
               <span data-cate="124"></span>
           </div>

           <div class="common_list_box">
               <div class="swiper-container swiper mySwiper2">
                   <ul class="items-swiper-wrapper swiper-wrapper">            
                   		  
					<c:forEach var="newPrd" items="${newProducts}"  varStatus="status">
    <li id="item${ status.index + 1 }" class="item-swiper-slide swiper-slide">
        <div class="container-complete" data-prd-num="${newPrd.pdt_id}">
            <dl>
                <a href="${contextPath}/product/detail.do?pdt_id=${newPrd.pdt_id}&cate_no=121" class="viewlink"></a>
                <div class="base-img">
                    <div class="thumb">
                        <img loading="lazy" alt="" class="thumb_img" width="800" height="800" src="${contextPath}/resources/images/prd_image/imgs/${newPrd.pdt_img_url}.jpg">
                        <img loading="lazy" class="hover_img" width="800" height="800" src="${contextPath}/resources/images/prd_image/imgs_hover/${newPrd.pdt_img_url}.jpg">
                    </div>
                    <span class="soldout-img" style="display: ${newPrd.pdt_count==0 ? 'block' : 'none'};">
                        <a href="">
                            <span>coming<br>soon</span>
                        </a>
                    </span>
                </div>
                
                <div class="base-mask">
                    <dd class="name-container">
                        <p class="name">
                            <span>${newPrd.pdt_name}</span>
                        </p>
                    </dd>    
                    <dd class="price-container">
                    	<c:choose>
							<c:when test="${newPrd.pdt_discount_rate != 0}">
								<p class="normal-price">
									<fmt:formatNumber value="${newPrd.pdt_amount}"
										type="number" pattern="#,##0" />
								</p>
								<p class="sale-price">
									<fmt:formatNumber value="${newPrd.pdt_discount_amount}"
										type="number" pattern="#,##0" />
								</p>
								<p class="discount">${newPrd.pdt_discount_rate}%</p>
							</c:when>
							<c:otherwise>
								<p class="sale-price">
									<fmt:formatNumber value="${newPrd.pdt_amount}"
										type="number" pattern="#,##0" />
								</p>
							</c:otherwise>
						</c:choose>
                    </dd>

                    <dd class="prdRegiDate">등록일: ${newPrd.pdt_adddate}</dd>

                    <div class="prdInfoBot">
                        <div class="rvCount">
                            <div class="rvWrap">
                                <p class="rv_count_wrap">
                                    <span class="rv_count_value">${newPrd.pdt_review_count}</span>
                                </p>
                            </div>
                        </div>
                    </div>
					<div class="cart-in">
                        <img src="${contextPath}/resources/images/btn_list_cart.gif"
                            data-pdtid="${newPrd.pdt_id}"
                            alt="장바구니 추가 버튼" />
                    </div>

                    <div class="only_info_dispNone">
                        <span style="font-size:12px;color:#555555;"><!-- 해시태그 들어가야함 --></span>
                    </div>
                </div>
            </dl>
        </div>
    </li>
</c:forEach>
</ul>
                    <div class="swiper-scrollbar"></div>

                </div>
               <!-- 스와이퍼 컨테이너 -->
               <div class="swiper-button-next"></div>
               <div class="swiper-button-prev"></div>

            </div>


       </div>
       <!-- 이 달의 신상품 끝 -->

     
      <div class="mainSection-best">
			   <h3>
			       <strong>주간 베스트</strong>
			       <a href="" class="main-moreBtn">+ 더보기</a>
			   </h3>
			
			   <div class="cate_tab">
			       <span class="on" data-cate="120">전체</span>
			       <span data-cate="125">네일</span>
			       <span data-cate="127">페디</span>
			       <span data-cate="49">케어&툴</span>
			   </div>    
			
			   <div class="common_list_box2">
			       <div class="swiper-container swiper mySwiper3">
			           <ul class="items-swiper-wrapper swiper-wrapper">
			               <c:forEach var="bestPrd" items="${bestProducts}" varStatus="status">
			                   <li id="item${status.index + 1}" class="item-swiper-slide swiper-slide">
			                       <div class="container-complete" data-prd-num="${bestPrd.pdt_id}">
			                           <dl>
			                               <a href="${contextPath}/product/detail.do?pdt_id=${bestPrd.pdt_id}&cate_no=121" class="viewlink"></a>
			                               <div class="base-img">
			                                   <div class="thumb">
			                                       <img loading="lazy" alt="" class="thumb_img" width="800" height="800" src="${contextPath}/resources/images/prd_image/imgs/${bestPrd.pdt_img_url}.jpg">
			                                       <img loading="lazy" class="hover_img" width="800" height="800" src="${contextPath}/resources/images/prd_image/imgs_hover/${bestPrd.pdt_img_url}.jpg">
			                                   </div>
			                                   <span class="soldout-img" style="display: ${bestPrd.pdt_count==0 ? 'block' : 'none'};">
			                                       <a href="">
			                                           <span>coming<br>soon</span>
			                                       </a>
			                                   </span>
			                               </div>
			                               <div class="base-mask">
			                                   <dd class="name-container">
			                                       <p class="name">
			                                           <span>${bestPrd.pdt_name}</span>
			                                       </p>
			                                   </dd>    
			                                   <dd class="price-container">
			                                       <c:choose>
			                                           <c:when test="${bestPrd.pdt_discount_rate != 0}">
			                                               <p class="normal-price">
			                                                   <fmt:formatNumber value="${bestPrd.pdt_amount}" type="number" pattern="#,##0" />
			                                               </p>
			                                               <p class="sale-price">
			                                                   <fmt:formatNumber value="${bestPrd.pdt_discount_amount}" type="number" pattern="#,##0" />
			                                               </p>
			                                               <p class="discount">${bestPrd.pdt_discount_rate}%</p>
			                                           </c:when>
			                                           <c:otherwise>
			                                               <p class="sale-price">
			                                                   <fmt:formatNumber value="${bestPrd.pdt_amount}" type="number" pattern="#,##0" />
			                                               </p>
			                                           </c:otherwise>
			                                       </c:choose>
			                                   </dd>
			
			                                   <dd class="prdRegiDate">등록일: ${bestPrd.pdt_adddate}</dd>
			
			                                   <div class="prdInfoBot">
			                                       <div class="rvCount">
			                                           <div class="rvWrap">
			                                               <p class="rv_count_wrap">
			                                                   <span class="rv_count_value">${bestPrd.pdt_review_count}</span>
			                                               </p>
			                                           </div>
			                                       </div>
			                                   </div>
			
			                                   <div class="cart-in">
			                                       <img src="${contextPath}/resources/images/btn_list_cart.gif" data-pdtid="${bestPrd.pdt_id}" alt="장바구니 추가 버튼" />
			                                   </div>
			
			                                   <div class="only_info_dispNone">
			                                       <span style="font-size:12px;color:#555555;"></span>
			                                   </div>
			                               </div>
			                           </dl>
			                       </div>
			                   </li>
			               </c:forEach>
			           </ul>
			           <div class="swiper-scrollbar"></div>
			       </div>
			       <div class="swiper-button-next2"></div>
			       <div class="swiper-button-prev2"></div>
			   </div>
			</div>
       </div>
       <!-- 주간 베스트 끝 -->



       <div class="find_color_container">
           <!-- 비포어로 배경색 있음 (회색) -->
           <div class="find_color_wrap">
               <h3><strong>내가 원하는 디자인 찾기</strong></h3>
          
           
               <div class="find_color_list_wrap">
                   <div class="find_color_list">
                       <span>마블</span>
                       <span>그라데이션</span>
                       <span>시럽</span>
                       <span>자개</span>
                       <span>글리터</span>
                       <span>드로잉</span>
                       <span value="custom_4=프렌치" name="search_form[option_data][]">프렌치</span>
                       <span value="custom_4=체크" name="search_form[option_data][]">체크</span>
                       <span value="custom_4=패턴" name="search_form[option_data][]">패턴</span>
                       <span value="custom_4=매트" name="search_form[option_data][]">매트</span>
                       <span value="custom_4=시스루" name="search_form[option_data][]">시스루</span>
                       <span value="custom_4=벨벳" name="search_form[option_data][]">벨벳</span>
                       
                        <!-- 인풋 히든 같은걸로 값 받아서 보내야하나? -->

                       <div class="find_color_btn">보러가기</div>
                       <!-- 온클릭 이벤트 걸린듯 -->
                   </div>
               </div>
           </div>

       </div>
       <!-- 내가 원하는 디자인 찾기 (컬러) 끝-->

       <div class="event-container swiper mySwiper4">
           <h3>
               <strong>진행 중인 이벤트</strong>
               <a class="eve_moreBtn" href="/event/index.html">+ 전체보기</a>
           </h3>

           <div class="event-banner-wrap swiper-wrapper">

               <div class="event-banner-tab swiper-slide" >
                   <a href="">
                       <img src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/afbf77e9c16af21313051eaae78d2902.webp" alt="이벤트 배너">
                       <span class="event_shopnow">shop now &gt;</span>
                   </a>
               </div>

               <div class="event-banner-tab swiper-slide" >
                   <a href="">
                       <img src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/afbf77e9c16af21313051eaae78d2902.webp" alt="이벤트 배너">
                       <span class="event_shopnow">shop now &gt;</span>
                   </a>
               </div>
               

           </div>

           <div class="event-pagination-wrap">
               <span class="event-pagination-bar event-pagination-bar-active"></span>
               <!-- span에 after 걸려있음 -->
           </div>
       </div>
       <!-- 이벤트 컨테이너 끝 -->
        
       


       <div class="main-magazine-container">
           <h3>
               <strong>오호라 매거진</strong>
               <a href="" class="magazine-Morebtn">+ 전체보기</a>
           </h3>

           <div class="magazine-swiper-container ">
               <div class="magazine-swiper-wrap swiper mySwiper5">
                   <ul class="magazine-swiper-ul swiper-wrapper">

                       <li class="magazine-li swiper-slide">
                           <!-- before로 선택안된 애들 꺼멓게 만들어줌 -->
                            <div class="magazine-slide-wrap">
                               <a href="" class="magazine-thumb">
                                   <img class="magazine-swiper-item" src="https://ohora.kr/file_data/ohora2019//2023/06/27/0c623df88e3d06f5ab35888159832c4f.jpg" alt="매거진 이미지">
                               </a>
                            </div>
                       </li>
                       <li class="magazine-li swiper-slide">
                           <!-- before로 선택안된 애들 꺼멓게 만들어줌 -->
                            <div class="magazine-slide-wrap">
                               <a href="" class="magazine-thumb">
                                   <img class="magazine-swiper-item " src="https://ohora.kr/file_data/ohora2019//2023/06/27/0c623df88e3d06f5ab35888159832c4f.jpg" alt="매거진 이미지">
                                   <!-- 포커스의 prev -->
                               </a>
                            </div>
                       </li>
                       <li class="magazine-li swiper-slide">
                           <!-- before로 선택안된 애들 꺼멓게 만들어줌 -->
                            <div class="magazine-slide-wrap">
                               <a href="" class="magazine-thumb">
                                   <img class="magazine-swiper-item " src="https://ohora.kr/file_data/ohora2019//2023/06/27/0c623df88e3d06f5ab35888159832c4f.jpg" alt="매거진 이미지">
                                   <!-- 포커스 -->
                               </a>
                            </div>
                       </li>
                       <li class="magazine-li swiper-slide">
                           <!-- before로 선택안된 애들 꺼멓게 만들어줌 -->
                            <div class="magazine-slide-wrap">
                               <a href="" class="magazine-thumb">
                                   <img class="magazine-swiper-item" src="https://ohora.kr/file_data/ohora2019//2023/06/27/0c623df88e3d06f5ab35888159832c4f.jpg" alt="매거진 이미지">
                                   <!-- 포커스의 next -->
                               </a>
                            </div>
                       </li>
                       <li class="magazine-li swiper-slide">
                           <!-- before로 선택안된 애들 꺼멓게 만들어줌 -->
                            <div class="magazine-slide-wrap">
                               <a href="" class="magazine-thumb">
                                   <img class="magazine-swiper-item" src="https://ohora.kr/file_data/ohora2019//2023/06/27/0c623df88e3d06f5ab35888159832c4f.jpg" alt="매거진 이미지">
                               </a>
                            </div>
                       </li>
                       <li class="magazine-li swiper-slide">
                           <!-- before로 선택안된 애들 꺼멓게 만들어줌 -->
                            <div class="magazine-slide-wrap">
                               <a href="" class="magazine-thumb">
                                   <img class="magazine-swiper-item" src="https://ohora.kr/file_data/ohora2019//2023/06/27/0c623df88e3d06f5ab35888159832c4f.jpg" alt="매거진 이미지">
                               </a>
                            </div>
                       </li>

                   </ul>
                   <div class="magazine-swiper-button-next" ></div>
                   <div class="magazine-swiper-button-prev" ></div>
               </div>

           </div>
            

       </div>
      <!-- 매거진 끝 -->

       <div class="bot_banner-container">
           <a href="" class="aboutOhora">
               <div class="aboutOho-wrap">
                   <h1>ohora, beyond extraordinary</h1>
                   <p>
                       나를 위한 시간,
                       <span>Time to ohora</span>
                   </p>
                   <span>자세히 보기 &gt; </span>
               </div>
           </a>
           <a href="" class="aboutMembership">
               <div class="aboutMem-wrap">
                   <h1>오호라 멤버십</h1>
                   <p>오호라 멤버십에 조인하고 혜택을 받아보세요.</p>
                   <span>자세히 보기 &gt;</span>
               </div>
           </a>

       </div>
    </div>
   <!-- 메인 전체 컨테이너 -->
  <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->

<script>
    var swiper = new Swiper(".mySwiper", {
        loop:true,
      pagination: {
        el: ".swiper-pagination",
        centeredSlides: true,
        clickable: true,
        renderBullet: function (index, className) {
          return '<span class="' + className + '">' + (index + 1) + "</span>";
        },
      },
    });
</script>

<script>
    var swiper = new Swiper(".mySwiper2", {
      slidesPerView: 'auto', // 자동 너비 조절
      scrollbar: {
        el: ".swiper-scrollbar",
        hide: false,
        draggable: true, 
      },
      
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>

<script>
    var swiper = new Swiper(".mySwiper3", {
      slidesPerView: 'auto', // 자동 너비 조절
      scrollbar: {
        el: ".swiper-scrollbar",
        hide: false,
        draggable: true, 
      },
      
      navigation: {
        nextEl: ".swiper-button-next2",
        prevEl: ".swiper-button-prev2",
      },
    });
  </script>

<script>
    var swiper = new Swiper(".mySwiper4", {
        loop:true,
    });
</script>

<script>
    var swiper = new Swiper(".mySwiper5", {
      effect: "coverflow",
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: "auto",
      loop:true,
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows: true,
      }
    });
  </script>
<script src="../resources/js/oho_main.js"></script>

<%@include file="footer.jsp" %>
</body>



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
        $(document).on("click", ".cart-in img", function () {
        	const pdtId = $(this).data("pdtid");
        	checkCart(userPk, pdtId);
	    });
	}
   
    let isProcessing = false;
    async function checkCart(userPk, pdtId) {
		if (isProcessing) return;
        isProcessing = true;
        
        try {
            const response = await $.ajax({
                url: "<%=contextPath %>/product/checkcart.ajax",
                type: "POST",
                dataType: "json",
                data: { userPk, pdtId }
            });

            if (response.status === 'empty') {
            	await addToUserCart(userPk, pdtId);
            } else {
            	if (confirm("장바구니에 동일한 상품이 있습니다.\r\n장바구니에 추가하시겠습니까?")) {
                    await updateCart(userPk, pdtId);
                }
            }
        } catch (error) {
            console.error("error:", error);
        } finally {
            isProcessing = false;
        }
	 
	}
	
	async function addToUserCart(userPk, pdtId) {
	    try {
	        const response = await $.ajax({
	            url: "<%=contextPath %>/product/addcart.ajax",
	            type: "POST",
	            dataType: "json",
	            data: { userPk, pdtId }
	        });
	        
	        if (response.status === 'success'){
	        	alert("상품이 장바구니에 추가되었습니다.");
	        	$(".EC-Layout-Basket-count").text(response.count);
	        } else{
	        	alert("장바구니 추가 실패");
	        }
	    } catch (error) {
	        console.error("insert failed:", error);
	    }
	}
	
	async function updateCart(userPk, pdtId) {
	    try {
	        const response = await $.ajax({
	            url: "<%=contextPath %>/product/updatecart.ajax",
	            type: "POST",
	            dataType: "json",
	            data: { userPk, pdtId }
	        });
	        
	        if (response.status === 'success'){
	        	alert("장바구니 상품 수량이 증가되었습니다.");
	        } else{
	        	alert("장바구니 추가 실패");
	        }
	    } catch (error) {
	        console.error("update failed:", error);
	    }
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
    	if (userPk == 0) {
        	updateCartCount();    		
    	} else{
    		
    	}
    });
</script>



</html>
