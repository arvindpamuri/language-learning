<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	
<style>
* {
  box-sizing: border-box;
}


body {
  font-family: Arial, Helvetica, sans-serif;
  color: black;
 
  background-image: url('https://t3.ftcdn.net/jpg/03/81/37/64/360_F_381376456_Ccr2vArc8tANGqhCaA1zJungBgNIzBb2.jpg');
}

/* Style the header */
header {
  padding: 30px;
  text-align: center;
  font-size: 45px;
  color: black;
}

/* Create two columns/boxes that floats next to each other */
nav {
  font-size: 20px;

  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

.article {
  font-size: 25px;
  float: left;
  padding: 20px;
  width: 70%;

  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section::after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  font-size: 30px;
  padding: 100px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
  
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>

<% String userName = request.getAttribute("userName").toString(); %>
<% String userID = request.getAttribute("userID").toString(); %>
<% String Q1 = request.getAttribute("Q1").toString(); %>
<% String Q2 = request.getAttribute("Q2").toString(); %>

<% String SLevel = request.getAttribute("SLevel").toString(); %>

<% String JLevel = request.getAttribute("JLevel").toString(); %>

<header>
<h2>Welcome <%= userName %></h2>
</header>

<div class="row justify-content-evenly">
  <nav class="col-4">
    
     <ul>
    <h4>Spanish</h4>
      <li><a href="/language-learning/level_one_sp.jsp?userName=<%=userName%>">Level 1</a></li><br>
      <li><a href="/language-learning/level_two_sp.jsp?userName=<%=userName%>">Level 2</a></li><br>
     <h4>Japanese</h4>
      <li><a href="/language-learning/level_one_jp.jsp?userName=<%=userName%>">Level 1</a></li><br>
      <li><a href="/language-learning/level_two_jp.jsp?userName=<%=userName%>">Level 2</a></li><br>
      <h4>Translate Page</h4>
      <form action="TranslateNavigation">
	    <input type="hidden" name="userName" value="${userName}">
	  	<input type="hidden" name="userID" value="${userID}">
	  	<input type="submit" id="translate" name="btn1" value="Learn through translation"/>
  	</form>
      
      </li><br>
    </ul>
    
    
  
  
  </nav>

<div class="col-4"> 
 <div class="card text-dark bg-info mb-3 style="width: 50rem;">
 <div class="card-body "><h1>Your Statistics</h1></div>
  <div class="card-body article">
  	    
	    <p>Japanese Quiz Max: <%= Q1 %></p>
	    <p>Japanese Level: <%=JLevel %></p>
	    <p>Spanish Quiz Max <%= Q2 %></p>
	    <p>Spanish Level: <%= SLevel %></p>

</div>
</div>

</div>

</div>

<footer>
  <a href="/language-learning/SingIn.html">EXIT</a>
</footer>

</body>
</html>