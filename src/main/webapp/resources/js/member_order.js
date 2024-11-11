$("#btn_payment").on("click", function(event){
	if ($("#rzipcode1").val() && $("#raddr1").val() && $("#raddr2").val() && $("#rphone2_2").val() && $("#rphone2_3").val() && $("#email1").val()){
		$("#order_form").submit();
	} else{
		alert("배송지 정보를 입력하세요")
		event.preventDefault();
	}
})

$("a#preaddr").on("click", function(){
	$("#recent-addr-info").show();
	$("#selfInputAddr-form").hide();
	$("#addrinput2").removeClass("selected");
    $("#addrinput1").addClass("selected");
})
$("a#selfaddr").on("click", function(){
	$("#recent-addr-info").hide();
	$("#selfInputAddr-form").show();
	$("#addrinput1").removeClass("selected");
    $("#addrinput2").addClass("selected");
})

$("button.btnRemove").on("click", function(){
	if (confirm("선택하신 상품을 삭제하시겠습니까?")){
		$(this).parent().parent().remove();
		let path = "/projectOhora/product/orderpage.do?";
		const pdtIds = document.querySelectorAll("#pdtId");
		const pdtCounts = document.querySelectorAll("#pdtCount");
		for (let i=0; i<pdtIds.length;i++){
			const pdtId = pdtIds[i].value;
			const pdtCount = pdtCounts[i].value;
			path += "pdtId="+pdtId+"&pdtCount="+pdtCount+"&";
		}
		path = path.slice(0, -1);
		location.href = path;
	}
})

$("#userCoupon").on('change', function(){
	$("#txt_cpn_contents0").text($(this).val());
})

$("#btn_point").on("click", function(){
	$("#input_point").val( $(".UseablePoint").data('point'));
})

document.querySelector('#input_point').addEventListener('change', function() {
  validateAndReplace(this);
});

function validateAndReplace(input) {
	let userPoint = $(".UseablePoint").data('point');
  if (isNaN(input.value) || input.value.trim() === "" || Number(input.value) < 3000 || Number(input.value) > userPoint) {
    input.value = 0;
  }
}

function postCode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("raddr2").value = extraAddr;
                
                } else {
                    document.getElementById("raddr2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('rzipcode1').value = data.zonecode;
                document.getElementById("raddr1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("raddr2").focus();
            }
        }).open();
    }
