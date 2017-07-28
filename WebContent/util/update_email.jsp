<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../constants/db.jsp"%>

<%
Class.forName(ORDRIVER);


String sql = "SELECT id FROM Member";
PreparedStatement pstmt = DriverManager.getConnection(ORURL,USERNAME,PASSWORD).prepareStatement(sql);	
ResultSet rs = pstmt.executeQuery();
List<String> list = new ArrayList<>();
while(rs.next()){
	list.add(rs.getString("id"));
}


for(int i=0; i<list.size(); i++){
	String id = list.get(i); 
	/* String email = id+"@hanbit.com";
	String sql2="UPDATE Member SET email =? WHERE ID=?"; */
	String sql2="UPDATE Member SET email='"+id+"@hanbit.com' WHERE ID='"+id+"' "; 
	PreparedStatement pstmt2 = DriverManager.getConnection(ORURL,USERNAME,PASSWORD).prepareStatement(sql2);	
	/* pstmt2.setString(1, email);
	pstmt2.setString(2, id); */
	pstmt2.executeUpdate();
}







%>

<script>
alert('이메일 수정완료');
location.href="<%=request.getContextPath()%>/index.jsp";
</script>