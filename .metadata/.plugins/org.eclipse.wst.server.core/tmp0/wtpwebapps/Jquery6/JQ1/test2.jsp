<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js" 
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous">
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("*").css("color","red");
			$("h2").css('color', 'green');
			// id 선택자
			$("#id").css("color","black");
			// class 선택자
			$(".class").css("color","yellow");
			$("label").css('color', 'green');
			//속성 탐색 선택자
			$('input').css('color','black');
			$('input[type=password]').css('color','blue');
			$('input[type^=p]').css('color','pink');	// ^ 대신 $면 끝이 p
			
			//$("tr").css("background", "yellow");
			$("tr:odd").css("background","blue");
			$("tr:even").css("background","green");
			$("tr:first").css("background","yellow");
			
			//alert($('input[type=text]').val());
			$('input[type=text]').val("busan");
		});
	</script>
	<style type="text/css">
		h2{
			color: blue;
		}
	</style>
</head>
<body>
	<h2 id="id"> 부산 아이티윌 </h2>
	<h2 class="class"> 부산 아이티윌 </h2>
	<h3> 아이티윌 </h3>
	<h3> 아이티윌 </h3>
	
	<hr>
	
	<label>아이디 : </label><input type="text" name="id" value="아이티윌"><br>
	<label>비밀번호 : </label><input type="password" name="pw"><br>
	
	<hr>
	
	<table id="mm">
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>성별</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>성별</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>성별</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>나이</td>
			<td>성별</td>
		</tr>
	</table>
</body>
</html>