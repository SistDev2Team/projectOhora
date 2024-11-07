function validateForm() {
	
	//회원정보 입력
    const memberId = document.getElementById("member_id").value.trim();
    const password = document.getElementById("passwd").value.trim();
    const passwordConfirm = document.getElementById("passwd-confirm").value.trim();
    const name = document.getElementById("name").value.trim();
    const email = document.getElementById("email").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const birthYear = document.getElementById("birth-year").value.trim();
    const birthMonth = document.getElementById("birth-month").value.trim();
    const birthDay = document.getElementById("birth-day").value.trim();

    // 필수 약관 체크박스들
    const termCk = document.getElementById("termCk").checked;
    const privacyCk = document.getElementById("privacyCk").checked;
    const consignCk = document.getElementById("consignCk").checked;
    const ageCk = document.getElementById("ageCk").checked;

	var isIdChecked = document.getElementById('member_id').getAttribute('data-checked') === 'true';
    var isEmailChecked = document.getElementById('email').getAttribute('data-checked') === 'true';
    var isPhoneChecked = document.getElementById('phone').getAttribute('data-checked') === 'true';
		
		
	// 필수 약관 동의 확인
    if (!termCk) {
        alert("필수이용약관에 동의하셔야 합니다.");
        document.getElementById("termCk").focus();
        return false; // 폼 제출 방지
    }
	if (!privacyCk) {
        alert("개인정보 수집 및 이용 동의에 동의하셔야 합니다.");
        document.getElementById("privacyCk").focus();
        return false; // 폼 제출 방지
    }

    if (!consignCk) {
        alert("개인정보 처리 위탁 동의에 동의하셔야 합니다.");
        document.getElementById("consignCk").focus();
        return false; // 폼 제출 방지
    }

    if (!ageCk) {
        alert("만 14세 이상임을 확인하셔야 합니다.");
        document.getElementById("ageCk").focus();
        return false; // 폼 제출 방지
    }
	
    // 필수 입력란 확인
    if (!memberId) {
        alert("아이디를 입력하세요.");
        document.getElementById("member_id").focus();
        return false; // 폼 제출 방지
    }

    if (!password) {
        alert("비밀번호를 입력하세요.");
        document.getElementById("passwd").focus();
        return false; // 폼 제출 방지
    }

    if (!passwordConfirm) {
        alert("비밀번호 확인을 입력하세요.");
        document.getElementById("passwd-confirm").focus();
        return false; // 폼 제출 방지
    }

    if (password !== passwordConfirm) {
        alert("비밀번호가 일치하지 않습니다.");
        document.getElementById("passwd-confirm").focus();
        return false; // 폼 제출 방지
    }

    if (!name) {
        alert("이름을 입력하세요.");
        document.getElementById("name").focus();
        return false; // 폼 제출 방지
    }

    if (!email) {
        alert("이메일을 입력하세요.");
        document.getElementById("email").focus();
        return false; // 폼 제출 방지
    }

    if (!phone) {
        alert("휴대폰 번호를 입력하세요.");
        document.getElementById("phone").focus();
        return false; // 폼 제출 방지
    }

    if (!birthYear) {
        alert("생년월일을 입력하세요.");
        document.getElementById("birth-year").focus();
        return false; // 폼 제출 방지
    }

    if (!birthMonth) {
        alert("생년월일을 입력하세요.");
        document.getElementById("birth-month").focus();
        return false; // 폼 제출 방지
    }

    if (!birthDay) {
        alert("생년월일을 입력하세요.");
        document.getElementById("birth-day").focus();
        return false; // 폼 제출 방지
    }

    
	if (!isIdChecked) {
        alert('아이디 중복 확인을 해주세요.');
		document.getElementById("member_id").focus();
        return false;
    }
    if (!isEmailChecked) {
        alert('이메일 중복 확인을 해주세요.');
		document.getElementById("email").focus();
        return false;
    }
    if (!isPhoneChecked) {
        alert('휴대폰 번호 중복 확인을 해주세요.');
		document.getElementById("phone").focus();
        return false;
    }

    return true; // 모든 검사 통과 시 폼 제출
}


