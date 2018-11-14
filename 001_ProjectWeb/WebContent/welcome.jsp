<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<style>
h1,h3,h4 {
		color: white;
    	text-shadow: 5px 2px 3px darkblue, 0 0 30px #00ff00, 0 0 5px #00ff00;
    	text-align: center;
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
	
<title>Welcome!</title>
</head>

<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> 
	 <ul class="navbar-nav">
    <li class="nav-item">
       <a class="navbar-brand" href="welcome.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="free.jsp">Free</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="message.jsp">Message</a>
    </li>
  </ul>
</nav>	

	
	<%! String greeting = " 어서오십시오 환영합니다."; 
		String tagline = "-상단에 위치한 목록을 클릭하십시오-"; %>
		
		
<div class = "jumbotron">
	<div class = "container">
		<h1 class = "display-3">
			<%= greeting %>
		</h1>
	</div>
</div>

<h3>eng 소설 : [A Daughter Of The Land] Gene Stratton-Porter</h3>
<div class="eng">
	<ul class="a">
"Take the wings of Morning."

<li>Kate Bates followed the narrow footpath rounding the corner of the small country church,</li> 
<li>as the old minister raised his voice slowly and impressively to repeat the command he had selected for his text.</li>
<li>Fearing that her head would be level with the windows, she bent and walked swiftly past the church; but the words went with her, iterating and reiterating themselves in her brain. Once she paused to glance back toward the church,</li> 
<li>wondering what the minister would say in expounding that text. She had a fleeting thought of slipping in, taking the back seat and listening to the sermon. The remembrance that she had not dressed for church deterred her;</li>
<li>then her face twisted grimly as she again turned to the path, for it occurred to her that she had nothing else to wear if she had started to attend church instead of going to see her brother.</li>

	</ul>
</div>





<div class = "container">
	<div class = "text-center">
		<h4>
			<%= tagline %>
		</h4>
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