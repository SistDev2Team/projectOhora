//비번확인 동일 여부

function pwdcError() {
    let pwdAlert = $("#pwConfirmMsg");
    pwdAlert.text("");
    if (pwdAlert.hasClass("error")) {
        pwdAlert.text("비밀번호가 일치하지 않습니다")
    }
}


$(document).on('click', function(event) {
    //alert('페이지의 아무 곳이나 클릭했습니다!')
    let pwd = $("#passwd").val();
    let pwdc = $("#passwd-confirm").val();
    //alert(pwd)
    if (pwdc!=pwd) {
        $("#pwConfirmMsg").addClass("error")
    }else {
        $("#pwConfirmMsg").removeClass("error")
    }
    pwdcError();
});



//유효 이메일 여부
//중복 검사 db에서.. 하던가말던가..

function isValidEmail(email) {
    // 이메일 정규 표현식
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailPattern.test(email);
}

function emailError() {
    let emailAlert = $("#emailMsg");
    emailAlert.text("");
    if (emailAlert.hasClass("error")) {
        emailAlert.text("유효하지 않은 이메일 형식입니다")
    }
}

$(document).on('click', function(event) {
    //alert('페이지의 아무 곳이나 클릭했습니다!')
    let email = $("#email1").val();
    let emailAlert = $("#emailMsg");
    if (!email) {
        emailAlert.text("이메일을 입력하세요");
        return;
    }


    if (!isValidEmail(email)) {
        $("#emailMsg").addClass("error")
    }else {
        $("#emailMsg").removeClass("error")
    }
    emailError();
});