<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="te">
<head>
<meta charset="UTF-8">
<title>Translate result</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	
	<style>
	
		nav {
			background-color: rgb(86,61,124);
			color: whitesmoke;
		}
	
		h1 {
			text-align: center;
		}
		
		span, h3 {
		    font-size: 2.2rem;
		    color: rgb(57,118,164);
		 }
		 
		 a {
		 	color: whitesmoke;
		 }
		 
		 
		 .correct {
		 	color: green;
		 }
		 
		 .wrong {
		 	color: red;
		 }
		 
		 
		
	</style>
</head>
<body>

	<% String userName = request.getAttribute("userName").toString(); %>
	<% String userID = request.getAttribute("userID").toString(); %>
	<% String usertext = request.getAttribute("usertext").toString(); %>
	<% String text = request.getAttribute("text").toString(); %>
	<% String tgt_text = request.getAttribute("tgt_text").toString(); %>
	
	<%System.out.println(usertext);
	System.out.println(text);
	%>
	
	
	<nav class="navbar navbar-inverse navbar-fixed-top ">
				  <div class="container">
				    
			      <a class="" href="/language-learning/SignIn.html">Translate</a>
			      <a class="">Welcome <%= userName %> </a>
			      <a class="" href="SingIn.html">Login Page</a>
			    </div>
	</nav>
	
		
	<div class="container">		
	
	
		
			
			
		
		<div class="jumbotron">
		
		<%
			if((usertext.toLowerCase()).equals(text.toLowerCase())) {
		%>
		
		<h1 class="correct" >CORRECT</h1>
		
		<%
	        } else {
	    %>
	    
	    	<div class="row wrong">
	    		<h1>Wrong</h1>
	    	</div>
	        	<h3>You entered : ${usertext} </h3>
	    	
	        
	    <%
	        }
	    %>
		
		<div class="row mt-5">
			<span class="col"><%= tgt_text %></span>
		</div>
		<div class="row">
			<span class="col"> means</span>
		</div>
		<div class="row">
			<span class="col"><%= text %></span>
		</div>
		  
		  
		    <form class="mt-5" action="TranslateQuiz">
				<input type="hidden" name="userName" value="${userName}">
			  	<input type="hidden" name="userID" value="${userID}">
				<button type="submit" class="btn btn-primary btn-lg mt-2"value="Submit">Try Again</button>
			</form>
			
			
			<form class="mt-3"  action="TranslateNavigation">
		    <input type="hidden" name="userName" value="${userName}">
		  	<input type="hidden" name="userID" value="${userID}">
		  	<input class="btn btn-primary btn-lg" type="submit" role="button" value="Translate"/>
		  </form>
		  
		  
		</div>
		
	</div>
</body>
</html>