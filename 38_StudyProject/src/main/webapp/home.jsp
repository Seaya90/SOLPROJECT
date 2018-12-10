<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

.jumbotron {
  padding: 80px 40px;
  margin-bottom: 30px;
  color: white;
  background-color: #ccfff5;
}


h3,h4 {
		color: white;
    	text-shadow: 3px 1px 2px darkblue, 0 0 28px #00ff00, 0 0 5px #00ff00;
    	text-align: center;
    	font-family: "Times New Roman", Times, serif;
	}
	
h1 {
	color: white;
    text-shadow: 6px 3px 1px darkblue, 0 0 30px #00ff00, 0 0 5px #00ff00;
    text-align: center;
    font-family: "Times New Roman", Times, serif;
}
	
.eng {
    -webkit-column-count: 3; /* Chrome, Safari, Opera */
   
    column-count: 3;

    -webkit-column-gap: 40px; /* Chrome, Safari, Opera */
    column-gap: 40px;

    -webkit-column-rule: 4px double #00001a; /* Chrome, Safari, Opera */
    -moz-column-rule: 4px double #00001a; /* Firefox */
    column-rule: 4px double #00001a;
}

ul.a {
		color: black;
    	text-shadow: 2px 2px 5px darkblue, 0 0 5px #b3e6ff;
    	font-size: 20px;

}	
	

</style>	
	
<title>Home!</title>
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">English 게시판<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">자유게시판</a></li>
          <li><a href="#">영어 정보방</a></li>
        </ul> 
       </li>
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">日本語 게시판<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">자유게시판</a></li>
          <li><a href="#">일본어 정보방</a></li>
        </ul> 
       <li><a href="login.jsp">로그인&회원가입</a></li>  
      <li><a href="#">채팅창</a></li>
     
    </ul>
  </div>
</nav>

	
	<%! String greeting = " Well Come ";%>
		
		
<div class = "jumbotron">
	<div class = "container">
		<h1 class = "display-3">
			<%= greeting%>
		</h1>
	</div>
</div>



<div class = "container">
	<div class = "text-center">
		
<%
//날짜 표시
Date day = new java.util.Date();
String am_pm;
int hour = day.getHours();
int minute = day.getMinutes();
int second = day.getSeconds();
if (hour / 12 == 0) {
	am_pm = "AM";
} else {
	am_pm = "PM";
	hour = hour - 12;
}
String CT = hour + ":" + minute + ":" + second + " " + am_pm;
out.print("현재 접속 시각 : " + CT + "\n");


%>

</div>
</div>

<footer class = "container">
	<p>&copy; WebSite<p>

</footer>
</body>
</html>