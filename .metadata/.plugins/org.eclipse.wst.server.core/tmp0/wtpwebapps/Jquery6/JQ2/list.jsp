<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	
	// db 저장된 모든 회원 정보 출력
	final String DRIVER = "com.mysql.cj.jdbc.Driver";
	final String URL = "jdbc:mysql://localhost:3306/jspdb";
	final String ID = "root";
	final String PW = "1234";
	
	Class.forName(DRIVER);
	Connection con;
	con = DriverManager.getConnection(URL,ID,PW);
	
	String sql = "SELECT * FROM ITWILL_MEMBER";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs;
	
	rs = pstmt.executeQuery();

	JSONArray jsonArr = new JSONArray();
	
	 while(rs.next()){
		 
		JSONObject dto = new JSONObject();
		
		dto.put("id", rs.getString("id"));
		dto.put("email", rs.getString("email"));
		dto.put("regdate", rs.getTimestamp("regdate")+"");
		
		jsonArr.add(dto);
	}
		
%>
<%=jsonArr%>