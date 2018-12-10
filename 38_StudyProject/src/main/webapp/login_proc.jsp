<%@page import="com.spring.biz.user.impl.UserDAO"%>
<%@page import="com.spring.biz.user.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">

<%-- id, password 값을 받아서 db에 있는지 확인 후 로그인 처리 --%>

<% 
	//사용자가 입력한 데이타 추출
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//DB연동 처리(ID,PASSWORD 유무 확인)
	UserVO vo = new UserVO();
	vo.setId(id);
	vo.setPwd(pwd);
	
	UserDAO userDAO = new UserDAO();
	UserVO user = userDAO.getUser(vo);
	
	
	//화면 네비게이션(화면이동)
	if (user != null) {
		//로그인 성공
		response.sendRedirect("home.jsp");
	} else {
		//로그인 실패
		response.sendRedirect("login.jsp");
	}
	
%>