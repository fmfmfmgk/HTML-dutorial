/**
 * 
 */

function fprint(){
	//id=id인 요소를 접근, 값을 가져온다.
	idvalue = document.getElementById("id").value;
	//처리
	str = "당신이 입력한 id: " + idvalue + " 입니다.";
	//출력 장소를 접근 - 내용을 출력한다.
	document.getElementById("result").innerText = str;
	
}