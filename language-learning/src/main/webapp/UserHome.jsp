<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
}
/* Style the header */
header {
  background-color: lightBlue;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}
/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 500px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}
/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}
article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 500px; /* only for demonstration, should be removed */
}
/* Clear floats after the columns */
section::after {
  content: "";
  display: table;
  clear: both;
}
/* Style the footer */
footer {
  background-color: lightBlue;
  padding: 10px;
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
<% String Q1 = request.getAttribute("Q1").toString(); %>
<% String Q2 = request.getAttribute("Q2").toString(); %>

<% String SLevel = request.getAttribute("SLevel").toString(); %>

<% String JLevel = request.getAttribute("JLevel").toString(); %>

<% String userName = request.getAttribute("userName").toString();%>

<header>
  <h2>Home page</h2>
</header>

<section>
  <nav>
    <ul>
    <h4>Spanish</h4>
      <li><a href="/language-learning/level_one_sp.jsp?userName=<%=userName%>">Level 1</a></li><br>
      <li><a href="/language-learning/level_two_sp.jsp?userName=<%=userName%>">Level 2</a></li><br>
      <li><a href="#">Level 3</a></li><br>
     <h4>Japanese</h4>
      <li><a href="/language-learning/level_one_jp.jsp?userName=<%=userName%>">Level 1</a></li><br>
      <li><a href="/language-learning/level_two_jp.jsp?userName=<%=userName%>">Level 2</a></li><br>
      <li><a href="#">Level 3</a></li><br>
      <h4>Translate Page</h4>
      <li><a href="/language-learning/translate.html">Translate Sentences</a></li><br>
    </ul>
  </nav>
  
  <article>
    <h1>Welcome</h1>
    <p>User Japanese Quiz Max: <%= Q1 %></p>
    <p>User Japanese Level: <%=JLevel %></p>
    <p>User Spanish Quiz Max: <%= Q2 %></p>
     <p>User Spanish Level: <%= SLevel %></p>
  </article>
</section>

<footer>
  <li><a href="/language-learning/SingIn.html">EXIT</a></li>
</footer>

</body>
</html>