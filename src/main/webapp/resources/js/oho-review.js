 //추천순 최신순.. 클릭이벤트
$(".way-list").on("click" , function() {
    //alert("as")
    $(this).siblings().removeClass("way-selected")
    $(this).addClass("way-selected")
	let pdtId = $(this).attr("data-pdt-id")
	let link ="";
	if ( $(this).hasClass("recommend")  ) {
		link = `/projectOhora/review/reviewlist.do?pdt_id=${pdtId}&sort=recommend`;
	} else if ( $(this).hasClass("new")) {
		link = `/projectOhora/review/reviewlist.do?pdt_id=${pdtId}&sort=new`;
	} else {
		link = `/projectOhora/review/reviewlist.do?pdt_id=${pdtId}&sort=rating`;
	}
	
	
	location.href = link;
	
});

// 포토 영상 우선보기 버튼 이벤트(체크표시)
$(".toggleBtn-wrapper").on("click" , function() {
   //alert("as")
	let pdtId = $(this).attr("data-pdt-id")
    if ( $(this).children().hasClass("toggle_button_component__icon-on")) { // 체크되어있을 때
        //$(this).children().removeClass("toggle_button_component__icon-on")
		link  = `/projectOhora/review/reviewlist.do?pdt_id=${pdtId}&sort=recommend&phototoggle=off`;

    }else{ // 체크 안되어 있을 때 ( 누르면 체크 걸림)
		link  = `/projectOhora/review/reviewlist.do?pdt_id=${pdtId}&sort=photo&phototoggle=on`;
        //$(this).children().addClass("toggle_button_component__icon-on")
    }
	location.href = link;
	

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

//댓글창 폴드
$(document).on("click" , ".rv-comment-link-wrap" , function() {
//$(".rv-comment-link-wrap").on("click", function(){
    
	let revId = $(this).attr('data-rev-id');
	
	
	//alert(revId)
	 $.ajax({
					 url:"/projectOhora/review/reviewcmt.ajax" , 
					 dataType:"json",
					 type:"GET",
					 data: { revId : revId },
					 cache:false ,
					 success: function ( data,  textStatus, jqXHR ){
						
						// "{ \"comments\": [
						//	 {\"cmt_id\":2,\"rev_id\":1,\"user_id\":14,\"cmt_writedate\":\"2024-11-04 00:00:00\",\"cmt_content\":\"이거 바이럴이지\"}
						// ,{\"cmt_id\":1,\"rev_id\":1,\"user_id\":14,\"cmt_writedate\":\"2024-11-03 00:00:00\",\"cmt_content\":\"리뷰에 댓글 써야지\"}
					   // ]}"

						//data.comments[0].cmt_id
					
						$("#cmt-ul" + revId).empty();
						
					$(data.comments).each( function(index, comments) {
            		  $("#cmt-ul" + revId).append(`<li class="comment-content">
                                                        <div class="comment-author">
                                                            ${comments.user_name}
                                                        </div>
                                                        <div class="comment-msg">
                                                           ${comments.cmt_content}
                                                        </div>
														<a class="comment_v2__edit_link js-comment-edit-dropdown-link">
														    <div class="comment_v2__edit_link_text">삭제</div>
														</a>
                                                    </li>` )
            		  })

					
				 	}, //success
					 error:function (){
						 alert("댓글에러~~~ ");
					 }
				
		});//ajax

    if ( $(this).closest(".lc-like-wrap").siblings(".comments-container").hasClass("cmtOn")) { // 댓글창 켜져있을때
        setTimeout(() => $(this).closest(".lc-like-wrap").siblings(".comments-container").removeClass("cmtOn").addClass("cmtOff"), 300); 
    }else{ // 댓글창 꺼져있을때
        setTimeout(() => $(this).closest(".lc-like-wrap").siblings(".comments-container").removeClass("cmtOff").addClass("cmtOn"), 300); 
    }

});


//댓글 취소, 입력 버튼 띄우기 ( 댓글 텍스트 에어리어 포커스)
$(document).ready(function() {
    // textarea에 입력이 시작될 때
    $(document).on('click','.comment-textarea', function() {
        // 현재 textarea를 기준으로 부모 요소를 찾아서 버튼들을 보여줌
        var $commentBox = $(this).closest('.comment-write-box');
        $commentBox.next('.write-comment-btn-wrap').show();
    });

    // 취소 버튼 클릭 시
    $(document).on('click', '.cancelWriting', function() {
        var $commentBox = $(this).closest('.write-comment-btn-wrap').prev('.comment-write-box');
        // textarea 비우기
        $commentBox.find('.comment-textarea').val('');
        // 버튼 숨기기
        $(this).closest('.write-comment-btn-wrap').hide();
    });
});



//댓글 입력하면 등록 버튼 활성화
$(document).on('input','.comment-textarea', function() {
    var $textarea = $(this);
    var $submitButton = $textarea.closest('.comment-write-form').find('.submitComment');

    // 텍스트 영역의 값이 비어 있는지 확인
    if ($textarea.val().trim() === '') {
        // 비어 있을 경우 클래스 추가
        $submitButton.addClass('disBtn');
    } else {
        // 비어 있지 않을 경우 클래스 제거
        $submitButton.removeClass('disBtn');
    }
});



 

//댓글 서브밋
$(document).on('submit', '.comment-write-form', function(e) {
    e.preventDefault(); // 기본 폼 제출 방지

    var $form = $(this);
    var textarea = $form.find('textarea.comment-textarea');
    var commentText = textarea.val().trim();
	let comment = textarea.val();
	
    // 입력값 있을 때 AJAX 
    if (commentText !== '') {
        $.ajax({
            url: "/projectOhora/review/reviewcmtwrite.ajax", // 폼의 action 속성에서 URL 가져오기
            type:"GET",
            data: {
                comment: comment,
                userId: $form.find('.trackingId').val(), // userId 가져오기
                revId: $form.find('.trackingrevId').val() // rev_id 가져오기
            },
			cache:false ,
            success: function ( data,  textStatus, jqXHR ){
						
				console.log("댓글 등록 ajax 200");
				
				  var revId2 = $form.find('.trackingrevId').val();
				console.log("함수 넘어간 revId = " + revId2);
           		 baroComment(revId2); 
					
				 	}, //success
            error: function() {
                // 요청 실패 시 처리할 내용
                console.error('댓글 등록에 실패하였습니다.', error);
            }
        });
    } else {
        alert('댓글을 입력해 주세요.'); // 빈 댓글 입력 방지
    }
});


function baroComment(revId) {
	 $.ajax({
					 url:"/projectOhora/review/reviewcmt.ajax" , 
					 dataType:"json",
					 type:"GET",
					 data: { revId : revId },
					 cache:false ,
					 success: function ( data,  textStatus, jqXHR ){

					$("#cmt-ul" + revId).empty();
						
					$(data.comments).each( function(index, comments) {
            		  $("#cmt-ul" + revId).append(`<li class="comment-content">
                                                        <div class="comment-author">
                                                            ${comments.user_name}
                                                        </div>
                                                        <div class="comment-msg">
                                                           ${comments.cmt_content}
                                                        </div>
                                                    </li>` )
            		  })
					//댓글 갯수 바로 반영
					let cnt = $("#cmtCnt"+revId);
					let cntnum = parseInt( cnt.text() );
					console.log(cntnum);
					cntnum += 1;
					console.log("1더하면 " + cntnum);
					cnt.text(cntnum);
					
					//입력창 비우기
					$("#cmt-writeArea" + revId).val("");
					
				 	}, //success
					 error:function (){
						 alert("댓글에러~~~ ");
					 }
				
		});//ajax
}


//댓글 입력 권한 검사
$(document).on("keydown", ".comment-textarea", function(e) {
    trackuserId = $(".trackingId").val();
	console.log(userId)
   //  null   "null"
	if ( trackuserId != "null" && trackuserId !="NaN" ) { // userId가 null이 아니다
	   console.log( e.keyCode )
        if (e.keyCode === 13) {
            console.log("서브밋");
			$(".comment-write-form").submit();
        }
    } else { // userId가 null이거나 비어있는 경우
        alert("로그인 하시겠습니까?");
    }
});

//댓글 작성
$(document ).on('submit','#comment-write-form' , function(event) {
        event.preventDefault(); // 기본 폼 서브밋 방지
	//alert("ajaxajax")
        var comment = $('#cmt-writeArea').val();
        var userId = $('.trackingId').val();

        $.ajax({
            url: $(this).attr('action'),
            type: 'POST',
            data: {
                comment: comment,
                userId: userId
            },
            success: function(response) {
                // 댓글이 성공적으로 작성된 후 처리
                console.log(response);
            },
            error: function(xhr, status, error) {
                // 에러 처리
                console.error(error);
            }
        });
    });

$(document).ready(function() {
    let maxScore = 0; // 최대 점수 저장
    let maxLi = null; // 최대 점수 가진 li 

    $(".score-count").each(function() {
        let score = parseInt($(this).text());

        if (score > maxScore) {
            maxScore = score;
            maxLi = $(this).closest("li"); // 해당 .score-count의 부모 li 요소 저장
        }
    });

    // 가장 큰 점수를 가진 li의 자식 .score-graph에 'highest' 클래스 추가
    if (maxLi) {
        maxLi.find(".score-graph").addClass("highest");
    }
});

//더보기 ajax
$(".infinite-scroll-btn-wrap").on("click" , function() {
		let currentRevPage = parseInt($(this).attr('data-currPage'));
		let pdtId = $(this).attr('data-pdtId');
		let sort = $(this).attr('data-sort');
		//alert(pdtId + sort)
		
  $.ajax({
					 url:"/projectOhora/review/reviewMorerev.ajax" , 
					 dataType:"json",
					 type:"GET",
					 data: { pdtId : pdtId,
								sort : sort,  
								currentRevPage : currentRevPage },
					 cache:false ,
					 success: function(data, textStatus, jqXHR) {
		currpageUp();
		
		let currentRevPage = parseInt($(this).attr('data-currPage'))+1;
		
        let reviewLi = ''; // 루프 전에 초기화

        data.reviews.forEach(function(reviews) {
            reviewLi += `<li class="prd-Rv-li">` +
                `<div class="prd-Rv-lcontent">` +
                    `<div class="lcontent-container">` +
                        `<div class="lc-tag-wrap">`;

            if (reviews.newImg) {
                reviewLi += `<span class="rv-badge">NEW</span>`;
            }

            if (reviews.rev_isrecommend === 'Y') {
                reviewLi += `<span class="rv-badge">오호라 추천 리뷰</span>`;
            }

            reviewLi += `</div>` +
                        `<div class="lc-score-wrap">` +
                            `<div class="score-box">` +
                                `<div class="score-star-box">`;

            for (let i = 1; i <= 5; i++) {
                if (i <= reviews.rev_rating) {
                    // 꽉찬 별
                    reviewLi += `<div class="score-star-full">
                                    <img src="../resources/images/fullStar.svg" alt="꽉별">
                                    <img src="../resources/images/emptyStar.svg" alt="빈별">
                                 </div>`;
                } else {
                    // 빈 별
                    reviewLi += `<div class="score-star-empty">
                                    <img src="../resources/images/fullStar.svg" alt="꽉별">
                                    <img src="../resources/images/emptyStar.svg" alt="빈별">
                                 </div>`;
                }
            }

            reviewLi += `<span>별점: ${reviews.rev_rating} 점</span>` +
                        `</div><div>`;

            switch (reviews.rev_rating) {
                case 1: reviewLi += '별로예요'; break;
                case 2: reviewLi += '그냥 그래요'; break;
                case 3: reviewLi += '보통이에요'; break;
                case 4: reviewLi += '맘에 들어요'; break;
                case 5: reviewLi += '아주 좋아요'; break;
                default: reviewLi += 'XXXX';
            }

            reviewLi += `</div></div></div>` +
                        `<div class="lc-content-wrap">
                            <div class="lc-content-box">
                                <div class="content-ment-box">
                                    <div class="content-ment">
                                        ${reviews.rev_content}
                                    </div>
                                </div>
                            </div>
                        </div>` +
                        `<div class="lc-image-wrap">
                            <div class="lc-image-box">
                                <ul class="lc-image-list">`;

            reviews.photos.forEach(photo => {
                reviewLi += `<li>
                                <a href="#">
                                    <div class="lc-image">
                                        <img src="/projectOhora/reviewMedia/${photo.filesystemname}" alt="리뷰사진">
                                    </div>
                                </a>
                            </li>`;
            });

            reviewLi += `</ul></div></div>` +
                        `<div class="manager-review">`;

            if (reviews.rev_isrecommend === 'Y') {
                reviewLi += `이 리뷰는 오호라 관리자가 등록한 리뷰입니다.`;
            }

            reviewLi += `</div>
                <div class="lc-like-wrap">
                    <div class="like-box">
                        <a class="rv-like">
                            <span class="review_like_text">도움돼요</span>
                            <span class="review_like-score">${reviews.rev_good_count}</span>
                        </a>
                        <a class="rv-unlike">
                            <span class="review_unlike_text">도움안돼요</span>
                            <span class="review_unlike_score">${reviews.rev_bad_count}</span>
                        </a>
                    </div>
                    <div class="rv-comment-link-wrap" id="rv-li${reviews.rev_id}" data-rev-id="${reviews.rev_id}">
                        <a class="rv-comment-link">
                            <span class="review_list_v2__comments_text">댓글</span>
                            <span class="review_list_v2__comments_count js-comments-count" id="cmtCnt${reviews.rev_id}">${reviews.rev_comment_count}</span>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 8 8" class="review_list_v2__small_arrow_icon">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M.667 2.333L4 5.667l3.333-3.334"></path>
                            </svg>
                        </a>
                    </div>
                </div>
                <div class="comments-container cmtOff">
                    <div class="comments-wrap">
                        <ul class="comments-box" id="cmt-ul${reviews.rev_id}">
                        </ul>
                        <div class="write-comment-wrap">
                            <form class="comment-write-form">
                                <div class="comment-write-box">
                                    <textarea id="cmt-writeArea${reviews.rev_id}" name="comment" class="comment-textarea" placeholder="댓글을 작성해 주세요" rows="1" autocomplete="off"></textarea>
                                    <input type="hidden" class="trackingId" value="${userId}">
                                    <input type="hidden" class="trackingrevId" value="${reviews.rev_id}">
                                </div>
                                <div class="write-comment-btn-wrap" style="display: none">
                                    <span class="writeBtn-box">
                                        <button type="button" class="cancelWriting">취소</button>
                                        <button type="submit" class="submitComment disBtn" id="submitWriting${reviews.rev_id}">등록</button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="prd-Rv-Rcontent">
            <div class="rv-nameMsg">
                <b>${reviews.user_name}</b>님의 리뷰입니다
            </div>
        </div>
        </li>`;
        });
					
			 $(".prd-Rv-ul").append(reviewLi)//append
		
		// 전체 페이지 계산
		 let allPage = Math.ceil(data.reviews[0].allRevCnt /2 );
		
		 $(".infinite-scroll-btn-wrap").attr('data-allPage', allPage);
		
		 	}, //success
			 error:function (){
				 alert("더보기에러~~~ ");
			 },

				
		});//ajax
		
		let currentRevPage2 = parseInt( $(".infinite-scroll-btn-wrap").attr('data-currPage' ) ) ;
		let allPage =  parseInt( $(".infinite-scroll-btn-wrap").attr('data-allPage') );
		//alert("이제 현재페이지는 = " +currentRevPage)
		//alert("여기서 올페이지 " +  allPage)
		if( currentRevPage2 >= allPage ) {
			//alert("다봤다")
			$(".infinite-scroll-btn-wrap").css("display", "none");
			$(".infinite-scroll-noMore").css("display", "block");
			
		}
		
		
	
}); // click



// 현재 페이지 올리기 함수
function currpageUp() {
	let currentRevPage = parseInt($(".infinite-scroll-btn-wrap").attr('data-currPage'));
        
	$(".infinite-scroll-btn-wrap").attr('data-currPage' ,currentRevPage+1 )
}



// 댓글보기, 좋아요 등 잡다한 호버

$(document).on({
    mouseenter: function() {
        $(this).css("color", "#14161a");
        $(this).find("svg").css("stroke", "#14161a");
    },
    mouseleave: function() {
        $(this).css("color", "#707680");
        $(this).find("svg").css("stroke", "#707680");
    }
}, ".rv-like");

$(document).on({
    mouseenter: function() {
        $(this).css("color", "#14161a");
        $(this).find("svg").css("stroke", "#14161a");
    },
    mouseleave: function() {
        $(this).css("color", "#707680");
        $(this).find("svg").css("stroke", "#707680");
    }
}, ".rv-unlike");

$(document).on({
    mouseenter: function() {
        $(this).css("color", "#14161a");
        $(this).find("svg").css("stroke", "#14161a");
    },
    mouseleave: function() {
        $(this).css("color", "#707680");
        $(this).find("svg").css("stroke", "#707680");
    }
}, ".rv-comment-link");
