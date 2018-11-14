<%@page import="com.bc.mybatis.MessageVO" %>
<%@page import="com.bc.mybatis.DBService2" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String idx = request.getParameter("idx");
	SqlSession ss = DBService2.getFactory().openSession();
	session.setAttribute("MessageVO", ss.selectOne("one", idx));
	ss.close();
%>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>	

<title>ReadList</title>

<style>
	#table {
		width: 500px;
    	height: 400px;
    	margin-left: auto;
   	    margin-right: auto;
    	 
	}
	#table th{
		 padding: 20px;
   		 text-align: left;
    	 border-bottom: 1px solid #ddd;
    	 font-size: 15px;
	}
	
	#table td{
		 padding: 20px;
   		 text-align: left;
    	 border-bottom: 1px solid #ddd;
    	 
	
	}
	tr:hover {background-color:#f0f0f0;}
</style>



</head>
<body>

</body>
</html>