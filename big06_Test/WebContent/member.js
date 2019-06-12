/**
 * 
 */
function memberjoin(){
	
	var IdData = document.getElementById("id");
	var PwData = document.getElementById("pw");
	
	var result1 = IdData.value;
	var result2 = PwData.value;
	
	for (var i = 0; i < users.length; i++) {
		if(users[i].equals(id) != result1 || passwords[i].equals(pw) != result2){
			alert("로그인에 실패하였습니다.")
			location.href="Exam04.html";
		}else if(users[i].equals(id) == result1 || passwords[i].equals(pw) == result2){
			alert("로그인에 성공하였습니다.")
			location.href="member.jsp";
		}
	}
}
