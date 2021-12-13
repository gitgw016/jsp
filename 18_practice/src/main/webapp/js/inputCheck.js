/**
 * inputCheck.js
 */
// 문서가 모두 로드되면 실행
window.onload = function(){
	// tag 이름이 input인 모든 요소들을 배열로 반환
	var input = document.getElementsByTagName("input");
	// tag들 중에 최초에 검색되는 한개 요소를 반환
	var btn = document.querySelector("button");
	// button tag click event 발생시 호출될 함수
	btn.onclick = function(event){
		for(var i=0; i<input.length; i++){
			// 작성된 value값이 없을때
			if(input[i].value.length == 0){
				var msg = input[i].dataset.msg+"를 확인해주세요.";
				alert(msg);
				input[i].focus();
				// 기본 이벤트를 무시
				event.preventDefault();
				break;
			}
		}
	}
}