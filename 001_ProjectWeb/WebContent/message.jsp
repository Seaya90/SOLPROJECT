<%@page import="com.bc.mybatis.MessageVO" %>
<%@page import="java.util.List" %>
<%@page import="com.bc.mybatis.DBService2"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<%
	
	SqlSession ss = DBService2.getFactory().openSession();
	pageContext.setAttribute("attr_list", ss.selectList("all"));
	ss.close();
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RandomRead</title>
<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<style>
	#table {
		width: 700px;
    	height: 600px;
    	margin-left: auto;
   	    margin-right: auto;
    }
   
	#table th{
		 padding: 25px;
   		 text-align: center;
    	 border-bottom: 1px solid #ddd;
    	 width:200px;
    	 font-size: 20px;
	}
	#table td{
		 padding: 10px;
   		 text-align: center;
    	 border-bottom: 1px solid #ddd;
   }
	tr:hover {background-color:#b4b4b4;}


</style>	
	
</head>
<body>

<div class="jumbotron">
	<div class="container"> 
			<h1 class= "diplay-3">오늘의 말씀</h1>
			<a href="welcome.jsp">
			<button type="button" class="btn btn-info">HOME으로 이동</button></a>
	</div>
</div>

	

<div id="table">
<div class=cotainer">

<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">매일 말씀</button>
<div id="demo" class="collapse in">
 <table>
 <thead>
	<tr>
		<th> 작성자 </th>
		<th> 글제목 </th>
		<th> 글내용 </th>
		<th> 작성일 </th>
	</tr>
 </thead>
  <tbody>
  	
  <c:if test="${not empty attr_list }">
  <c:forEach var="vo" items="${attr_list }">
  	<tr>
  		<td>${vo.getName() }</td>
  		<td>${vo.getSubject() }</td>
  		<td>${vo.getContent() }</td>
  		<td>${vo.regdate }</td>
  	</tr>
  </c:forEach>
  </c:if>

  <c:if test="${empty attr_list }">
  	<tr>
  		<td colspan="3">입력된 자료가 없습니다.</td>
  	</tr>
  </c:if>
  </tbody>
  </table>
 </div>
</div>
</div>
</body>
</html>

	
