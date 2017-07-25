<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_header.jsp" %>

<%@ include file="../constants/db.jsp"%>
<%@ page import="java.sql.*"%>

<%
/* id 비밀번호 이름  */
String[] subjects=request.getParameterValues("subject");
String birth= request.getParameter("birthday");

String id = request.getParameter("id");
String pass = request.getParameter("password");
String name = request.getParameter("name");

Class.forName(ORDRIVER);
String sql="INSERT INTO MEMBER(ID, PASSWORD, NAME) VALUES(?, ?, ?)";	
PreparedStatement pstmt = DriverManager.getConnection(ORURL,USERNAME,PASSWORD).prepareStatement(sql);	
pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
pstmt.executeUpdate();

%>
<script>
alert('회원등록 완료');
location.href="<%=headRoot(request)%>/index.jsp";
</script>