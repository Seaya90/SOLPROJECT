<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%-- 전달받은 데이타를 사용해서 DB에 수정 작업진행 --%>
 
 <%
 	request.setCharacterEncoding("UTF-8");
 %>
 
 <jsp:useBean id="vo" class="com.bc.freebook.vo.FreeBookVO"/>
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
		altert("[예외 수정처리 되지 않았습니다.]")
		history.back();
	</script>
 
 
<%
 	}
 