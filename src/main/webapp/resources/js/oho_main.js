//색깔 고르기
$('.find_color_list span').on("click", function() {
    // 클릭한 요소에 'on' 클래스 토글
    $(this).toggleClass('on');
});

$('.find_color_list div.find_color_btn').on("click", function() {
    // 서브밋?
});



//이미지 호버
$(".items-swiper-wrapper li").on({
    mouseenter: function() {
        //alert("asd")
        $(this).find(".thumb_img").css("opacity" ,"0")
        $(this).find(".hover_img").css("opacity" ,"1")
    },mouseleave: function() {
        $(this).find(".hover_img").css("opacity" ,"0")
        $(this).find(".thumb_img").css("opacity" ,"1")
    }
});

// 주간 베스트 카테고리 선택

$(".cate_tab span").on("click" , function() {
    //alert("as")
    $(this).siblings().removeClass("on")
    $(this).addClass("on")

});