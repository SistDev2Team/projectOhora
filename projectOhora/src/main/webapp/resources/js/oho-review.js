 //추천순 최신순.. 클릭이벤트
$(".way-list").on("click" , function() {
    //alert("as")
    $(this).siblings().removeClass("way-selected")
    $(this).addClass("way-selected")

});


// 포토 영상 우선보기 버튼 이벤트(체크표시)
$(".toggleBtn-wrapper").on("click" , function() {
    //alert("as")

    if ( $(this).children().hasClass("toggle_button_component__icon-on")) { // 체크되어있을 때
        $(this).children().removeClass("toggle_button_component__icon-on")
    }else{ // 체크 안되어 있을 때 ( 누르면 체크 걸림)
        $(this).children().addClass("toggle_button_component__icon-on")
    }

});

//리뷰가 없다면 없다고 띄움

$(document).ready(function(){

    // let rv_ul = document.getElementsByClassName("prd-Rv-ul");
    // let rv_li = document.getElementsByClassName("prd-Rv-li");

    if ( $(".prd-Rv-ul .prd-Rv-li").length > 0  ) {
        //alert("자식 li 있다");
        $(".prd-no-rv-container").css("display", "none")
    } else {
        $(".prd-no-rv-container").css("display", "block")
    }

});


// 더보기 무한스크롤
// 더보기 누르면 백에서 li 두개 불러와서 추가하는 식임


//모두 보셧ㅆ씁니다 - 얘도 DB 확인 거쳐야함..


//댓글창 폴드

$(".rv-comment-link-wrap").on("click", function(){
    //alert("zs222d")

    if ( $(this).closest(".lc-like-wrap").siblings(".comments-container").hasClass("cmtOn")) { // 댓글창 켜져있을때
        //alert("zsd")   
        setTimeout(() => $(this).closest(".lc-like-wrap").siblings(".comments-container").removeClass("cmtOn").addClass("cmtOff"), 300); 
    }else{ // 댓글창 꺼져있을때
        setTimeout(() => $(this).closest(".lc-like-wrap").siblings(".comments-container").removeClass("cmtOff").addClass("cmtOn"), 300); 
    }

});


//댓글 서브밋


$(".comment-textarea").keydown(function(e) {
    if (e.keyCode == 13) {
        $(this).submit();
    }
});

// 댓글보기, 좋아요 등 잡다한 호버

$(".rv-like").on({
    mouseenter: function() {
        //alert("asd")
        $(this).css("color", "#14161a");
        $(this).find("svg").css("stroke", "#14161a")

        
    },mouseleave: function() {
        //alert("asdaaaaaa")
        $(this).css("color", "#707680");
        $(this).find("svg").css("stroke", "#707680")
    }
});

$(".rv-unlike").on({
    mouseenter: function() {
        //alert("asd")
        $(this).css("color", "#14161a");
        $(this).find("svg").css("stroke", "#14161a")

        
    },mouseleave: function() {
        //alert("asdaaaaaa")
        $(this).css("color", "#707680");
        $(this).find("svg").css("stroke", "#707680")
    }
});

$(".rv-comment-link").on({
    mouseenter: function() {
        //alert("asd")
        $(this).css("color", "#14161a");
        $(this).find("svg").css("stroke", "#14161a")

        
    },mouseleave: function() {
        //alert("asdaaaaaa")
        $(this).css("color", "#707680");
        $(this).find("svg").css("stroke", "#707680")
    }
});