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
	  <img src="./images/q1_1.png" style="width:100%">
	  <div class="questions">
	  <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q1" value="correct">
		  <label for="">a</label><br>
		  <input type="radio" id="" name="q1" value="wrong">
		  <label for="">o</label><br>
		  <input type="radio" id="" name="q1" value="wrong">
		  <label for="">ku</label><br>
		  <input type="radio" id="" name="q1" value="wrong">
		  <label for="">ka</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 2 / 10</div>
	    <img src="./images/q1_2.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q2" value="wrong">
		  <label for="">a</label><br>
		  <input type="radio" id="" name="q2" value="correct">
		  <label for="">i</label><br>
		  <input type="radio" id="" name="q2" value="wrong">
		  <label for="">chi</label><br>
		  <input type="radio" id="" name="q2" value="wrong">
		  <label for="">ha</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 3 / 10</div>
	    <img src="./images/q1_3.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q3" value="wrong">
		  <label for="">su</label><br>
		  <input type="radio" id="" name="q3" value="wrong">
		  <label for="">tsu</label><br>
		  <input type="radio" id="" name="q3" value="wrong">
		  <label for="">ku</label><br>
		  <input type="radio" id="" name="q3" value="correct">
		  <label for="">u</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 4 / 10</div>
	    <img src="./images/q1_4.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q4" value="wrong">
		  <label for="">ta</label><br>
		  <input type="radio" id="" name="q4" value="wrong">
		  <label for="">a</label><br>
		  <input type="radio" id="" name="q4" value="correct">
		  <label for="">o</label><br>
		  <input type="radio" id="" name="q4" value="wrong">
		  <label for="">ro</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 5 / 10</div>
	  <img src="./images/q1_5.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q5" value="wrong">
		  <label for="">ke</label><br>
		  <input type="radio" id="" name="q5" value="correct">
		  <label for="">e</label><br>
		  <input type="radio" id="" name="q5" value="wrong">
		  <label for="">se</label><br>
		  <input type="radio" id="" name="q5" value="wrong">
		  <label for="">te</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 6 / 10</div>
	  <img src="./images/q1_6.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q6" value="wrong">
		  <label for="">o</label><br>
		  <input type="radio" id="" name="q6" value="wrong">
		  <label for="">to</label><br>
		  <input type="radio" id="" name="q6" value="correct">
		  <label for="">so</label><br>
		  <input type="radio" id="" name="q6" value="wrong">
		  <label for="">no</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 7 / 10</div>
	  <img src="./images/q1_7.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q7" value="correct">
		  <label for="">ni</label><br>
		  <input type="radio" id="" name="q7" value="wrong">
		  <label for="">mu</label><br>
		  <input type="radio" id="" name="q7" value="wrong">
		  <label for="">mi</label><br>
		  <input type="radio" id="" name="q7" value="wrong">
		  <label for="">yu</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 8 / 10</div>
	  <img src="./images/q1_8.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q8" value="wrong">
		  <label for="">ni</label><br>
		  <input type="radio" id="" name="q8" value="wrong">
		  <label for="">ki</label><br>
		  <input type="radio" id="" name="q8" value="wrong">
		  <label for="">shi</label><br>
		  <input type="radio" id="" name="q8" value="correct">
		  <label for="">tsu</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 9 / 10</div>
	  <img src="./images/q1_9.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q9" value="correct">
		  <label for="">na</label><br>
		  <input type="radio" id="" name="q9" value="wrong">
		  <label for="">ya</label><br>
		  <input type="radio" id="" name="q9" value="wrong">
		  <label for="">ra</label><br>
		  <input type="radio" id="" name="q9" value="wrong">
		  <label for="">wa</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 10 / 10</div>
	  <img src="./images/q1_10.png" style="width:100%">
	    <div class="questions">
	    <p>What pronunciation coincides with the above character?</p>
	  	  <input type="radio" id="" name="q10" value="wrong">
		  <label for="">mo</label><br>
		  <input type="radio" id="" name="q10" value="correct">
		  <label for="">ro</label><br>
		  <input type="radio" id="" name="q10" value="wrong">
		  <label for="">ma</label><br>
		  <input type="radio" id="" name="q10" value="wrong">
		  <label for="">ra</label>
	  </div>
	</div>
	<div class="mySlides fade">
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">Submit Below</div>
	   <% String userName = request.getParameter("userName");%>
	  <div><button style="width: 100%; text-align: center; background-color: powderblue" name="submit" value="jp1 <%=userName%>"  type="submit">Submit</button></div>
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
