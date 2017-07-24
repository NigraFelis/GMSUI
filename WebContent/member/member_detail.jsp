<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%! 
public String[] getSpec(HttpServletRequest request){
	String[] spec = new String[7];
	
	int year = Integer.parseInt(request.getParameter("birthday").substring(0,2));
	int age = 0;
	String now = new SimpleDateFormat("yyyy").format(new Date());
	
	int gap = Integer.parseInt(now.substring(2))-year;
	
	if(gap>=0){
		age = Integer.parseInt(now.substring(2))-year;
	}
	else {
		age = Integer.parseInt(now)-1900-year;
	}
	
	spec[0] = request.getParameter("id");
	spec[1] = request.getParameter("password");
	spec[2] = request.getParameter("name");
	spec[3] = String.valueOf(age);
	spec[4] = request.getParameter("gender");
	spec[5] = request.getParameter("email");
	spec[6] = request.getParameter("major");
 
	return spec;
}

	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보 상세</title>
<link rel="stylesheet" href="../css/member.css" />
</head>
<body>
<div id="wrapper">
<header>
<h1 id="title">학생정보 상세</h1>
<a id="go_main" href="../index.jsp">메인으로 가기</a><br />
</header>
<hr />
<div id="container">
	<h1>Hello !! <%=getSpec(request)[2]%></h1>
	<h1><%=Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()).substring(2))%></h1>
	
	<table>
		<tr>
			<th>ID</tH>
			<th>PASSWORD</th>
			<th>NAME</th>
			<th>AGE</th>
			<th>GENDER</th>
			<th>EMAIL</th>
			<th>MAJOR</th>
		</tr>
		<tr>
			<td><%=getSpec(request)[0]%></td>
			<td><%=getSpec(request)[1]%></td>
			<td><%=getSpec(request)[2]%></td>
			<td><%=getSpec(request)[3]%></td>
			<td><%=getSpec(request)[4]%></td>
			<td><%=getSpec(request)[5]%></td>
			<td><%=getSpec(request)[6]%></td>
		</tr>
	</table>
	
	
	
</div>
</div>	
</body>
</html>