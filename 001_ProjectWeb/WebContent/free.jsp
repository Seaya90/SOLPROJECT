<%@page import="com.bc.mybatis.FreebookVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  
<%
	
	SqlSession ss = DBService.getFactory().openSession();
	pageContext.setAttribute("attr_list", ss.selectList("all"));
	ss.close();
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>FreeBook</title>
<style>
	#table {
		width: 500px;
    	height: 300px;
    	margin-left: auto;
   	    margin-right: auto;
    	 
	}
	#table th{
		 padding: 25px;
   		 text-align: center;
    	 border-bottom: 1px solid #ddd;
    	 font-size: 20px;
	}
	
	#table td{
		 padding: 20px;
   		 text-align: center;
    	 border-bottom: 1px solid #ddd;
    	 
	
	}

	

	tr:hover {background-color:#b4b4b4;}


</style>
</head>

<body>
<div class="jumbotron">
	<div class="container"> 
			<h1 class= "diplay-3">글 목록</h1>
				<a href="write.jsp">
				<button type="button" class="btn btn-info">글 작 성</button></a>
				<a href="welcome.jsp">
				<button type="button" class="btn btn-secondary">HOME으로 이동</button></a>
	</div>
</div>
<div id="table">
<table>
	<thead>
		<tr>
			<th> 번 호  </th>
			<th> Name </th>
			<th> 글제목 </th>
			<th> 작성일 </th>
		</tr>
 	</thead>
	<tbody>
	<c:if test="${not empty attr_list }">	
	<c:forEach var="vo" items="${attr_list }">
		<tr>
			<td class="center">${vo.getIdx() }</td>
			<td>${vo.getName() }</td>
			<td>
				<a href="onelist.jsp?idx=${vo.idx }">${vo.subject }</a>
			</td>
			<td>${vo.regdate }</td>
		</tr>
	</c:forEach>
	</c:if>	
	<c:if test="${empty attr_list }">		
		<tr>
			<td colspan="4">입력된 자료가 없습니다</td>
		</tr>
	</c:if>				
		</tbody>
	</table>
</div>


</body>
</html>