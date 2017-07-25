<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "member/member_header.jsp" %>
   <div id="container">
      <form id="Login-box" action="<%= headRoot(request) %>/common/main.jsp" method="get">
         <img class="gms-imgsize" src="<%= headRoot(request) %>/img/login.jpg" alt="" /><br />
         <span id="login_id">ID</span>
         <input type="text" name="userId" /><br />
         <span id="login_pass">PASSWORD</span> 
         <input type="password" name="userPw" /><br /><br />
         <input type="submit" value="LOGIN" />
         <input type="reset" value="CANCLE"/>
      </form>
   </div>
   <%@ include file = "../common/footer.jsp" %>
   


	
	
	
	