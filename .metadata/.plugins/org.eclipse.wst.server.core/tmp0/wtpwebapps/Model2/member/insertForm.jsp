<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>./member/insertForm</h1>
	
	<h3> ITWILL 회원가입 </h3>
	
	<fieldset>
		<form action="./MemberJoinAction.me" name="fr" method="post" onsubmit="return sendSubmit();">
			아이디 <input type="text" name="id"><br>
			비밀번호 <input type="password" name="pw"><br>
			이름 <input type="text" name="name"><br>
			나이 <input type="text" name="age"><br>
			성별 <input type="radio" name="gender" value="남">남
				<input type="radio" name="gender" value="여">여<br>
			이메일 <input type="email" name="email"><br>
			
			<hr>
			<input type="submit" value="회원가입">
		</form>
	</fieldset>
	
	<script type="text/javascript">
		function sendSubmit(){
			if(document.fr.id.value == ""){
				alert("아이디를 입력하세요");
				document.fr.id.focus();
				return false;
			}
			if(document.fr.pw.value == "" ||
				document.fr.name.value == "" ||
			
			
			){
				return false;
			}
			
			return true;
		}
	</script>
</body>
</html>