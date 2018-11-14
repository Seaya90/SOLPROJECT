<%@page import="com.bc.mybatis.DBService" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이타를 사용해서 DB에 수정 작업 진행 --%>    
<%
	//(실습) mapper SQL 작성 + DB 수정 처리
	//0. 한글처리를 위한 request의 encoding 타입 UTF-8 설정
	request.setCharacterEncoding("UTF-8");
%>    
	<%--//1. GuestbookVO 타입의 vo 객체 생성 --%>
	<jsp:useBean id="vo" class="com.bc.mybatis.FreebookVO"/>
	
	<%-- //2. 파라미터로 전달받은 데이타를 추출해서 vo에 설정 --%>
	<jsp:setProperty property ="*" name="vo"/>
    
    
<%
	SqlSession ss = DBService.getFactory().openSession(true);
	int result =ss.update("update",vo);
	ss.close();
	
	if (result > 0) {
		response.sendRedirect("onelist.jsp?idx=" + vo.getIdx());
	} else {
%>
	<script>
		alert("[예외]수정처리 되지 않았습니다.");
		history.back();
	</script>
<%
	}
%>