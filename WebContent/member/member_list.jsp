<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./member_header.jsp" %>

<%List<Map<String,String>> list = getList(request);%>
	
	
<div id="container">
<table >
	<tr id="member_list_tab">
		<th>NO</th>
		<th>학생 ID</th>
		<th>학생 이름</th>
		<th>학생 Email</th>
		<th>학생 전공</th>
		<th>학생 학점</th>
		<th>학생 전화</th>
		<th>학생 REGDATE</th>
		<th>수정 삭제</th>
	</tr>
	<%
	int count=0;
	for(int i=0; i<list.size();i++){ 
		Map<String,String>temp = list.get(i);		
		%>
	<tr>
		<td><%=count++%></td>
      	<td><%=temp.get("id") %></td>
      	<td><%=temp.get("name") %></td>
      	<td><%=temp.get("email") %></td>
      	<td><%=temp.get("major_id") %></td>
      	<td>A</td>
		<td>010-1234-1234</td>
		<td><%=temp.get("regdate") %></td>
		<td><a href="member_update.jsp?id=<%=temp.get("id") %>">수정</a><a href="service_delete.jsp?id=<%=temp.get("id") %>">삭제</a></td>
     </tr>
	<%}%>
	
      
      

	
</table>

</div>
<%@ include file="../common/footer.jsp" %>