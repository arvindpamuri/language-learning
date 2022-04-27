<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
head {
	background-color: #111111;
}

body {
	background-color: powderblue;
	text-align: center;
	background-image: url(./images/backgroundjp.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

div {
	color: black;
	font-size: 30px;
	background-color: powderblue;
	border-radius: 15px
}

h1 {
	color: black;
}

h2 {
	color: black;
}

a {
	background-color: powderblue;
	font-size: 30px;
	border-radius: 15px
}
</style>
<title>Level One</title>
</head>
<body>
	<div>
		<h1>Level One</h1>
		<p>In this level we are going to teach you the Japanese Katakana.</p>
		<p>Each Kanji has the pronunciation to the right of it.</p>
	</div>
	<p></p>

	<img src="./images/katakana.jpg" style="width:700px;height:800px;">
	<BR>
	 <% String userName = request.getParameter("userName");%>
    <a href="./levelQuiz_one_jp.jsp?userName=<%=userName%>">Quiz</a>
</body>
</html>