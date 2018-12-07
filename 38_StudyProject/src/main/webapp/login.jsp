<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<center>
<h1>로 그 인</h1>
<hr>
<form action="login_proc.jsp" method="post">
<table border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="#b3b3ff">아이디</td>
		<td><input type="text" name="id"/></td>
	</tr>
	<tr> 
		<td bgcolor="#b3b3ff">비밀번호</td>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="login_proc.jsp"><input type="submit" value="로그인"/></a>
			<a href="newuser.jsp"><input type="submit" value="회원가입"/></a>
		</td>
	</tr>

	
</table>
</form>
</center>
</body>
</html>