<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="te">
<head>
<meta charset="UTF-8">
<title>Translate result</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top ">
	  <div class="container">
	    
      <a class="navbar-brand" href="#">Translate</a>
      <a class="navbar-brand" href="#">Login</a>
    </div>

	</nav>

	<% String userName = request.getAttribute("userName").toString(); %>
	<% String userID = request.getAttribute("userID").toString(); %>
	<% String tgt_text = request.getAttribute("tgt_text").toString(); %>
	<% String text = request.getAttribute("text").toString(); %>
	
		
	<div class="container">		
		
		<div class="jumbotron">
		
		
		  <h3>Sentence in another language</h3>
		  <p><%= tgt_text %></p>
		  
		  
		  <form action="CheckAnswer">
		    <div class="form-group mt-5">
		    	<input type="hidden" name="userName" value="${userName}">
		  		<input type="hidden" name="userID" value="${userID}">
		  		<input type="hidden" name="text" value="${text}">
		  		<input type="hidden" name="tgt_text" value="${tgt_text}">
		    
			    <h3>Type the equivalent in English</h3>
			    <textarea class="form-control" rows="3" name="usertext"></textarea>
			    <button type="submit" class="btn btn-primary btn-lg mt-2"value="Submit">Check</button>
			</div>
		  </form>
		  
		  <form action="TranslateNavigation">
		    <input type="hidden" name="userName" value="${userName}">
		  	<input type="hidden" name="userID" value="${userID}">
		  	<input class="btn btn-primary btn-lg" type="submit" role="button" value="Translate Home"/>
		  </form>
		  
		  
		  
		  
		</div>
		
	</div>
</body>
</html>