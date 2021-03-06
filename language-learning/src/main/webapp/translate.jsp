<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	
	<style type="text/css">
	
		body {
		  background-color: #F0F8FF;
		  
		}
		
		nav {
			background-color: rgb(86,61,124);
			color: whitesmoke;
		}
		
		.nav-text {
			color: whitesmoke;
		}
	
	</style>
	</head>
	<body>
	
		<% String userName = request.getAttribute("userName").toString(); %>
		<% String userID = request.getAttribute("userID").toString(); %>
		
		
		<nav class="navbar navbar-inverse navbar-fixed-top ">
				  <div class="container">
				    
			      <a class="nav-text" href="SingUp.html">Sign Up Page</a>
			      <a class="nav-text">Welcome <%= userName %> </a>
			      <a class="nav-text" href="SingIn.html">Login Page</a>
			    </div>
		</nav>
	
		<div class="container mt-5">
		
		
			<h1>Translate a sentence from English to other languages</h1>
			
			
			<div class=" row mt-5">
				<form action="translate">
			  <div class="form-group mt-10">
			    <label for="exampleInputEmail1" name="text">Enter  an English sentence</label>
			    <textarea class="form-control" rows="3" name="text"></textarea>
			  </div>
			  
			  <div class="form-group">
				  	<select name="lang" class="form-control">
						<option value="es" selected>Spanish</option>
						<option value="ja">Japanese</option>
						<option value="de">German</option>
						<option value="ar">Arabic</option>
						<option value="zh">Chinese</option>
						<option value="nl">Dutch</option>
						<option value="fr">French</option>
						<option value="el">Greek</option>
						<option value="hi">Hindi</option>
						<option value="te">Telugu</option>
						<option value="ko">Korean</option>
						<option value="ne">Nepali</option>
						<option value="pt">Portuguese</option>
						<option value="ur">Urdu</option>
						<option value="ru">Russian</option>
						<option value="sr">Serbian</option>					
				  	</select>
			  </div>
			  
			  
			  	  <input type="hidden" name="userName" value="${userName}">
				  <input type="hidden" name="userID" value="${userID}">
				  <button type="submit" class="btn btn-primary btn-lg active mt-2"value="Submit">Translate</button>
			  
			  
			</form>
			
			</div>
			
			
			<form action="TranslateQuiz">
				<input type="hidden" name="userName" value="${userName}">
			  	<input type="hidden" name="userID" value="${userID}">
				<button type="submit" class="btn btn-primary btn-lg active mt-2"value="Submit">Take Quiz</button>
			</form>
			
		</div>
	
		
	</body>
</html>