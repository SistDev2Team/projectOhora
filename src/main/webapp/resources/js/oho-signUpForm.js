function validateForm() {
	
    const memberId = document.getElementById("member_id").value.trim();
    const password = document.getElementById("passwd").value.trim();
    const passwordConfirm = document.getElementById("passwd-confirm").value.trim();
    const name = document.getElementById("name").value.trim();
    const email = document.getElementById("email").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const birthYear = document.getElementById("birth-year").value.trim();
    const birthMonth = document.getElementById("birth-month").value.trim();
    const birthDay = document.getElementById("birth-day").value.trim();

    const termCk = document.getElementById("termCk").checked;
    const privacyCk = document.getElementById("privacyCk").checked;
    const consignCk = document.getElementById("consignCk").checked;
    const ageCk = document.getElementById("ageCk").checked;

    const isIdChecked = document.getElementById('member_id').getAttribute('data-checked') === 'true';
    const isEmailChecked = document.getElementById('email').getAttribute('data-checked') === 'true';
    const isPhoneChecked = document.getElementById('phone').getAttribute('data-checked') === 'true';

    if (!termCk) { alert("필수이용약관에 동의하셔야 합니다."); document.getElementById("termCk").focus(); return false; }
    if (!privacyCk) { alert("개인정보 수집 및 이용 동의에 동의하셔야 합니다."); document.getElementById("privacyCk").focus(); return false; }
    if (!consignCk) { alert("개인정보 처리 위탁 동의에 동의하셔야 합니다."); document.getElementById("consignCk").focus(); return false; }
    if (!ageCk) { alert("만 14세 이상임을 확인하셔야 합니다."); document.getElementById("ageCk").focus(); return false; }

    if (!memberId) { alert("아이디를 입력하세요."); document.getElementById("member_id").focus(); return false; }
    if (!password) { alert("비밀번호를 입력하세요."); document.getElementById("passwd").focus(); return false; }
    if (!validatePassword()) { return false; }
    if (!passwordConfirm) { alert("비밀번호 확인을 입력하세요."); document.getElementById("passwd-confirm").focus(); return false; }
    if (password !== passwordConfirm) { alert("비밀번호가 일치하지 않습니다."); document.getElementById("passwd-confirm").focus(); return false; }
    if (!name) { alert("이름을 입력하세요."); document.getElementById("name").focus(); return false; }
    if (!email) { alert("이메일을 입력하세요."); document.getElementById("email").focus(); return false; }
    if (!phone) { alert("휴대폰 번호를 입력하세요."); document.getElementById("phone").focus(); return false; }
    if (!birthYear || !birthMonth || !birthDay) { alert("생년월일을 입력하세요."); document.getElementById("birth-year").focus(); return false; }

    if (!isIdChecked) { alert('아이디 중복 확인을 해주세요.'); document.getElementById("member_id").focus(); return false; }
    if (!isEmailChecked) { alert('이메일 중복 확인을 해주세요.'); document.getElementById("email").focus(); return false; }
    if (!isPhoneChecked) { alert('휴대폰 번호 중복 확인을 해주세요.'); document.getElementById("phone").focus(); return false; }

    return true;
}

