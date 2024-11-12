$(document).ready(function() {
    $(".mainSection-best .cate_tab span").click(function() {
        var category = $(this).data("cate");

        // AJAX 요청 보내기
        $.ajax({
		    url: "/projectOhora/main/mainajax.ajax", // URL 수정
		    type: "GET",
		    data: { cate_no: category }, // 카테고리 번호 전달
		    success: function(response) {
		        $(".common_list_box2 .items-swiper-wrapper").html(response); // 새로운 데이터로 갱신
		    },
		    error: function(xhr, status, error) {
		        console.log("Error: " + error);
		    }
		});

        // 카테고리 활성화 처리
        $(".mainSection-best .cate_tab span").removeClass("on");
        $(this).addClass("on");
    });

    // 색깔 고르기
    $('.find_color_list span').on("click", function() {
        $(this).toggleClass('on');
    });

    // 서브밋 버튼 클릭 (추후 추가할 서브밋 관련 코드)
    $('.find_color_list div.find_color_btn').on("click", function() {
        // 서브밋 관련 로직 추가
    });
	
	// 이미지 호버 효과
	$(".items-swiper-wrapper").on("mouseenter", "li", function() {
	    $(this).find(".thumb_img").css("opacity", "0");
	    $(this).find(".hover_img").css("opacity", "1");
	});
	
	$(".items-swiper-wrapper").on("mouseleave", "li", function() {
	    $(this).find(".hover_img").css("opacity", "0");
	    $(this).find(".thumb_img").css("opacity", "1");
	});
	
	
	
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

    var swiper = new Swiper(".mySwiper4", {
        loop:true,
    });

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
	
});
