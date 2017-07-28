<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="../common/common_service.jsp" %> --%>
<%
String option= request.getParameter("option");
String search = request.getParameter("find_by_name");

switch(option){
	case "id" :	
		%>
		<script>
		location.href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%=search%>";
		</script>
		<%
	break;
	case "name" :
		 %>
		<script>
		location.href="<%=request.getContextPath()%>/member/member_list.jsp?action=search&name=<%=search%>";
		</script>
		<%
	break;
}
%>