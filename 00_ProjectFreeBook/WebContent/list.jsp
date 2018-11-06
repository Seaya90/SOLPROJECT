<%@page import="com.bc.mybatis.FreeBookVO"%>
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
<link href="./freebook.css/freebook.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>자유게시판</title>
<style>
	#container {
		width: 512px; margin: auto;
	}
	#container h2 { text-align: center; }
	#container p { text-align: center; }
	#container table {
		width: 500px; padding: 0 5px;
		border: 1px solid black;
		border-collapse: collapse;
	}
	#container th, td { border: 1px solid black; }
	#container table th {
		background-color: PaleGreen ;
	}
	#container table td {
		text-align: left;
	}
	#container p > a {
		text-decoration: none;
		font-weight: bold;
	}
	#container .center { text-align: center; }
	
</style>
</head>

<body>

<div id = "container">
	<h2>자유게시판</h2>
	<hr>
	<p>[<a href="write.jsp">글쓰기</a>]</p>
	
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty attr_list }">	
			<c:forEach var="vo" items="${attr_list }">
			<tr>
				<td  class="center">${vo.getIdx() }</td>
				<td>${vo.getName() }</td>
				<td>
					<a href="onelist.jsp?idx=${vo.idx }">${vo.subject }</a>
				</td>
				<td>${vo.regdate }</td>
			</tr>
			</c:forEach>
		</c:if>			
<%--	
		<%		
		else { %>
			<tr>
				<td colspan="4">입력된 자료가 없습니다</td>
			</tr>
		<%
		} %>
--%>	
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