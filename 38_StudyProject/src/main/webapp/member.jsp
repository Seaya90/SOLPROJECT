<%@page import="com.spring.biz.user.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserVO user = (UserVO)session.getAttribute("user");

%>    
    


<!DOCTYPE>
<html>
<head>

 <title>LOGIN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

.jumbotron {
  padding: 80px 40px;
  margin-bottom: 30px;
  color: white;
  background-color: #ccfff3;
}

h1.fon {
	color: #000066;
}
</style>

</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1 class="fon">회원가입</h1>      
  </div>
</div>
  
  <form action="member_proc.do">
    <div class="form-group">
      <label for="id">ID:</label>
      <input type="id" class="form-control" name="id" value="<%=user.getId() %>">
    </div>
    
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="pwd" value="<%=user.getPwd() %>">
    </div>
    
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" name="name" value="<%=user.getName()%>">
    </div>
    
     <div class="checkbox">
      <h4>Gender:</h4>
      <label><input type="radio" name="gender" value="<%=user.getGender()%>">여</label>
      <label><input type="radio" name="gender" value="<%=user.getGender()%>">남</label>
    </div>
    
    <div class="form-group">
      <label for="phone">Phone:</label>
      <input type="text" class="form-control" name="phone" value="<%=user.getPhone()%>">
     </div>
    <br>
    
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" class="form-control" name="address" value="<%=user.getAddress()%>">
    </div>
     
    <div class="form-group">
    	<th>가입일</th>
      <td><%=user.getRegdate() %></td>
     </div>
  
     
     <br>
     <center>
      <a href="member_proc.do"><input type="submit" value="회원가입 완료"/></a>
     </center>
  </form>
</div>

</body>
</html>
