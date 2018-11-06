<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="vo" class="com.bc.mybatis.FreeBookVO"/>
<jsp:setProperty property="*" name="vo"/>

<%
	SqlSession ss = DBService.getFactory().openSession(true);
	int result = ss.update("update",vo);
	ss.close();
	
	if (result > 0) {
		response.sendRedirect("onelist.jsp?idx=" + vo.getIdx());
	} else {
%>
	<script>
		alert("[예외] 수정처리 되지 않았다.")
		history.back();
	</script>
	
<%
	}
%>