<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_header.jsp" %>

<%@ page import="java.sql.*"%>

<%
if(exAdd(request)==1){
	%>
	<script>
	alert('회원등록 완료');
	location.href="<%=headRoot(request)%>/index.jsp";
	</script>
	<%	
}

else{
	%>
	<script>
	alert('회원등록 실패');
	location.href="<%=headRoot(request)%>/index.jsp";
	</script>
	<%
}
 %>