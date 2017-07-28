<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./member_header.jsp" %>
<%Map<String,String> map = getDetail(request);%>



<div id="container">
<table id="member_detail_tab">
	<tr>
		<td colspan="2" rowspan="3"><img id="userImg" src="<%= headRoot(request) %>/img/<%=map.get("profile") %>" /></td>
		<td>이름</td>
		<td><%=map.get("name")%></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=map.get("id")%></td>
	</tr>
	<tr>
		<td>SSN</td>
		<td><%=map.get("ssn")%></td>
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
		<td>전공</td>
		<td colspan="3"><%=map.get("major")%></td>
	</tr>
	<tr>
		<td>등록일</td>
		<td colspan="3"><%=map.get("regdate") %></td>
	</tr>
</table>
<button id="list_btn" onclick="javascript:goList()">목  록</button>
<button id="update_btn" onclick="javascript:goUpdate()">수  정</button>
	
	
</div>
<script>
function goList(){
	location.href="<%=headRoot(request)%>/member/member_list.jsp?action=list";
}
function goUpdate(){
	location.href="<%=headRoot(request)%>/member/member_update.jsp?id=<%=map.get("id")%>";
}
</script>

<%@ include file="../common/footer.jsp" %>