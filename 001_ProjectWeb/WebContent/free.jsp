<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		 padding: 30px;
   		 text-align: left;
    	 border-bottom: 1px solid #ddd;
    	 font-size: 20px;
	}
	
	#table td{
		 padding: 20px;
   		 text-align: left;
    	 border-bottom: 1px solid #ddd;
    	 
	
	}
	tr:hover {background-color:#f5f5f5;}


</style>
</head>

<body>
	<div class="jumbotron">
		<div class="container"> 
			<h1 class= "diplay-3">글 목록</h1>
		</div>
	</div>
	
   
		<div id="table">
		   <table>
			 <thead>
				<tr>
					<th> 번 호 | </th>
					<th> 닉네임| </th>
					<th> 글제목| </th>
					<th> 작성일| </th>
				</tr>
			 </thead>
			 <tbody>
			 	<tr>
					<td>1</td>
					<td>옹옹옹</td>
					<td>쀼젤이자나</td>
					<td>작성일</td>
				</tr>
			 	
			 
			 
			 
			 </tbody>
			
			
			
			
			
			</table>
		
		</div>
	</div>	

</body>
</html>