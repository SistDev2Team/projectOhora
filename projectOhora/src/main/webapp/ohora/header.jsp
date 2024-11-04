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
<link rel="stylesheet" href="../resources/cdn-main/header.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
  <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
  
</head>
<div class="SP_topBanner" style="display: block">
      <div class="SP_layoutMin">
        <div class="SP_topBn_inr"></div>

        <div class="xans-element- xans-layout xans-layout-statelogoff">
          <div
            class="slide_banner_top slick-initialized slick-slider"
            id="sltop_ban"
          >
            <div class="slick-list draggable">
              <div
                class="slick-track"
                style="
                  opacity: 1;
                  width: 1200px;
                  transform: translate3d(0px, 0px, 0px);
                "
              >
                <div
                  class="slick-slide slick-current slick-active"
                  data-slick-index="0"
                  aria-hidden="false"
                  style="width: 1200px"
                  tabindex="0"
                >
                  <a
                    href="/event/event6.html"
                    tabindex="0"
                    style="display: block"
                    ><img
                      src="https://ohora.kr/optimize/images/pc/common/PC_header_lamp2.webp"
                      style="width: 100%; display: block"
                  /></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 회원 -->
    </div>

    <div id="fix_position" class="modify ham_modify">
      <div id="SMS_fixed_wrap" class="SMS_fixed_wrap">
        <div class="SP_top_wrap">
          <div class="layout_Top">
            <div
              class="xans-element- xans-layout xans-layout-statelogoff SP_gnb_inr"
            >
              <a href="/member/join_intro.html"
                ><span class="title">회원가입</span></a
              >|
              <a href="/member/login.html" class="log"
                ><span class="title">로그인</span></a
              >
            </div>
          </div>
        </div>
        <div class="SMS_fixed_inner">
          <div class="xans-element- xans-layout xans-layout-logotop fixed_logo">
            <a
              href="/projectOhora/main"
              style="display: block; text-align: center; margin-top: 30px"
            >
              <img
                src="https://ohora.kr/web/upload/logo/ohora_BI_logotype_w.png"
                style="margin-bottom: 7px"
              />
            </a>
          </div>


          <!-- 헤더 주메뉴 -->
          <div class="gnb_menu_container">
            <ul class="gnb_menu_wrap menu_1ul">
              <li class="eng_font menu_1li submenu">
                <a href="/projectOhora/product/list.do?cate_no=121&currentPage=1">new</a>
              </li>
              <li class="eng_font menu_1li submenu">
                <a href="/projectOhora/product/list.do?cate_no=120&currentPage=1">best</a>
              </li>

              <li class="eng_font">
                <a href="/projectOhora/product/list.do?cate_no=44&currentPage=1">product</a>
                <!-- 마우스 오버 시 나오는 영역(product) -->
                <ul class="menu_2ul">
                  <li>
                    <a href="/projectOhora/product/list.do?cate_no=160&currentPage=1"
                      ><span>네일</span></a
                    >
                  </li>
                  <li>
                    <a href="/projectOhora/product/list.do?cate_no=161&currentPage=1"
                      ><span>페디</span></a
                    >
                  </li>
                  <li>
                    <a href="/projectOhora/product/list.do?cate_no=49&currentPage=1"
                      ><span>커스텀</span></a
                    >
                  </li>
                  <li>
                    <a href="/projectOhora/product/list.do?cate_no=49&currentPage=1"
                      ><span>케어 &amp; 툴</span></a
                    >
                  </li>
                </ul>
                <!-- //마우스 오버 시 나오는 영역(product) -->
              </li>

              <li class="eng_font menu_1li submenu">
                <a href="/projectOhora/product/list.do?cate_no=671&currentPage=1">outlet</a>
              </li>
              <li class="eng_font"><a href="/projectOhora/ohora/event_index.jsp">event</a></li>
              <li class="eng_font">
                <a href="/projectOhora/ohora/howto.jsp">how to</a>
              </li>
            </ul>
          </div>
          <!-- //헤더 주메뉴 -->

          <div class="icon_wrap">
            <div class="small_icon search_fixed_btn"></div>
            <div
              class="xans-element- xans-layout xans-layout-orderbasketcount small_icon m_cart common_cart"
            >
              <a href="/projectOhora/ohora/offcart.jsp"
                ><b class="count EC-Layout-Basket-count">0</b></a
              >
            </div>
            <div class="small_icon m_menu"><a class="SMS_menu"></a></div>
          </div>
        </div>
      </div>
 

    <!-- 검색 -->
    <div class="hd_search_container" style="overflow: hidden; display: none">
      <div class="SP_search_wrap">
        <div class="SP_utilListSearch_inner">
          <form
            id="searchBarForm"
            name=""
            action="/product/search.html"
            method="get"
            target="_self"
            enctype="multipart/form-data"
          >
            <input id="banner_action" name="banner_action" value="" type="hidden" />
            <div class="xans-element- xans-layout xans-layout-searchheader">
          
              <fieldset>
                <legend style="display: none">검색</legend>
                <input
                  id="keyword"
                  name="keyword"
                  fw-filter=""
                  fw-label="검색어"
                  fw-msg=""
                  class="inputTypeText"
                  placeholder=""
                  onkeyup="SEARCH_HASHTAG.getHashtag($(this)); "
                  autocomplete="off"
                  onmousedown="SEARCH_BANNER.clickSearchForm(this)"
                  value=""
                  type="text"
                /><button
                  type="button"
                  class="SP_srh_submit_btn"
                  onclick="SEARCH_BANNER.submitSearchBanner(this); return false;"
                >
                  <span class="SP_cm_icon SP_black_search_icon"></span>
                </button>
              </fieldset>
            </div>
          </form>
        </div>
    
        <!--------------- 검색 키워드 --------------->
        <div class="SP_utilListKeyword_inner">
          <ul>
            <li><a href="/projectOhora/product/list.do?cate_no=671&currentPage=1">#OUTLET 입장하기</a></li>
            <li><a href="/projectOhora/product/list.do?cate_no=120&currentPage=1">#BEST 디자인 추천</a></li>
            <li><a href="/projectOhora/projectOhora/ohora/event_event6.jsp">#첫구매 젤램프 증정</a></li>
          </ul>
        </div>
        <!--------------- 검색 키워드 --------------->
      </div>
    </div>

    <!-- 더보기 -->
    <div class="hd_cate_container" style="overflow: hidden; display: none">
      <div class="SP_category_wrap" style="margin-top: 172px;">
        <div class="inner">
      
          <div class="cate_wrap first">
   

            <div class="big_txt">
              <a class="eng_font big_" href="/projectOhora/product/list.do">
                <span>new</span>
              </a>
              <a class="/projectOhora/product/list.do">
                <span></span>
              </a>
              <a class="/projectOhora/product/list.do">
                <span></span>
              </a>
            </div>
            <div class="big_txt" style="margin-top: 60px;">
              <a class="eng_font big_" href="/projectOhora/product/list.do">
                <span>best</span>
              </a>
              <a href="/projectOhora/product/list.do">
                <span>네일</span>
              </a>
              <a href="/projectOhora/product/list.do">
                <span>페디</span>
              </a>
            </div>
          </div>
          <div class="cate_wrap first">
            <div class="big_txt">
              <a class="eng_font big_" href="/projectOhora/product/list.do">
                <span>nail</span>
              </a>
              <a class="" href="/projectOhora/product/list.do">
                <span>젤스트립</span>
              </a>
              <a class="" href="/projectOhora/product/list.do">
                <span>젤네일팁</span>
              </a>
            </div>
            <div class="big_txt" style="margin-top: 63px;">
              <a class="eng_font big_" href="/projectOhora/product/list.do">
                <span>pedi</span>
              </a>
              <a class="" href="/projectOhora/product/list.do">
                <span>젤스트립</span>
              </a>
            </div>
          </div>

          <div class="cate_wrap first">
            <div class="big_txt">
              <a class="eng_font big_" href="/projectOhora/product/list.do">
                <span>outlet</span>
              </a>
            </div>
            <div class="big_txt">
              <span></span>

              <span></span>

              <span></span>
            </div>

            <div class="big_txt" style="margin-top: 80px;">
              <a class="eng_font big_" href="/projectOhora/product/list.do">
                <span>custom</span>
              </a>
            </div>
            <div class="big_txt" style="margin-top: 45px;">
              <a class="eng_font big_" href="/projectOhora/product/list.do">
                <span>care &amp; tool</span>
              </a>
            </div>
          </div>

          <!--------- 첫번째 줄 메뉴(신제품 출시 관련 수정 영역) --------->
          <style>
          
          </style>

          <!------- 두번째 줄 메뉴 ------>
          <div class="cate_wrap second">
  
            <div class="big_txt" style="margin-left: 35px; margin-bottom: 42px;">
              <a class="big_ eng_font" href="/projectOhora/ohora/event_index.jsp">
                <span>event</span>
              </a>
            </div>

            <div class="big_txt" style="margin-left: 35px;  margin-bottom: 42px;">
              <a
                class="big_ eng_font"
                href="/projectOhora/ohora/oho_review.jsp"
              >
                <span>review</span>
              </a>
            </div>
            <div class="big_txt" style="margin-left: 35px;">
              <a class="big_ eng_font" href="#empty">
                <span style="margin-top: 10px;">brand</span>
              </a>
              <a class="" href="/projectOhora/ohora/ohora_Fend_brand4.jsp">
                <span>about</span>
              </a>
              <a class="" href="#empty">
                <span>membership</span>
              </a>
              <a class="" href="/projectOhora/ohora/magazine.jsp">
                <span>magazine</span>
              </a>
              <a class="" href="#empty">
                <span>collaboration</span>
              </a>
            </div>
          </div>
          <!------ 두번째 줄 메뉴 ------>
          <!------ 세번째 줄 메뉴 ------>
          <div class="cate_wrap crew">
            <!--오호라 크루 추천-->
            <div
              class="common_reco_section recommend_crew swiper-container swiper-container-initialized swiper-container-horizontal load-complete"
            >
              <h3>오호라 크루 추천</h3>
              <div
                df-banner-code="common-recommend"
                class="recommend_banner_wrap swiper-wrapper df-bannermanager df-bannermanager-common-recommend"
                style="
                  transition-duration: 0ms;
                  transform: translate3d(-260px, 0px, 0px);
                "
              >
                <div
                  df-banner-clone=""
                  class="SP_eventBn_li swiper-slide swiper-slide-prev"
                >
                  <a
                    href="#empty"
                    ><div class="imgBox">
                      <img
                        src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/94fad6d6474acf635b9c771591480a7c.png"
                        alt="페이코 상시 12% 할인"
                      />
                    </div>
                    <div class="txtBox">페이코 상시 12% 할인</div></a
                  >
                </div>
                <div
                  df-banner-clone=""
                  class="SP_eventBn_li swiper-slide swiper-slide-active"
                >
                  <a href="#empty"
                    ><div class="imgBox">
                      <img
                        src="	https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/4cd90f97beaaeddde49bbad02da10bc5.webp"
                        alt="앱 다운 시 무료배송"
                      />
                    </div>
                    <div class="txtBox">앱 다운 시 무료배송</div></a
                  >
                </div>
                <div
                  df-banner-clone=""
                  class="SP_eventBn_li swiper-slide swiper-slide-next"
                >
                  <a href="#empty"
                    ><div class="imgBox">
                      <img
                        src="https://ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/0b48933209882b54093f40d23cb23246.webp"
                        alt="신규회원 젤램프 증정"
                      />
                    </div>
                    <div class="txtBox">신규회원 젤램프 증정</div></a
                  >
                </div>
              </div>
              <!-- 스와이퍼 스크롤 -->
              <div class="swiper-scrollbar">
                <div
                  class="swiper-scrollbar-drag"
                  style="
                    transition-duration: 0ms;
                    transform: translate3d(85px, 0px, 0px);
                    width: 85px;
                  "
                ></div>
              </div>
              <span
                class="swiper-notification"
                aria-live="assertive"
                aria-atomic="true"
              ></span>
            </div>
            <!--// 오호라 크루 추천-->
            <div class="third_cate">
              <a href="https://oe9lp.channel.io/home"><span>CS Center</span></a>
              <a href="/projectOhora/ohora/notice.jsp"
                ><span>Notice</span></a
              >
              <a href="/projectOhora/ohora/FAQ.jsp"><span>FAQ</span></a>
              <a href="/projectOhora/ohora/howto.jsp">How to</a>
            </div>
          </div>
          
        </div>
      </div>
    </div>


  </div> <!-- sticky 적용을 위한 태그-->

  
  <!-- 슬라이더 초기화 코드 -->
    <script>
      $(document).ready(function () {
        $(".slide_banner_top").slick({
          infinite: true,
          speed: 300,
          slidesToShow: 1,
          dots: false,
          arrows: false,
          autoplay: true,
          autoplaySpeed: 3000,
          swipe: true,
          pauseOnHover: false,
        });
      });
    </script>

    <script>
      $(document).ready(function() {
        const searchContainer = $('.hd_search_container');
        const cateContainer = $('.hd_cate_container');

        searchContainer.hide();
        cateContainer.hide();

        // 검색 버튼 클릭 시
        $('.small_icon.search_fixed_btn').on('click', function() {
          if (!searchContainer.is(':visible')) {
            cateContainer.stop(true, true).fadeOut(300, function() {
              searchContainer.stop(true, true).slideDown(500).animate({ opacity: 1 }, { duration: 10 });
              $('#keyword').focus();
            });
          } else {
            searchContainer.stop(true, true).slideUp(500).animate({ opacity: 0 }, { duration: 10 });
          }
        });

        // 더보기 버튼 클릭 시
        $('.SMS_menu').on('click', function() {
          if (!cateContainer.is(':visible')) {
            searchContainer.stop(true, true).fadeOut(300, function() {
              cateContainer.stop(true, true).slideDown(500).animate({ opacity: 1 }, { duration: 10 });
              $('#keyword').focus();
            });
          } else {
            cateContainer.stop(true, true).slideUp(500).animate({ opacity: 0 }, { duration: 10 });
          }
        });
      });
    </script>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <!-- 오호라 크루 추천 스와이퍼 -->
    <script>
     $(document).ready(function() {
      var swiper = new Swiper("div.common_reco_section.recommend_crew.swiper-container.swiper-container-initialized.swiper-container-horizontal", {
        slidesPerView: 1,
        spaceBetween: 10,
        loop: false, 
        pagination: {
          el: ".swiper-scrollbar",
          clickable: true,
        },
        navigation: {
          nextEl: "div.recommend_banner_wrap.swiper-wrapper.df-bannermanager.df-bannermanager-common-recommend > div.SP_eventBn_li.swiper-slide.swiper-slide-next",
          prevEl: "div.recommend_banner_wrap.swiper-wrapper.df-bannermanager.df-bannermanager-common-recommend > div.SP_eventBn_li.swiper-slide.swiper-slide-prev",
        }
      });
    });

    </script>    
  

  </body>
</html>
