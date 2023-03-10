<%@page import="com.itwillbs.member.db.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>info</h1>
	
	<h2> 회원정보 조회(model2)</h2>
	
	<%
		MemberDTO dto = (MemberDTO)request.getAttribute("dto");
	%>
	
	<h3> 아이디 : <%= dto.getId()%></h3>
	<hr>
	
	<h3> 아이디 : ${dto.id }</h3>
	<h3> 이름 : ${dto.name }</h3>
	<h3> 나이 : ${dto.age }</h3>
	<h3> 성별 : ${dto.gender }</h3>
	<h3> 이메일 : ${dto.email }</h3>
	<h3> 회원가입일 : ${dto.regdate }</h3>
	
	<h2><a href="./Main.me">메인페이지 이동하기</a></h2>
	
</body>
</html>