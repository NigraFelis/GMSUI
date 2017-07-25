<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./member_header.jsp" %>
<div id="container">
	<img src="../img/login.jpg" alt="" /><br />
	<span id="login_id">ID</span>
	<input type="text"  /> <br />
	<span id="login_pass">PASSWORD</span> 
	<input type="text"  /> <br /><br />
	<button id="login_btn" onclick="window.location.href='member/mypage.jsp'">LOGIN</button>
	<button id="cancel_btn" onclick="window.location.href='../index.jsp'">CANCEL</button>
</div>
<%@ include file="../common/footer.jsp" %>