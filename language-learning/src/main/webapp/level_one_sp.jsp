<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
head {background-color: #111111;}
body {
		background-color: powderblue; text-align: center; 
		background-image: url(./images/background.jpg);   
		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size: 100% 100%;
  	 }
div    {color: black; font-size: 30px; background-color: powderblue; border-radius: 15px}
h1    {color: black;} 
h2    {color: black;} 
a {background-color: powderblue; font-size: 30px; border-radius: 15px}
</style>
<title>Level One</title>
</head>
<body>
	<div>
    <h1>Level One</h1>
    <p>In this level we are going to teach you the Spanish alphabet.</p>
    <p>You are shown the letter and its lower case version and below the letter you are shown how to say it.</p>
    </div>
    <p></p>
	
    <img src="./images/spAlphabet.jpg"><BR>
    <% String userName = request.getParameter("userName");%>
    <a href="./levelQuiz_one_sp.jsp?userName=<%=userName%>">Quiz</a>
</body>
</html>