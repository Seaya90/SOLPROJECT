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
	String password = request.getParameter("password");
	
	//DB연동 처리(ID,PASSWORD 유무 확인)
	UserVO vo = new UserVO();
%>