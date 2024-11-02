
		$(document).ready(function() {
			
			// 연락 방법에 따른 필드 전환 함수
			function toggleContactMethod(method, isCorporate = false, isForeigner = false) {
				if (isCorporate) {  // 법인사업자 회원
					$('#findByCompanynumber, #companynumberInput').toggle(method === 'companynumber');
					$('#findByEmail, #emailInput').toggle(method === 'email');
					$('#findByPhone, #phoneInput').toggle(method === 'phone');
				} 
				else if (isForeigner) {  // 외국인 회원
					$('#findByRegistrationnumber, #registrationnumberInput').toggle(method === 'registration');
					$('#findByEmail, #emailInput').toggle(method === 'email');
					$('#findByPhone, #phoneInput').toggle(method === 'phone');
				} 
				else {  // 개인회원 또는 개인사업자 회원
					$('#findByEmail, #emailInput').toggle(method === 'email');
					$('#findByPhone, #phoneInput').toggle(method === 'phone');
				}
			}
	
			// 초기 필드 설정 함수
			function resetFields() {
				$('#findByEmail, #emailInput, #findByPhone, #phoneInput, #findByCompanynumber, #companynumberInput, #findByRegistrationnumber, #registrationnumberInput').hide();
				$('#companynameLabel').closest('.label-container').hide(); // 법인명 라벨과 입력 필드 숨기기
				$('#nameLabel').text('이름');  // 기본 라벨 텍스트로 초기화
				$('#companynumber, label[for="companynumber"], #registrationnumber, label[for="registrationnumber"]').hide(); // 법인번호, 등록번호 라디오 버튼 숨기기
			}
	
			// 회원 유형에 따른 초기 필드 설정 함수
			function setMembershipFields(selectedType) {
				resetFields();
				if (selectedType === '개인회원' || selectedType === '개인사업자 회원') {
					// 개인회원 및 개인사업자: 이름과 이메일 or 휴대폰 번호 필드
					$('#findByEmail, #emailInput').show(); // 기본은 이메일로 찾기
					$('#phone').on('click', function() {
						toggleContactMethod('phone');
					});
					$('#email').on('click', function() {
						toggleContactMethod('email');
					});
				} 
				else if (selectedType === '법인사업자 회원') {
					// 법인사업자면 기본은 법인번호로 찾기
					$("#companynumber").prop("checked", true);
					$('#companynameLabel').closest('.label-container').show();
					$('#companynumber, label[for="companynumber"]').show();
					$('#findByCompanynumber, #companynumberInput').show(); 
					$('#nameLabel').text('법인명');
					
					// 법인사업자 연락 방법 선택 시 필드 전환
					$('#phone').on('click', function() {
						toggleContactMethod('phone', true);
					});
					$('#email').on('click', function() {
						toggleContactMethod('email', true);
					});
					$('#companynumber').on('click', function() {
						toggleContactMethod('companynumber', true);
					});
				} 
				else if (selectedType === '외국인 회원') {
					// 외국인 회원: 기본은 등록번호로 찾기
					$("#registrationnumber").prop("checked", true);
					$('#registrationnumber, label[for="registrationnumber"]').show();
					$('#findByRegistrationnumber, #registrationnumberInput').show();
					
					// 외국인 회원 연락 방법 선택 시 필드 전환
					$('#phone').on('click', function() {
						toggleContactMethod('phone', false, true);
					});
					$('#email').on('click', function() {
						toggleContactMethod('email', false, true);
					});
					$('#registrationnumber').on('click', function() {
						toggleContactMethod('registration', false, true);
					});
				}
			}
	
			// 초기 회원 유형에 따른 필드 설정
			$('.dropdown-select').on('change', function() {
				setMembershipFields($(this).val());
			});
	
			// 기본 이메일 및 휴대폰번호 클릭 이벤트 정의
			$('#phone').on('click', function() {
				toggleContactMethod('phone');
			});
			$('#email').on('click', function() {
				toggleContactMethod('email');
			});
		});