function validatePassword() {
    const passwordElement = document.getElementById("passwd");
    const confirmPasswordElement = document.getElementById("passwd-confirm");
    const password = passwordElement.value;
    const confirmPassword = confirmPasswordElement.value;

    const regexUpperCase = /[A-Z]/;
    const regexLowerCase = /[a-z]/;
    const regexNumber = /[0-9]/;
    const regexSpecial = /[!@#$%^&*(),.?":{}|<>]/;

    if (password.length < 8 || password.length > 16) {
        alert("비밀번호는 8자에서 16자 사이여야 합니다.");
        passwordElement.focus();
        return false;
    }

    let strengthCount = 0;
    if (regexUpperCase.test(password)) strengthCount++;
    if (regexLowerCase.test(password)) strengthCount++;
    if (regexNumber.test(password)) strengthCount++;
    if (regexSpecial.test(password)) strengthCount++;

    if (strengthCount < 2) {
        alert("비밀번호는 영문 대소문자, 숫자, 특수문자 중 최소 두 가지 이상을 조합해야 합니다.");
        passwordElement.focus();
        return false;
    }

    if (password !== confirmPassword) {
        alert("비밀번호가 일치하지 않습니다.");
        confirmPasswordElement.focus();
        return false;
    }

    return true;
}

function checkDuplication(type, inputId, msgId) {
    const value = document.getElementById(inputId).value;
    const msgElement = document.getElementById(msgId);
    const inputElement = document.getElementById(inputId);

    if (value.trim() === "") {
        alert("값을 입력해주세요.");
        inputElement.focus();
        return;
    }

    const regexMap = {
        'id': /^[a-z0-9]{4,16}$/,
        'email': /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
        'phone': /^\d{3}-\d{3,4}-\d{4}$/
    };

    if (!regexMap[type].test(value)) {
        msgElement.innerText = type === 'id' ? "아이디는 영문소문자 또는 숫자 4~16자" : type === 'email' ? "유효한 이메일을 입력해 주세요" : "유효한 휴대폰 번호를 입력해 주세요.";
        msgElement.className = "error";
        inputElement.setAttribute("data-checked", "false");
        inputElement.focus();
        return;
    }

    $.ajax({
        url: contextPath + '/checkDuplicate.ajax',
        type: 'GET',
        data: { type, value },
        success: function(jsonResponse) {
	
            if (jsonResponse.status === 'available') {
                msgElement.innerText = "사용 가능한 값입니다.";
                msgElement.className = "txtOK";
                inputElement.setAttribute("data-checked", "true");

           // type이 'phone'이고 중복 확인이 통과된 경우에만 인증번호 입력 섹션 표시
            if (type === 'phone' && inputElement.getAttribute("data-checked") === "true") {
                document.getElementById('authSection').style.display = 'block';
                sendAuthCode(value); // 인증번호 전송 함수 호출
            }
               
            } else {
                msgElement.innerText = type === 'id' ? "이미 사용 중인 아이디입니다." : type === 'email' ? "이미 사용 중인 이메일입니다." : "사용 중인 휴대폰 번호입니다.";
                msgElement.className = "error";
                inputElement.setAttribute("data-checked", "false");
                inputElement.focus();
            }
        },
        error: function() {
            alert("중복 확인 중 오류가 발생했습니다.");
        }
    });
}

function sendAuthCode(phone) {
    $.ajax({
        url: contextPath + '/sendAuthCode.ajax',
        type: 'POST',
        data: { phone },
        success: function(response) {
            
            if (response.status === "success") {	
                alert(response.message);
            } else {	
                alert("인증 번호 전송에 실패했습니다.");
            }
        },
        error: function() {
            alert("인증번호 전송에 실패했습니다.");

        }
    });
}

let isVerified = false; 

function verifyAuthCode() {
    const authCode = document.getElementById('authCode').value;
    const authMsg = document.getElementById('authMsg');

    $.ajax({
        url: contextPath + '/verifyAuthCode.ajax',
        type: 'POST',
        data: { authCode },
        success: function(response) {
            authMsg.innerText = response.message; // 서버에서 전달된 메시지 표시
            if (response.status === 'success') {
                authMsg.className = "txtOK";
                //alert(response.message);
                isVerified = true; // 인증 성공 시
            } else {
                authMsg.className = "error";
                //alert(response.message);
                isVerified = false; // 인증 실패 시
            }
        },
        error: function() {
            alert("인증 확인 중 오류가 발생했습니다."); 
        }
    });
}


function validateAuth() {
	
    if (!isVerified) { // 인증되지 않았을 경우

        alert("번호 인증을 완료해 주세요.");
        return false; // form 제출 방지
    }
    return true; // 인증 완료 시 통과
}


function allAgreeBtn() {
    const isChecked = document.getElementById("AgreeAllCk").checked;
    document.querySelectorAll(".termCK").forEach(checkbox => checkbox.checked = isChecked);
}

function updateSelectAll() {
    const checkboxes = document.querySelectorAll(".termCK");
    const agreeAllCheckbox = document.getElementById("AgreeAllCk");
    agreeAllCheckbox.checked = Array.from(checkboxes).every(checkbox => checkbox.checked);
}