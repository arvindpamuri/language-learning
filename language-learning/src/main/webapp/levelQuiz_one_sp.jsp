<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Level One Quiz</title>
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; background-color: powderblue; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  background-color: powderblue;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #000000;
  font-size: 30px;
  padding: 8px 12px;
  position: absolute;
  top: 100px;
  width: 100%;
  text-align: center;
  background-color: powderblue;
  border-radius: 15px;
}

.questions {
	top: 100px;	
	background-color: powderblue;
  	border-radius: 15px;
  	font-size: 30px;
  	color: #000000;
}

/* Number text (1/10 etc) */
.numbertext {
  color: #000000;
  font-size: 24px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
  background-color: powderblue;
  border-radius: 15px;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
a {color: black}
h1 {text-align: center}
body {background-image: url(./images/backgroundjp.jpg)}
</style>
</head>
<body>

<h1 style="background-color: powderblue; border-radius: 15px;">Level One Quiz</h1>
<form action="GradeQuiz" method="post">
<div class="slideshow-container">
	<div class="mySlides fade">
	  <div class="numbertext">Question: 1 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'A' pronounced in Spanish?</div>
	  <div class="questions">
	  	  <input type="radio" id="" name="q1" value="wrong">
		  <label for="">aha</label><br>
		  <input type="radio" id="" name="q1" value="correct">
		  <label for="">a</label><br>
		  <input type="radio" id="" name="q1" value="wrong">
		  <label for="">ay</label><br>
		  <input type="radio" id="" name="q1" value="wrong">
		  <label for="">ae</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 2 / 10</div>
	    <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'C' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q2" value="correct">
		  <label for="">ce</label><br>
		  <input type="radio" id="" name="q2" value="wrong">
		  <label for="">see</label><br>
		  <input type="radio" id="" name="q2" value="wrong">
		  <label for="">che</label><br>
		  <input type="radio" id="" name="q2" value="wrong">
		  <label for="">cu</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 3 / 10</div>
	    <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'N' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q3" value="wrong">
		  <label for="">eme</label><br>
		  <input type="radio" id="" name="q3" value="wrong">
		  <label for="">en</label><br>
		  <input type="radio" id="" name="q3" value="correct">
		  <label for="">ene</label><br>
		  <input type="radio" id="" name="q3" value="wrong">
		  <label for="">enye</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 4 / 10</div>
	    <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'll' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q4" value="correct">
		  <label for="">elle</label><br>
		  <input type="radio" id="" name="q4" value="wrong">
		  <label for="">ele</label><br>
		  <input type="radio" id="" name="q4" value="wrong">
		  <label for="">ll</label><br>
		  <input type="radio" id="" name="q4" value="wrong">
		  <label for="">le</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 5 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'J' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q5" value="wrong">
		  <label for="">j</label><br>
		  <input type="radio" id="" name="q5" value="wrong">
		  <label for="">gota</label><br>
		  <input type="radio" id="" name="q5" value="wrong">
		  <label for="">jay</label><br>
		  <input type="radio" id="" name="q5" value="correct">
		  <label for="">jota</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 6 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'S' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q6" value="wrong">
		  <label for="">se</label><br>
		  <input type="radio" id="" name="q6" value="wrong">
		  <label for="">es</label><br>
		  <input type="radio" id="" name="q6" value="correct">
		  <label for="">ese</label><br>
		  <input type="radio" id="" name="q6" value="wrong">
		  <label for="">ses</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 7 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'Z' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q7" value="wrong">
		  <label for="">ese</label><br>
		  <input type="radio" id="" name="q7" value="wrong">
		  <label for="">i griega</label><br>
		  <input type="radio" id="" name="q7" value="wrong">
		  <label for="">equis</label><br>
		  <input type="radio" id="" name="q7" value="correct">
		  <label for="">zeta</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 8 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'Ch' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q8" value="correct">
		  <label for="">che</label><br>
		  <input type="radio" id="" name="q8" value="wrong">
		  <label for="">cu</label><br>
		  <input type="radio" id="" name="q8" value="wrong">
		  <label for="">ce</label><br>
		  <input type="radio" id="" name="q8" value="wrong">
		  <label for="">chee</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 9 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'W' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q9" value="wrong">
		  <label for="">doble o</label><br>
		  <input type="radio" id="" name="q9" value="correct">
		  <label for="">doble u</label><br>
		  <input type="radio" id="" name="q9" value="wrong">
		  <label for="">doble oo</label><br>
		  <input type="radio" id="" name="q9" value="wrong">
		  <label for="">ua</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 10 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is 'Y' pronounced in Spanish?</div>
	    <div class="questions">
	  	  <input type="radio" id="" name="q10" value="wrong">
		  <label for="">e</label><br>
		  <input type="radio" id="" name="q10" value="wrong">
		  <label for="">equis</label><br>
		  <input type="radio" id="" name="q10" value="correct">
		  <label for="">i griega</label><br>
		  <input type="radio" id="" name="q10" value="wrong">
		  <label for="">wi</label>
	  </div>
	</div>
	<div class="mySlides fade">
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">Submit Below</div>
	   <% String userName = request.getParameter("userName");%>
	  <div><button style="width: 100%; text-align: center; background-color: powderblue" name="submit" value="sp1 <%=userName%>"  type="submit">Submit</button></div>
	  <div class="text"></div>
	</div>
	<a style="color: black" class="prev" onclick="plusSlides(-1)"> Back </a>
	<a style="color: black" class="next" onclick="plusSlides(1)"> Next </a>
	
	</div>
	<br>
	
	<div style="text-align:center">
	  <span class="dot" onclick="currentSlide(1)"></span> 
	  <span class="dot" onclick="currentSlide(2)"></span> 
	  <span class="dot" onclick="currentSlide(3)"></span> 
	  <span class="dot" onclick="currentSlide(4)"></span> 
	  <span class="dot" onclick="currentSlide(5)"></span> 
	  <span class="dot" onclick="currentSlide(6)"></span> 
	  <span class="dot" onclick="currentSlide(7)"></span> 
	  <span class="dot" onclick="currentSlide(8)"></span> 
	  <span class="dot" onclick="currentSlide(9)"></span> 
	  <span class="dot" onclick="currentSlide(10)"></span> 
	   <span class="dot" onclick="currentSlide(11)"></span> 
	</div>
</form>
<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html> 
