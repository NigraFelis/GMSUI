<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./member_header.jsp" %>
<%@ include file="../constants/db.jsp" %>


<%
String searchName = request.getParameter("name");

Class.forName(ORDRIVER);
String sql = "SELECT * FROM MEMBER WHERE NAME=?";
PreparedStatement pstmt= DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement(sql);
pstmt.setString(1, searchName);
ResultSet rs= pstmt.executeQuery();

/*HashMap map = new HashMap();
int i=1;
if(rs.next()){
	map.put(i, rs.getString("NAME")); 
	map.put(i, rs.getString("ID"));
	map.put(i, rs.getString("PASSWORD"));
	map.put(i, rs.getString("SSN"));
	map.put(i, rs.getString("REGDATE"));
	i++;
} */

%>
	
	
	
<div id="container">
<table >
	<tr id="member_list_tab">
		<th>학생 ID</th>
		<th>학생 PW</th>
		<th>학생 이름</th>
		<th>학생 생년월일</th>
		<th>학생 REGDATE</th>
		<!-- <th>학생 전화번호</th>
		<th>학생 Email</th>
		<th>학생 전공</th>
		<th>학생 과목</th> -->
	</tr>
	
	<% while(rs.next()){%>
      <tr>
        <td><%=rs.getString("ID")%></td>
        <td><%=rs.getString("PASSWORD")%></td>
        <td><%=rs.getString("NAME")%></td>
        <td><%=rs.getString("SSN")%></td>
        <td><%=rs.getString("REGDATE")%></td>
      </tr>
      <%} %>
	
	<!-- <tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr> -->
	
</table>

</div>
<%@ include file="../common/footer.jsp" %>