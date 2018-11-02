<%@page import="com.bc.freebook.vo.FreeBookVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
<link href="./css/freebook.css" rel="stylesheet" type="text/css">

<script>
	function del_go(frm) {
		var DBPwd = "${freebookVO.getPwd() }";
		var inputPwd = frm.pwd.value;
		if (DBPwd == inputPwd) {
			var isDeleteOk = confirm("정말 삭제 하시겠습니까?");
			if (isDeleteOk) {
				frm.action = "MyCon?type=delete&idx=${freebookVO.getIdx() }";
				frm.submit();
		}
		
	} else {
		alert("비밀번호가 일치하지 않다. 다시 입력하라.");
	
	}
	frm.pwd.value = "";
	frm.pwd.focus();
	
}


</script>
</head>
<body>

<div id="container">
	<h2>자유게시판 : 삭제화면</h2>
	<hr>
	<p><a href="freelist.jsp">[목록으로 이동]</a></p>
	<form method="post">
		<table>
		<tbody>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="pwd"></td>
				<td>
					<input type="button" value="삭 제"
						onclick="del_go(this.form)">
						
					<input type="hidden" name="delete_chk" value="chk">						
				</td>
			</tr>
		</tbody>
		</table>
	</form>
</div>		

</body>
</html>