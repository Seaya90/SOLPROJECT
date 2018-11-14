<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력화면 작성하고 작성된 데이터를 
	write_ok.jsp 페이지로 전달(post 방식) --%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write</title>

<style>
	#table {
		width:60%;
		margin: auto;
	}
	#book {
		width: 60%;
		margin: auto;
		
	} 

</style> 


<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>	



</head>
<body>
<div class="jumbotron">
	<div class="container"> 
		<h2 class= "diplay-3" id="book">게시판 : 입력화면</h2>
		<hr>
		<p id="book">[<a href="free.jsp">글 목록으로 이동</a>]</p>
	</div>
	
<div id ="table">
<form method="post" action="write_ok.jsp" >
<table>
	<tbody>
		<tr>
			<th>작성자</th>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
		<tr>
			<th>제 목</th>
			<td>
				<input type="text" name="subject">
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="text" name="pwd">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea name="content" 
					rows="5" cols="60"></textarea>
			</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="2">
				<input type="submit" class="btn btn-secondary" 
					value="저 장">
				<input type="reset" class="btn btn-dark" value="초기화">
			</td>
		</tr>
	</tfoot>
</table>
</form>
</div>
</body>
</html>