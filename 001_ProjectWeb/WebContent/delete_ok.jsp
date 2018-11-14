<%@page import="com.bc.mybatis.DBService" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String idx = request.getParameter("idx");
	SqlSession ss = DBService.getFactory().openSession(true);
	int result = ss.delete("delete", idx);
	ss.close();
	
	if(result > 0) {
%> 
	<script>
		alert("삭제처리 되었습니다.\n목록으로 이동합니다.");
		location.href = "free.jsp";
	</script>
<%
	} else {
%>
	<script>
		alert("[예외]삭제처리 못 했습니다.\n목록으로 이동합니다.");
		location.href = "free.jsp";
	</script>
<%
	}
%>