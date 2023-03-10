<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- String2.jsp -->

<%
	String name= request.getParameter("name");

	System.out.println(name);
%>

<%=name%>