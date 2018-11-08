<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome!</title>
</head>
<body>
<nav class = "navbar-expand  navbar-dark bg-dark"> 
	<div class = "container">
		<div class= "navar-header">
			<a class = "navbar-brend" href="./welcome.jsp">|Home</a>
			<a class = "navbar-brend" href="./free.jsp">|Free</a>
			<a class = "navbar-brend" href="./message.jsp">|Message</a>
		</div>
	</div>
</nav>	

	
	<%! String greeting = "사이트에 온 것을 환영합니다."; 
		String tagline = "{상단에 위치한 목록을 클릭하십시오}"; %>
		
		
<div class = "jumbotron">
	<div class = "container">
		<h1 class = "display-3">
			<%= greeting %>
		</h1>
	</div>
</div>

<div class = "container">
	<div class = "text-center">
		<h3>
			<%= tagline %>
		</h3>
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