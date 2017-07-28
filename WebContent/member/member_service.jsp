<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../constants/db.jsp" %>
<%!


public String headRoot(HttpServletRequest request){
	return request.getContextPath();
}

public Map<String,String> getDetail(HttpServletRequest request){
	Map<String,String> map = new HashMap<>();
	try{
		Class.forName(ORDRIVER);
		String id = request.getParameter("id");
		String sql ="SELECT * FROM MEMBER WHERE id=?";
		PreparedStatement pstmt = DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			map.put("name",rs.getString("name"));
			map.put("id",rs.getString("id"));
			map.put("ssn",rs.getString("ssn"));
			map.put("regdate",rs.getString("regdate"));
			map.put("phone",rs.getString("phone"));
			map.put("email",rs.getString("email"));
			map.put("major_id",rs.getString("major_id"));
			map.put("profile",rs.getString("profile"));
		}
	}
	catch(Exception ex){	
	}
	return map;
}
public int exAdd(HttpServletRequest request){
	Map<String,String> map = new HashMap<>();
	int result = 0;
	try{
		String[] subjects=request.getParameterValues("subject");
		String birth= request.getParameter("birthday");

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String major = request.getParameter("major");

		Class.forName(ORDRIVER);
		String sql="INSERT INTO MEMBER(NAME, ID, PASSWORD, SSN, REGDATE, PHONE, EMAIL, MAJOR_ID) VALUES(?, ?, ?, ?, SYSDATE, ?, ?, ?)";	
		PreparedStatement pstmt = DriverManager.getConnection(ORURL,USERNAME,PASSWORD).prepareStatement(sql);	
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, pass);
		pstmt.setString(4, birthday);
		pstmt.setString(5, phone);
		pstmt.setString(6, email);
		pstmt.setString(7, major);
		result = pstmt.executeUpdate();
	
	}
	catch(Exception ex){	
	}
	return result;
}

public List<Map<String,String>> getList(HttpServletRequest request){
	List<Map<String, String>> list = new ArrayList<>();
	try{
		Class.forName(ORDRIVER);
		PreparedStatement pstmt= null;
		if(request.getParameter("action").equals("list")){
			pstmt = DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement("SELECT * FROM MEMBER");
		}
		else{
			String name= request.getParameter("name");
			pstmt = DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement("SELECT * FROM Member WHERE name=?");
			pstmt.setString(1, name);
		}

		ResultSet rs = pstmt.executeQuery();
		Map<String, String> map = null;
		while(rs.next()){
			map = new HashMap<>();
			map.put("name", rs.getString("NAME"));
			map.put("id", rs.getString("ID"));
			map.put("password", rs.getString("PASSWORD"));
			map.put("ssn", rs.getString("SSN"));
			map.put("regdate", rs.getString("REGDATE"));
			map.put("major_id", rs.getString("MAJOR_ID"));
			map.put("email", rs.getString("EMAIL"));
			map.put("phone", rs.getString("PHONE"));
			list.add(map);
		}
	
	}
	catch(Exception ex){	
	}
	return list;
}
public Map<String,String> getId(HttpServletRequest request){
	Map<String,String> map = new HashMap<>();
	try{
		String searchId = request.getParameter("id");

		Class.forName(ORDRIVER);
		String sql="SELECT * FROM MEMBER WHERE ID=?";
		PreparedStatement pstmt = DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement(sql);
		pstmt.setString(1, searchId);
		ResultSet rs = pstmt.executeQuery();

			while(rs.next()){
				map.put("name", rs.getString("NAME"));
				map.put("id", rs.getString("ID"));
				map.put("ssn", rs.getString("SSN"));
				map.put("regdate", rs.getString("REGDATE"));
				map.put("phone", rs.getString("PHONE"));
				map.put("email", rs.getString("EMAIL"));
				map.put("major_id", rs.getString("MAJOR_ID"));	
				map.put("profile", rs.getString("profile"));
			}

		}
	catch(Exception ex){	
	}
	return map;
}

public int exDelete(HttpServletRequest request){
	int result=0;
	try{
		Class.forName(ORDRIVER);
		String sql ="DELETE FROM MEMBER WHERE ID=?";
		PreparedStatement pstmt = DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		result = pstmt.executeUpdate();
		}
	catch(Exception ex){	
	}	
	return result;
}

public int exUpdate(HttpServletRequest request){
	int result=0;
	try{
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		Class.forName(ORDRIVER);
		String sql="UPDATE MEMBER SET NAME=? WHERE ID=?";
		PreparedStatement pstmt = DriverManager.getConnection(ORURL, USERNAME, PASSWORD).prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		result = pstmt.executeUpdate();
		}
	catch(Exception ex){	
	}	
	return result;
}


public Map<String, String> exlogin(HttpServletRequest request){
	Map<String, String> map = new HashMap<>();
	try{
		Class.forName(ORDRIVER);
		String id = request.getParameter("userId");
		
		String sql="SELECT PASSWORD FROM Member WHERE id=?";	
		PreparedStatement pstmt = DriverManager.getConnection(ORURL,USERNAME,PASSWORD).prepareStatement(sql);	
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
			if(rs.next()){
				map.put("pass", rs.getString("PASSWORD"));
			}
		}
	catch(Exception ex){	
	}	
	return map;
}

%>