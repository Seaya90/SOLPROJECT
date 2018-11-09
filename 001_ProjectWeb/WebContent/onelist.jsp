<%@page import="com.bc.mybatis.FreebookVO" %>
<%@page import="com.bc.mybatis.DBService" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String idx = request.getParameter("idx");
	SqlSession ss = DBService.getFactory().openSession();
	session.setAttribute("FreebookVO", ss.selectOne("one", idx));
	ss.close();
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>	

	
	
<title>상세보기</title>
<style>
	#table {
		width: 500px;
    	height: 300px;
    	margin-left: auto;
   	    margin-right: auto;
    	 
	}
	#table th{
		 padding: 20px;
   		 text-align: left;
    	 border-bottom: 1px solid #ddd;
    	 font-size: 15px;
	}
	
	#table td{
		 padding: 20px;
   		 text-align: left;
    	 border-bottom: 1px solid #ddd;
    	 
	
	}
	tr:hover {background-color:#f0f0f0;}

	


</style>

	
<script>
	function update_go(frm) {
		frm.action = "update.jsp";
		frm.submit();
		
	}
</script>	
</head>

<body>
<div class="jumbotron">
	<div class="container"> 
		<h1 class= "diplay-3">글 상세정보</h1>
	</div>
</div>
<div id = "table">
	<p>[<a href="free.jsp">목록으로 이동</a>]</p>
	<form method = "post">
	<table>
	<tbody>
		<tr>
			<th>작성자</th>
			<td>${FreebookVO.getName() }</td>
		</tr>
		<tr>
			<th>글제목</th>
			<td>${FreebookVO.getSubject() }</td>
		</tr>
		<tr>
			<td colspan="2">
				<pre>${FreebookVO.getContent() }</pre>
			</td>
		</tr>
	</tbody>
	<div class="container">	
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="button" class="btn btn-outline-primary" value="수 정"
						onclick="update_go(this.form)">
					<input type="button" class="btn btn-outline-danger" value="삭 제"
					onclick="delete_go(this.form)">
				</td>
			</tr>
		</tfoot>
		</div>
		</table>
		</form>
</div>
</body>
</html>