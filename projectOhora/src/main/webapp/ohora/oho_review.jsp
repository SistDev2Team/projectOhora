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
<script src="../resources/cdn-main/example.js"></script>
<link rel="stylesheet" href="../resources/cdn-main/oho-review.css">
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>

<body>

    <!-- 콘텐츠 -->
<div class="rv-board-wrap">
    <div class="prd-review-content">
        <div class="prd-review-container">
            <div class="prd-review-wrap">
            <!-- js-pagination-list에 해당함 -->
                <div class="header">
                    <div>
                        <span class="hd-title">
                            <strong>REVIEW</strong>
                        </span>
                    </div>
                </div>

                <div class="star-rate-container">
                 <!-- js-renewed-products-reviews-summary -->

                    <div class="star-rate-wrap">
                        <div class="star-rate-flex">
                            <div class="star-rate-left">

                                <div class="star-rate-score-wrap">
                                    <div class="products_reviews_summary_v2__score">
                                        <span class="star-rate-icon">
                                            <!-- <div class="icon-wrap"> -->
                                                <div class="icon-box">
                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: #000000">
                                                        <defs>
                                                            <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
                                                        </defs>
                                                        <use xlink:href="#star-full"></use>
                                                    </svg>
                                                </div>
                                        </span>
                                        <span class="review-score">
                                            5.0 
                                            <!-- 동적 처리 필요 -->
                                        </span>
                                    </div>
                                    <div class="like-percent-wrap">
                                        <b>100%</b>
                                        의 구매자가 이 상품을 좋아합니다.
                                    </div>
                                </div>
                            </div>


                            <div class="star-rate-right">
                                <!-- 그래프 어떻게 그림 -->
                                <ul class="score-filter-wrap">
                                    <li class="star highest">
                                        <div class="filter-title">아주 좋아요</div>
                                        <div class="score-graph-wrap">
                                            <div class="score-graph"></div>
                                        </div>
                                        <div class="score-count">
                                            <!-- 이곳에 별점 준 인원수 display none으로 들어감..여기선 생략 -->
                                        </div>
                                    </li>
                                    <li class="star">
                                        <div class="filter-title">맘에 들어요</div>
                                        <div class="score-graph-wrap">
                                            <div class="score-graph"></div>
                                        </div>
                                        <div class="score-count">
                                            <!-- 이곳에 별점 준 인원수 display none으로 들어감..여기선 생략 -->
                                        </div>
                                    </li>
                                    <li class="star">
                                        <div class="filter-title">보통이에요</div>
                                        <div class="score-graph-wrap">
                                            <div class="score-graph"></div>
                                        </div>
                                        <div class="score-count">
                                            <!-- 이곳에 별점 준 인원수 display none으로 들어감..여기선 생략 -->
                                        </div>
                                    </li>
                                    <li class="star">
                                        <div class="filter-title">그냥 그래요</div>
                                        <div class="score-graph-wrap">
                                            <div class="score-graph"></div>
                                        </div>
                                        <div class="score-count">
                                            <!-- 이곳에 별점 준 인원수 display none으로 들어감..여기선 생략 -->
                                        </div>
                                    </li>
                                    <li class="star">
                                        <div class="filter-title">별로예요</div>
                                        <div class="score-graph-wrap">
                                            <div class="score-graph"></div>
                                        </div>
                                        <div class="score-count">
                                            <!-- 이곳에 별점 준 인원수 display none으로 들어감..여기선 생략 -->
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>    
                    </div>
                </div>

                <div class="rv-media-summary-wrap">
                    <div class="rv-media-summary">
                        <span class="summary-title">포토&동영상</span>
                        <span class="summary-media-cnt">(39)</span>
                        <a href="">
                            <div>
                                전체보기 >
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 8 8" class="products_reviews_media_summary__show_all_arrow">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M.667 2.333L4 5.667l3.333-3.334"></path>
                                </svg>
                            </div>
                        </a>
                    </div>
                    <div class="prd-review-summary-contents-wrap">
                        <ul>
                            <li class="prd-review-summary-contents">
                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/85/28/image1/portrait_9a86639708058da8.webp" alt="리뷰상품이미지">
                            </li>
                            <li class="prd-review-summary-contents">
                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/85/28/image1/portrait_9a86639708058da8.webp" alt="리뷰상품이미지">
                            </li>
                            <li class="prd-review-summary-contents">
                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/85/28/image1/portrait_9a86639708058da8.webp" alt="리뷰상품이미지">
                            </li>
                            <li class="prd-review-summary-contents">
                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/85/28/image1/portrait_9a86639708058da8.webp" alt="리뷰상품이미지">
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 리뷰 써머리 랩 -->

                <div class="filter-sort-menu-wrap">
                    <ul class="filter-sort-menu-ul">
                        <li class="filter-sort-menu-li">
                            <ul class="filter-way-list">
                                <!-- 선택시 selected 클래스 부여 , 글자 스타일바뀜 -->
                                <li class="way-list way-selected">추천순</li>
                                <li class="way-list">최신순</li>
                                <li class="way-list">별점순</li>
                            </ul>
                            
                        </li>

                        <li class="filter-basic-search">
                            <div class="search-input-container">
                                <input type="text" class="search-input" placeholder="리뷰 키워드 검색">
                                <a href="#">
                                    <!-- 검색 돋보기 버튼 -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none" viewBox="0 0 18 18" class="filter_sort_basic__search_input_icon">
                                        <rect width="10.5" height="10.5" x="2.25" y="2.25" stroke-width="1.5" rx="5.25"></rect>
                                        <path stroke-width="1.5" d="M11.78 11.47L16.28 15.97"></path>
                                    </svg>
                                </a>
                            </div>
                        </li>

                        <li class="hasmedia-first">
                            <a href="#">
                                <div class="toggleBtn-wrapper">
                                    <!-- 비선택시 회색 버튼 -->
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="toggle_button_component__icon toggle-check-off ">
                                        <rect width="18.5" height="18.5" x="2.75" y="2.75" stroke-width="1.5" rx="9.25"></rect>
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M7 12l4 4 6-7"></path>
                                    </svg>
                                    <!-- 선택시 까만 버튼 -->
                                    <!-- <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 16 16" class="toggle_button_component__icon toggle-check-on">
                                        <rect width="12.333" height="12.333" x="1.833" y="1.833" rx="6.167"></rect>
                                        <path stroke="#fff" stroke-linecap="round" stroke-linejoin="round" d="M4.667 8l2.666 2.667 4-4.667"></path>
                                    </svg> -->
                                    <span>포토/동영상 먼저 보기</span>
                                </div>
                            </a>
                        </li>
                    </ul>

                    <div >

                    </div>
                </div>
                <!-- 기본 정렬 방식 + 검색 끝 -->
                <div class="rv-body">

                    <div class="rv-page">
                        
                                                    <!-- 리뷰 있으면 none-->
                            <div class="prd-no-rv-container" style="display:;">
                                <div class="no-rv-layout">
                                    <div class="no-rv-msg">
                                        리뷰가 없습니다<br>
                                        <b>리뷰를 작성해 보세요!</b>
                                    </div>
                                </div>
                            </div>
                    
                        
                       
                        <ul class="prd-Rv-ul">
                             <!-- li 1개 == 리뷰 1개 -->
                            <li class="prd-Rv-li">
                                <div class="prd-Rv-lcontent">
                                    <div class="lcontent-container">
                                        
                                        <div class="lc-tag-wrap">
                                            <span class="rv-badge">NEW</span>
                                            <span class="rv-badge">한달 사용 리뷰</span>
                                            <!-- 뭐 오호라 추천리뷰 이런거 넣으려면 뱃지 클래스로 span 추가하면됨 -->
                                        </div>

                                        <div class="lc-score-wrap">
                                            <div class="score-box">
                                                <div class="score-star-box">

                                                    <!-- 꽉별/빈별 클래스명 바꿔서 부여하면됨 -->
                                                    <div class="score-star-full">
                                                        <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-full">
                                                        <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-full">
                                                       <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-empty">
                                                       <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-empty">
                                                       <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>
                                                    <span>별점:3점</span>

                                                </div>
                                                <div>보통이에요</div>
                                            </div>
                                        </div>
                                        <!-- 별점 스코어 박스 -->
                                        
                                        <div class="lc-content-wrap">
                                        <!-- review_list_v2__content_section -->
                                            <div class="lc-content-box">
                                                <div class="content-ment-box">
                                                    <div class="content-ment">
                                                        레드가 어울리는 계절이 왔어요
                                                        <br>
                                                        레드 풀컬러에 작은 꽃송이가 올라간 핑크가 더해져 어떤 손도 화사하게 만들어줍니다
                                                        <br>
                                                        배치에 따라 다양한 무드로 표현할 수 있는 티니를 만나보세요!
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="lc-image-wrap">
                                            <div class="lc-image-box">
                                                <ul class="lc-image-list">
                                                    <li>
                                                        <a href="#">
                                                            <div class="lc-image">
                                                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/47/33/image1/portrait_560bf1e22161a6b6.webp" alt="리뷰사진1">
                                                            </div>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#">
                                                            <div class="lc-image">
                                                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/47/33/image2/portrait_49f4606421c3b068.webp" alt="리뷰사진1">
                                                            </div>
                                                        </a>
                                                    </li>

                                                </ul>

                                            </div>
                                        </div>

                                        <div class="manager-review">
                                            <!-- 관리자 작성 리뷰 여부 -->
                                            이 리뷰는 오호라 관리자가 등록한 리뷰입니다.
                                        </div>
                                    
                                        <div class="lc-like-wrap">

                                            <div class="like-box">

                                                <a class="rv-like">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" class="review_like_action_v2__like_icon">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M8.725 6.2c-.051.152-.026.32.068.45s.245.207.406.207h3.477c.061 0 .121.006.181.017.55.1.914.626.814 1.175l-.962 5.288c-.087.48-.505.83-.994.83H6.177c-.558 0-1.01-.453-1.01-1.011v-6.24c0-.241.086-.474.243-.657l3.619-4.223c.174-.202.463-.26.702-.141.21.105.312.35.237.573L8.725 6.2zM2.333 14V7.333"></path>
                                                    </svg>
                                                    <span class="review_like_text">도움돼요</span>
                                                    <span class="review_like-score" style="display:;">3</span>
                                                    <!-- 0일시 display none부여 -->
                                                </a>

                                                <a class="rv-unlike">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" class="review_like_action_v2__unlike_link_icon">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M8.725 6.2c-.051.152-.026.32.068.45s.245.207.406.207h3.477c.061 0 .121.006.181.017.55.1.914.626.814 1.175l-.962 5.288c-.087.48-.505.83-.994.83H6.177c-.558 0-1.01-.453-1.01-1.011v-6.24c0-.241.086-.474.243-.657l3.619-4.223c.174-.202.463-.26.702-.141.21.105.312.35.237.573L8.725 6.2zM2.333 14V7.333"></path>
                                                    </svg>
                                                    <span class="review_unlike_text">도움안돼요</span>
                                                    <span class="review_unlike_score" style="display:;">3</span>
                                                </a>
                                                
                                            </div>    

                                            <div class="rv-comment-link-wrap">
                                                <a class="rv-comment-link">
    
                                                    <span class="review_list_v2__comments_text">댓글</span>
                                                    <span class="review_list_v2__comments_count js-comments-count">1</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 8 8" class="review_list_v2__small_arrow_icon">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M.667 2.333L4 5.667l3.333-3.334"></path>
                                                    </svg>
                                                </a>
                                            </div>

                                        </div>
                                        <!-- 좋/싫/댓 -->

                                        <div class="comments-container cmtOn">
                                            <!-- cmtOn일때만 디스플레이// cmtOff: diplay none -->
                                            <div class="comments-wrap">
                                                <ul class="comments-box">
                                                    <li class="comment-content">
                                                        <div class="comment-author">
                                                            오호라
                                                        </div>
                                                        <div class="comment-msg">
                                                            🅞🅗🅞🅡🅐✨
                                                        </div>
                                                    </li>

                                                    <li class="comment-content">
                                                        <div class="comment-author">
                                                            우후라
                                                        </div>
                                                        <div class="comment-msg">
                                                            오호호
                                                        </div>
                                                    </li>
                                                </ul>
                                                
                                                <div class="write-comment-wrap">
                                                    <form action="" class="comment-write-form">
                                                        <div class="comment-write-box">
                                                            <input type="hidden" class="trackingId">
                                                            <textarea name="comment" class="comment-textarea" placeholder="댓글을 작성해 주세요" rows="1" autocomplete="off"></textarea>
                                                        </div>

                                                    </form>
                                                </div>
                                            </div> 

                                        </div>


                                    </div>
                                </div>
                                <!-- Lcontent 끝 -->
                                 
                                 <div class="prd-Rv-Rcontent">
                                    <div class="rv-nameMsg">
                                        <b>오호라 크루</b>
                                        님의 리뷰입니다
                                    </div>
                                    
                                 </div>
                            </li>

                            <li class="prd-Rv-li">
                                <div class="prd-Rv-lcontent">
                                    <div class="lcontent-container">
                                        
                                        <div class="lc-tag-wrap">
                                            <span class="rv-badge">NEW</span>
                                            <span class="rv-badge">한달 사용 리뷰</span>
                                            <!-- 뭐 오호라 추천리뷰 이런거 넣으려면 뱃지 클래스로 span 추가하면됨 -->
                                        </div>

                                        <div class="lc-score-wrap">
                                            <div class="score-box">
                                                <div class="score-star-box">

                                                    <!-- 꽉별/빈별 클래스명 바꿔서 부여하면됨 -->
                                                    <div class="score-star-full">
                                                         <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-full">
                                                         <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-full">
                                                        <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-empty">
                                                        <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>

                                                    <div class="score-star-empty">
                                                        <img src="../resources/images/fullStar.svg" alt="꽉별">
                                                        <img src="../resources/images/emptyStar.svg" alt="빈별">
                                                    </div>
                                                    <span>별점:3점</span>

                                                </div>
                                                <div>보통이에요</div>
                                            </div>
                                        </div>
                                        <!-- 별점 스코어 박스 -->
                                        
                                        <div class="lc-content-wrap">
                                        <!-- review_list_v2__content_section -->
                                            <div class="lc-content-box">
                                                <div class="content-ment-box">
                                                    <div class="content-ment">
                                                        레드가 어울리는 계절이 왔어요
                                                        <br>
                                                        레드 풀컬러에 작은 꽃송이가 올라간 핑크가 더해져 어떤 손도 화사하게 만들어줍니다
                                                        <br>
                                                        배치에 따라 다양한 무드로 표현할 수 있는 티니를 만나보세요!
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="lc-image-wrap">
                                            <div class="lc-image-box">
                                                <ul class="lc-image-list">
                                                    <li>
                                                        <a href="#">
                                                            <div class="lc-image">
                                                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/47/33/image1/portrait_560bf1e22161a6b6.webp" alt="리뷰사진1">
                                                            </div>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#">
                                                            <div class="lc-image">
                                                                <img src="https://assets6.cre.ma/p/ohora-kr/reviews/00/01/28/47/33/image2/portrait_49f4606421c3b068.webp" alt="리뷰사진1">
                                                            </div>
                                                        </a>
                                                    </li>

                                                </ul>

                                            </div>
                                        </div>

                                        <div class="manager-review">
                                            <!-- 관리자 작성 리뷰 여부 -->
                                            이 리뷰는 오호라 관리자가 등록한 리뷰입니다.
                                        </div>
                                    
                                        <div class="lc-like-wrap">

                                            <div class="like-box">

                                                <a class="rv-like">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" class="review_like_action_v2__like_icon">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M8.725 6.2c-.051.152-.026.32.068.45s.245.207.406.207h3.477c.061 0 .121.006.181.017.55.1.914.626.814 1.175l-.962 5.288c-.087.48-.505.83-.994.83H6.177c-.558 0-1.01-.453-1.01-1.011v-6.24c0-.241.086-.474.243-.657l3.619-4.223c.174-.202.463-.26.702-.141.21.105.312.35.237.573L8.725 6.2zM2.333 14V7.333"></path>
                                                    </svg>
                                                    <span class="review_like_text">도움돼요</span>
                                                    <span class="review_like-score" style="display:;">3</span>
                                                    <!-- 0일시 display none부여 -->
                                                </a>

                                                <a class="rv-unlike">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" class="review_like_action_v2__unlike_link_icon">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M8.725 6.2c-.051.152-.026.32.068.45s.245.207.406.207h3.477c.061 0 .121.006.181.017.55.1.914.626.814 1.175l-.962 5.288c-.087.48-.505.83-.994.83H6.177c-.558 0-1.01-.453-1.01-1.011v-6.24c0-.241.086-.474.243-.657l3.619-4.223c.174-.202.463-.26.702-.141.21.105.312.35.237.573L8.725 6.2zM2.333 14V7.333"></path>
                                                    </svg>
                                                    <span class="review_unlike_text">도움안돼요</span>
                                                    <span class="review_unlike_score" style="display:;">3</span>
                                                </a>
                                                
                                            </div>    

                                            <div class="rv-comment-link-wrap">
                                                <a class="rv-comment-link">
    
                                                    <span class="review_list_v2__comments_text">댓글</span>
                                                    <span class="review_list_v2__comments_count js-comments-count">1</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 8 8" class="review_list_v2__small_arrow_icon">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M.667 2.333L4 5.667l3.333-3.334"></path>
                                                    </svg>
                                                </a>
                                            </div>

                                        </div>
                                        <!-- 좋/싫/댓 -->

                                        <div class="comments-container cmtOn">
                                            <!-- cmtOn일때만 디스플레이// cmtOff: diplay none -->
                                            <div class="comments-wrap">
                                                <ul class="comments-box">
                                                    <li class="comment-content">
                                                        <div class="comment-author">
                                                            오호라
                                                        </div>
                                                        <div class="comment-msg">
                                                            🅞🅗🅞🅡🅐✨
                                                        </div>
                                                    </li>

                                                    <li class="comment-content">
                                                        <div class="comment-author">
                                                            우후라
                                                        </div>
                                                        <div class="comment-msg">
                                                            오호호
                                                        </div>
                                                    </li>
                                                </ul>
                                                
                                                <div class="write-comment-wrap">
                                                    <form action="" class="comment-write-form">
                                                        <div class="comment-write-box">
                                                            <input type="hidden" class="trackingId">
                                                            <!-- <textarea name="comment" class="comment-textarea" placeholder="댓글을 작성해 주세요" rows="1" autocomplete="off"></textarea> -->
                                                            <input name="comment" class="comment-textarea" placeholder="댓글을 작성해 주세요" rows="1" autocomplete="off">
                                                        </div>

                                                    </form>
                                                </div>
                                            </div> 

                                        </div>


                                    </div>
                                </div>
                                <!-- Lcontent 끝 -->
                                 
                                 <div class="prd-Rv-Rcontent">
                                    <div class="rv-nameMsg">
                                        <b>오호라 크루</b>
                                        님의 리뷰입니다
                                    </div>
                                    
                                 </div>
                            </li>

                        </ul>
                    </div>
                    <!-- page -->
                </div>
                <!-- rv-body -->

                <div class="rv_footer">
                    <div class="rv-footer-wrap">
                        <div class="infinite-scroll-wrap">
                            <div class="infinite-scroll-btn-wrap">
                                <a href="#">더보기</a>
                            </div>
                            <div class="infinite-scroll-noMore" style="display: none;">모두 보셨습니다.</div>
                            <!-- 모두 안봤을 때는 none -->
                        </div>
                    </div>
                </div>
                

        </div>
    </div>
</div>

<script src="../resources/js/oho-review.js"></script>
    <!-- 콘텐츠 -->

    <!-- 아래 필수 리뷰는 아니고-->

  </body>
</html>
