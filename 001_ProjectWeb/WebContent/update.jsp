<%@page import="com.bc.mybatis.FreebookVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수 정</title>
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
	//암호 일치시 DB데이타 수정 불일치시 권한없음 메시지
	function save_go(frm) {
		var pwd1 = frm.pwd.value;
		var pwd2 = "${FreebookVO.getPwd() }";
		if(pwd1 != pwd2) {
			alert("암호가 일치하지 않습니다.");
			frm.pwd.value = "";
			frm.pwd.focus();
			return false;
		}
		frm.action = "update_ok.jsp";
		frm.submit();
		
		
	}
</script>
</head>
<body>

<div class="jumbotron">
	<div class="container"> 
			<h1 class= "diplay-3">글 수정하기</h1>
			<a href="welcome.jsp">
				<class="btn btn-secondary">HOME으로 이동</a>
	</div>
</div>

<div id="table">
<hr>
  <form method="post">
	<table>
	<tbody>
		<tr>
			<th>작성자</th>
			<td>
				<input type="text" name="name" value="${FreebookVO.getName() }">
			</td>
		</tr>
		<tr>
			<th>제 목</th>
			<td>
				<input type="text" name="subject" value="${FreebookVO.getSubject() }">
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="text" name="pwd">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea name="content" rows="5" cols="60">${FreebookVO.getContent() }
				</textarea>
			</td>
		</tr>
		</tbody>
		
		<tfoot>
		<tr>
			<td colspan="2">
				<input type="button" value="수 정" class="btn btn-info" 
					onclick="save_go(this.form)">
				<input type="reset" class="btn btn-dark" value="초기화">
			</td>
		</tr>
		<input type="hidden" name="idx" value="${FreebookVO.getIdx() }">
	</tfoot>
	</table>
</form>
</div>
</body>
</html>