function validatePassword() {
    const passwordElement = document.getElementById("passwd");
    const confirmPasswordElement = document.getElementById("passwd-confirm");
    const password = passwordElement.value;
    const confirmPassword = confirmPasswordElement.value;
	

    // 정규 표현식 정의
    const regexUpperCase = /[A-Z]/;
    const regexLowerCase = /[a-z]/;
    const regexNumber = /[0-9]/;
    const regexSpecial = /[!@#$%^&*(),.?":{}|<>]/;

    // 비밀번호 길이 체크
    if (password.length < 8 || password.length > 16) {
        alert("비밀번호는 8자에서 16자 사이여야 합니다.");
        passwordElement.focus(); 
		
        return false;
    }

    // 최소 두 가지 조합 체크
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

    // 비밀번호 확인 일치 여부 체크
    if (password !== confirmPassword) {
        alert("비밀번호가 일치하지 않습니다.");
		confirmPasswordElement.focus();
        return false;
    }

    return true;
}


function checkDuplication(type, inputId, msgId) {
	
	var value = document.getElementById(inputId).value;
    var msgElement = document.getElementById(msgId);
    var inputElement = document.getElementById(inputId);
	
    var value = document.getElementById(inputId).value;
    if (value.trim() === "") {
        alert("값을 입력해주세요.");
        return;
    }

    if (type === 'id') {
        var idRegex = /^[a-z0-9]{4,16}$/;
        if (!idRegex.test(value)) {
            msgElement.innerText = "아이디는 영문소문자 또는 숫자 4~16자로 입력해 주세요.";
            msgElement.className = "error";
            inputElement.setAttribute("data-checked", "false");
            return;
        }
    } else if (type === 'email') {
        var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailRegex.test(value)) {
            msgElement.innerText = "유효한 이메일을 입력해 주세요.";
            msgElement.className = "error";
            inputElement.setAttribute("data-checked", "false");
            return;
        }
    } else if (type === 'phone') {
        var phoneRegex = /^\d{3}-\d{3,4}-\d{4}$/;
        if (!phoneRegex.test(value)) {
            msgElement.innerText = "유효하지 않은 휴대폰 번호입니다. 입력한 번호를 확인해 주세요.";
            msgElement.className = "error";
            inputElement.setAttribute("data-checked", "false");
            return;
        }
    }

    // AJAX 요청을 서버로 보냄
    $.ajax({
    url: contextPath + '/checkDuplicate.ajax',
    type: 'GET',
    data: { type: type, value: value },
    success: function(jsonResponse) {
    

        // 중복 확인 결과에 따라 메시지를 업데이트
        if (jsonResponse.status === 'available') {
            msgElement.innerText = "사용 가능한 값입니다.";
            msgElement.className = "txtOK";
			inputElement.setAttribute("data-checked", "true");
        } else if (jsonResponse.status === 'duplicate') {
            // 각 type에 따라 다른 오류 메시지 설정
            if (type === 'id') {
                msgElement.innerText = "이미 사용 중인 아이디입니다.";
            } else if (type === 'email') {
                msgElement.innerText = "이미 사용 중인 이메일입니다.";
            } else if (type === 'phone') {
                msgElement.innerText = "이미 등록된 휴대전화입니다.";
            }
            msgElement.className = "error";
			inputElement.setAttribute("data-checked", "false");
        }
    }, 
    error: function() {
        alert("중복 확인 중 오류가 발생했습니다.");
    }
});
}

//약관동의 처리
// 전체 동의 버튼을 클릭했을 때 호출되는 함수
function allAgreeBtn() {
    var isChecked = document.getElementById("AgreeAllCk").checked;
    var checkboxes = document.querySelectorAll(".termCK");
    
    // 모든 약관 체크박스를 전체 동의 상태에 맞춰 체크 또는 해제
    checkboxes.forEach(function(checkbox) {
        checkbox.checked = isChecked;
    });
}

// 개별 동의 체크박스를 클릭했을 때 호출되는 함수
function updateSelectAll() {
    var checkboxes = document.querySelectorAll(".termCK");
    var agreeAllCheckbox = document.getElementById("AgreeAllCk");
    
    // 모든 개별 체크박스가 체크되었는지 확인
    var allChecked = true;
    checkboxes.forEach(function(checkbox) {
        if (!checkbox.checked) {
            allChecked = false;
        }
    });
    
    // 전체 동의 체크박스를 개별 체크박스의 상태에 맞게 업데이트
    agreeAllCheckbox.checked = allChecked;
}





















