<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../member/member_header.jsp" %>

<%Map<String,String>map= getId(request);%>

<div id="container">
<form action="<%=headRoot(request)%>/member/service_update.jsp" method="get">
<table id="member_detail_tab">
	<tr>
		<td colspan="2" rowspan="3"><img id="userImg" src="<%= headRoot(request) %>/img/<%=map.get("profile") %>" alt="" /></td>
		<td>아이디</td>
		<td><%=map.get("id")%></td>	
	</tr>
	<tr>
		
		<td>이름</td>
		<td><input name="name" type="text" placeholder="<%=map.get("name")%>"/></td>
	</tr>
	<tr>
		<td>E-mail</td>
		<td><%=map.get("email")%></td>
	</tr>
	<tr>
		<td>전화</td>
		<td colspan="3"><%=map.get("phone")%></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td colspan="3"><%=map.get("email")%></td>
	</tr>
	<tr>
		<td>주소</td>
		<td colspan="3"></td>
	</tr>
	<tr>
		<td>전공</td>
		<td colspan="3"><%=map.get("major_id")%></td>
	</tr>
	<tr>
		<td>과목</td>
		<td colspan="3"></td>
	</tr>
</table>
<input type="submit" id="confirm_btn" value="수  정"/>
<input type="button" id="cancel2_btn" onclick="javascript:cancel()" value="취  소" />
<input type="hidden" name="id" value="<%=map.get("id")%>"/>
</form>	
	
</div>
<script>
function confirm(){
	location.href="<%=headRoot(request)%>/member/service_update.jsp?id=<%=map.get("id")%>";
}
function cancel(){
	location.href="<%=headRoot(request)%>/member/member_detail.jsp?id=<%=map.get("id")%>";
}
</script>

<%@ include file="../common/footer.jsp" %>