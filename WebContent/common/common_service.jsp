<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
public String headRoot(HttpServletRequest request){
	return request.getContextPath();
}
%>