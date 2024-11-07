document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("editForm");
    if (form) {
        form.onsubmit = function() {
            return validateForm(); // validateForm을 폼 제출 시 실행
        };
    }
});

// 이메일 유효성 검사 함수
function isValidEmail(email) {
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailPattern.test(email);
}

// 이메일 에러 처리 함수
function emailError() {
    const email = document.getElementById("email1").value.trim(); // 공백 제거
    const emailMsg = document.getElementById("emailMsg"); // 오류 메시지 요소

    // 오류 메시지 초기화
    emailMsg.textContent = "";

    if (!email) {
        alert("이메일을 입력하세요");
        emailMsg.textContent = "이메일을 입력하세요";
        emailMsg.classList.add("error");
        document.getElementById("email1").focus();
        return false;
    }

    if (!isValidEmail(email)) {
        alert("입력하신 이메일을 사용할 수 없습니다.");
        emailMsg.textContent = "입력하신 이메일을 사용할 수 없습니다.";
        emailMsg.classList.add("error");
        document.getElementById("email1").focus();
        return false;
    }

    // 유효한 이메일인 경우 오류 메시지 초기화
    emailMsg.textContent = ""; 
    emailMsg.classList.remove("error");
    return true;
}

// 비밀번호 유효성 검사 함수
function validatePassword() {
    const password = document.getElementById("passwd").value;
    const confirmPassword = document.getElementById("passwd-confirm").value;
    const passwordPattern = /^(?=.*[A-Za-z])(?=.*\d|.*[!@#$%^&*()_+|~=`{}\[\]:";'<>?,.\/\\])(?=.*[!@#$%^&*()_+|~=`{}\[\]:";'<>?,.\/\\]|\d)[A-Za-z\d!@#$%^&*()_+|~=`{}\[\]:";'<>?,.\/\\]{8,16}$/;
    const pwConfirmMsg = document.getElementById("pwConfirmMsg"); // 오류 메시지 요소

    // 오류 메시지 초기화
    pwConfirmMsg.textContent = "";

    if (!password) {
        alert("비밀번호 항목은 필수 입력 값입니다");
        pwConfirmMsg.textContent = "비밀번호 항목은 필수 입력 값입니다";
        pwConfirmMsg.classList.add("error");
        document.getElementById("passwd").focus();
        return false;
    }

    if (!passwordPattern.test(password)) {
        alert("비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합으로 8자~16자로 입력해주세요.");
        pwConfirmMsg.textContent = "비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합으로 8자~16자로 입력해주세요.";
        pwConfirmMsg.classList.add("error");
        document.getElementById("passwd").focus();
        return false;
    }

    if (password !== confirmPassword) {
        alert("비밀번호가 일치하지 않습니다.");
        pwConfirmMsg.textContent = "비밀번호가 일치하지 않습니다.";
        pwConfirmMsg.classList.add("error");
        document.getElementById("passwd-confirm").focus();
        return false;
    }

    pwConfirmMsg.textContent = ""; // 유효할 때 메시지 초기화
    pwConfirmMsg.classList.remove("error");
    return true;
}

// 폼 전체 유효성 검사 함수
function validateForm() {
    return emailError() && validatePassword();
}