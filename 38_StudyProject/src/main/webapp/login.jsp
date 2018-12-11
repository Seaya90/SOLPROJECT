<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <h1 class="fon">Login</h1>      
  </div>
</div>
  
  <form action="login_proc.do">
    <div class="form-group">
      <label for="id">ID:</label>
      <input type="id" class="form-control" name="id" >
    </div>
    
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="pwd">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <a href="login_proc.do"><input type="submit" value="로그인"/></a>
  </form>
</div>

</body>
</html>
