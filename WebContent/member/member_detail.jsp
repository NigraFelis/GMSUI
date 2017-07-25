<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%
String searchId = request.getParameter("id");

Class.forName(ORDRIVER);
String sql ="SELECT *FROM MEMBER WHERE id=?";
PreparedStatement pstmt = DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement(sql);
pstmt.setString(1, searchId);
ResultSet rs = pstmt.executeQuery();
String name="";
String id="";
String password="";
String ssn="";
String regdate="";

if(rs.next()){
	name = rs.getString("NAME");
	id = rs.getString("ID");
	password = rs.getString("PASSWORD");
	ssn = rs.getString("SSN");
	regdate = rs.getString("REGDATE");
}


%>



<div id="container">
<table>
	<tr>
		<th>NAME</th>
		<th>ID</th>
		<th>PASSWORD</th>
		<th>SSN</th>
		<th>REGDATE</th>
	</tr>
	<tr>
		<td><%=name%></td>
		<td><%=id%></td>
		<td><%=password%></td>
		<td><%=ssn%></td>
		<td><%=regdate%></td>
	</tr>
</table>
	
	
	
</div>
<%@ include file="../common/footer.jsp" %>