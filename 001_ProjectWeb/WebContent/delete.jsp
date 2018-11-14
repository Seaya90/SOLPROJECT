<%@page import="com.bc.mybatis.FreebookVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭 제</title>
<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
	
	
	tr:hover {background-color:#b4b4b4;}
</style>	

<script>
	function del_go(frm) {
		var DBpwd = "${FreebookVO.getPwd() }";
		var inputPwd = frm.pwd.value;
		
		if(DBpwd == inputPwd) {
			var isDeleteOk = confirm("정말 삭제 하시겠습니까?");
			if (isDeleteOk) {
				frm.action = "delete_ok.jsp?idx=${FreebookVO.getIdx() }";
				frm.submit();
			}
				
		} else {
			alert("비밀번호가 일치하지 않습니다. 다시 입력하시오.");
		}
		frm.pwd.value = "";
		frm.pwd.focus();
	}
</script>
</head>
<body>

<div class="jumbotron">
	<div class="container"> 
			<h1 class= "diplay-3">글 삭제 하기</h1>
			<a href="welcome.jsp">
				<class="btn btn-secondary">HOME으로 이동</a>
	</div>
</div>
<hr>
<div id = table>
<form method = "post">
	<table>
	<tbody>
		<tr>
			<th>비밀번호</th>
			<td><input type="text" name="pwd"></td>
			<td>
				<input type="button" value="삭 제" 
					onclick="del_go(this.form)">
			</td>
		</tr>
	</tbody>
	</table>
</form>
</div>
</body>
</html>