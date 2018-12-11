<%@page import="com.spring.biz.user.UserVO"%>
<%@page import="javax.naming.ldap.Rdn"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">

<%--id,pwd,name,gender,phone, address, sysdate 값 넘기기 --%>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	
	UserVO vo = new UserVO();
	vo.setId(id);
	vo.setPwd(pwd);
	vo.setName(name);
	vo.setGender(gender);
	vo.setPhone(phone);
	vo.setAddress(address);
	
%>