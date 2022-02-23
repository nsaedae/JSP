/**
 * 
 */
 // Validation 수행(유효성 검증)	
$(function(){
	
	$('.register > form').submit(function(){
		// form 전송할때 실행되는 이벤트
		
		if(아이디가 중복되었으면){
			alert('아이디를 확인하세요.');
			return false;
		}
		
		if(비밀번호가 일치 하지 않으면){
			alert('비밀번호를 확인하세요.');
			return false;
		}
		
		if(비밀번호가 4자리 이상이 아니면){
			alert('비밀번호는 최소 4자 이상이어야 합니다.');
			return false;
		}
		
		if(이름이 유효하지 않으면){
			alert('이름은 한글 최소 2자 이어야 합니다.');
			return false;
		}
		
		if(닉네임이 중복되었으면){
			alert('별명을 다시 확인하시기 바랍니다.');
			return false;
		}
		
		if(이메일 중복되었으면){
			alert('이메일을 다시 확인하시기 바랍니다.');
			return false;
		}
		
		if(휴대폰 중복되었으면){
			alert('휴대폰을 다시 확인하시기 바랍니다.');
			return false;
		}
		
		return true; // 최종 폼 전송
	});
	
});