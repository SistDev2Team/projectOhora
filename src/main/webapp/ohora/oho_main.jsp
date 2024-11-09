<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" href="../resources/cdn-main/oho_main.css">
<script src="../resources/js/cart_cookie.js"></script>
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
                <a href="/projectOhora/product/detail.do?pdt_id=${newPrd.pdt_id}&cate_no=121" class="viewlink"></a>
                <div class="base-img">
                    <div class="thumb">
                        <img loading="lazy" alt="" class="thumb_img" width="800" height="800" src="../resources/images/prd_image/imgs/${newPrd.pdt_img_url}.jpg">
                        <img loading="lazy" class="hover_img" width="800" height="800" src="../resources/images/prd_image/imgs_hover/${newPrd.pdt_img_url}.jpg">
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
                        <img src="../resources/images/btn_list_cart.gif"
                            data-pdtId="${newPrd.pdt_id}"
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
					<c:forEach var="bestPrd" items="${bestProducts}"  varStatus="status">
    <li id="item${ status.index + 1 }" class="item-swiper-slide swiper-slide">
        <div class="container-complete" data-prd-num="${bestPrd.pdt_id}">
            <dl>
                <a href="/projectOhora/product/detail.do?pdt_id=${bestPrd.pdt_id}&cate_no=121" class="viewlink"></a>
                <div class="base-img">
                    <div class="thumb">
                        <img loading="lazy" alt="" class="thumb_img" width="800" height="800" src="../resources/images/prd_image/imgs/${bestPrd.pdt_img_url}.jpg">
                        <img loading="lazy" class="hover_img" width="800" height="800" src="../resources/images/prd_image/imgs_hover/${bestPrd.pdt_img_url}.jpg">
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
									<fmt:formatNumber value="${bestPrd.pdt_amount}"
										type="number" pattern="#,##0" />
								</p>
								<p class="sale-price">
									<fmt:formatNumber value="${bestPrd.pdt_discount_amount}"
										type="number" pattern="#,##0" />
								</p>
								<p class="discount">${bestPrd.pdt_discount_rate}%</p>
							</c:when>
							<c:otherwise>
								<p class="sale-price">
									<fmt:formatNumber value="${bestPrd.pdt_amount}"
										type="number" pattern="#,##0" />
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
                        <img src="../resources/images/btn_list_cart.gif" data-pdtId="${bestPrd.pdt_id}" alt="장바구니 추가 버튼" />
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

                <div class="swiper-button-next2"></div>
                <div class="swiper-button-prev2"></div>
               </div>
               <!-- 스와이퍼 컨테이너 -->
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

</html>
