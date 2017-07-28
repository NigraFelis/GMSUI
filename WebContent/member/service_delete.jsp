<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_header.jsp" %>



<% 
if(exDelete(request)==1){
	%>
	<script>
	alert('회원삭제 완료');
	location.href="../member/member_list.jsp?action=list";
	</script>
	<%	
}
else{
	%>
	<script>
	alert('회원삭제 실패');
	location.href="../member/member_list.jsp";
	</script>
	<%	
}

%>

