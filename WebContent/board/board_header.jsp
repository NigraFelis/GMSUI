<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/common_service.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=headRoot(request)%>/css/common.css" />
<link rel="stylesheet" href="<%=headRoot(request)%>/css/board.css" />
</head>
<body>
<div id="wrapper">
<header>
<h1 id="title">게시판 관리</h1>
<a id="go_main" href="<%=headRoot(request)%>/index.jsp">메인으로 가기</a><br />
<div>
<%=new SimpleDateFormat("yyyy년MM월dd일 a hh:mm:ss").format(new Date())%>
</div>
</header>
<hr />
