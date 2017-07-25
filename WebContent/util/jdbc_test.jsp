<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../constants/db.jsp"%>
<%@ page import="java.sql.*"%>
<%
	Class.forName(ORDRIVER);
	Connection conn=DriverManager.getConnection(ORURL,USERNAME,PASSWORD);
	Statement stmt=conn.createStatement();
	String sql="SELECT * FROM Member WHERE id='hong'";
	ResultSet rs = stmt.executeQuery(sql);
	String findName="";
	if(rs.next()){ //있으면 돌린다
		findName=rs.getString("name");
	}
%>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<h1>Hello <%=findName%>!</h1>
</body>
</html>