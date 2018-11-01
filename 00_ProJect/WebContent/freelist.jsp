<%@page import="com.bc.freebook.vo.FreeBookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%	
	//SqlSession 객체를 얻기(Auto commit 아님)
	SqlSession ss = DBService.getFactory().openSession();
	
	//데이타 가져오기
	//mapper의 네임스페이스.아이디명
	List<FreeBookVO> list = ss.selectList("all");
	System.out.println("list: " + list);
	ss.close();
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체목록</title>

<style>


	#container { 
	
	width:500px; margin:auto;
	background-color: #cccccc;
    background-image: linear-gradient(blue, violet, lightblue);
	
	}
	
	#container h1 {
		text-align: center;
		color: white;
		
	}
	#container p {
		text-align: center;
		color : white;
		font-size: 20px;
	}
	
	#container table {
		width: 500px; padding: 0 5px; 
		border: 2px solid white;
		border-collapse: collapse;
	}
	
	#container th, td {border: 1px solid white;}
	#container table td {
			text-align:left;
			background-color: 
	}
	
	#container p > a {
		text-decoration: none;
		font-weight: bold;
		color: yellow;
		text-shadow: 2px 2px 4px #000000;
	}
	#container .center { text-align: center; }


</style>

</head>
<body>

<div id = "container">
	<h1>게 시 판</h1>
	<hr color="white">
		<p>[<a href = "MyCon?type=write"><b>글 쓰기</b></a>]</p>
		
<table>
		<thead> 
			<tr>
				<th>번호</th>
				<th>닉네임</th>
				<th>글 제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			
			<c:if test ="${not empty attr_list }">
			<c:forEach var="vo" items="${attr_list }">
			<tr>
				<td  class="center">${vo.getIdx() }</td>
				<td>${vo.getName() }</td>
				<td>
					<a href="MyCon?type=one&idx=${vo.idx }">${vo.subject }</a>
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