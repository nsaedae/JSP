/**
 * 
 */
 // Validation 수행(유효성 검증)	
$(function(){
	$('.register > form').submit(function(){
		// form 전송할때 실행되는 이벤트
		
		if(!isUidOk){
			alert('아이디를 확인하세요.');
			return false;
		}
		
		if(!isPassOk){
			alert('비밀번호를 확인하세요.');
			return false;
		}
		
		if(!isNameOk){
			alert('이름은 한글 최소 2자 이어야 합니다.');
			return false;
		}
		
		if(!isNickOk){
			alert('별명을 다시 확인하시기 바랍니다.');
			return false;
		}
		
		if(!isEmailOk){
			alert('이메일을 다시 확인하시기 바랍니다.');
			return false;
		}
		
		if(!isHpOk){
			alert('휴대폰을 다시 확인하시기 바랍니다.');
			return false;
		}
		
		return true; // 최종 폼 전송
	});
	
});