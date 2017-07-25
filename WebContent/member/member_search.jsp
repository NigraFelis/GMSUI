<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_header.jsp" %>
<div id="container">
<form id="member_search_box" action="<%=request.getContextPath()%>/member/service_search.jsp " method="get">
	검색조건<select name="option">
		<option value="id" selected>ID</option>
		<option value="name">이름</option>
	</select><br /><br /><br />
		<input type="text" name="find_by_name" />
		<input type="submit" />
</form>
</div>
<%@ include file="../common/footer.jsp" %>
