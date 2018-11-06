<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./freebook.css/freebook.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>게시판 입력란</title>
</head>
<body>

<div id="container">
	<h2>게시판 : 입력화면</h2>
	<hr>
	<p><a href="list.jsp">[목록으로 이동]</a></p>
	<form method="post" action="write_ok.jsp">
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
					<textarea name="content" rows="5" cols="70"></textarea>	
					
				</td>
			</tr>
		</tbody>
		
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="submit" value="저 장">
					
					<input type="reset" value="초기화">
				</td>
			</tr>
		</tfoot>
	 </table>
	 </form>
</div>
</body>
</html>