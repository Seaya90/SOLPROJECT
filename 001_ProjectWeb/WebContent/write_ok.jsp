<%@page import="com.bc.mybatis.DBService" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>  

	<jsp:useBean id="vo" class="com.bc.mybatis.FreebookVO"/> 
    <jsp:setProperty property="*" name="vo"/>
 
<%
	SqlSession ss = DBService.getFactory().openSession();
	int result = ss.insert("insert", vo);
	ss.commit(); //임의로 커밋을 해줘야 뜨지 않고 저장이 됨 
	ss.close();
	
	if (result > 0) {
%>  
	<script>
		alert("정상입력 처리 되었습니다. \n목록으로 이동")
		location.href = "free.jsp";
	</script>
<%
	}else {
%>
	<script>
		alert("[예외]입력처리 되지 않았습니다.")
		history.back();
	</script>
<%
	}
%>

