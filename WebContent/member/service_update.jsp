<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_header.jsp" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");

if(exUpdate(request)==1){
	%>
	<script>
		alert('변경 완료');
		location.href="./member_detail.jsp?id=<%=id%>";
	</script>
	<%
}
else{
	%>
	<script>
		alert('변경 실패');
		location.href="./member_detail.jsp?id=<%=id%>";
	</script>
	<%
}
%>

