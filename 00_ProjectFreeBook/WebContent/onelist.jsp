<%@page import="com.bc.mybatis.FreeBookVO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String idx = request.getParameter("idx");
	SqlSession ss = DBService.getFactory().openSession();
	session.setAttribute("FreeBookVO", ss.selectOne("one",idx));
	ss.close();
%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<link href="./css/freebook.css" rel="stylesheet" type="text/css">

<script>
	function update_go(frm) {
		frm.action = "update.jsp";
		frm.submit();
	}
	function delete_go(frm) {
		frm.action = "delete.jsp";
		frm.submit();
	}
</script>
</head>
<body>

<div id = "container">
	<h2>자유게시판 : 상세화면</h2>
	<hr>
	<p>[<a href ="list.jsp">목록으로 이동</a>]</p>
	<form method="post">
		<table>
		<tbody>
			<tr>
				<th>작성자</th>
				<td>${FreeBookVO.getName() }</td>
			</tr>
				<tr>
				<th>제 목</th>
				<td>${FreeBookVO.getSubject() }</td>
			</tr>
			<tr>
			   <td colspan="2">
					<pre>${FreeBookVO.getContent() }</pre>
				</td>
			</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="2">
				<input type="button" value="수정"
					onclick="update_go(this.form)">
				<input type="button" value="삭제"
					onclick="delete_go(this.form)">
			</td>
		</tr>
	</tfoot>
	</table>
  </form>
</div>
</body>
</html>