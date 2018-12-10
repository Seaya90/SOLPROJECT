<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>


<%! String member = "회원가입"; %>
<div class = "jumbotron">
	<div class = "container">
		<h1 class = "display-3">
			<%= member%>
		</h1>
	</div>
</div>

<div class="container">
<form action="home.do" method="post">
<center>
<table border="1" cellpadding="0" cellspacing="0">
	<tr>
	  <td colspan="2" align="center" bgcolor="#ccfff5">
	  <b><font size =5>회원가입</font></b>
	  </td>
	</tr>
</center>
</table>	
</form>

</div>



</body>
</html>