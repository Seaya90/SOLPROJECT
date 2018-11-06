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
  int result = ss.insert("insert",vo);
  ss.close();
  
  if(result > 0) {
	  
  
%>
	<script>
		alert("정상 입력처리 되었습니다. \n 목록 페이지로 이동");
		location.href = "list.jsp";
	</script>
<%
 }else {
	 
 
%>
	<script>
		alert("[예외]입력처리 되지 않았습니다.");
		history.back();
		
	</script>
<%
 }
%>
    
    
 