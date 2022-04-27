<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>Level Two Quiz</title>
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

<h1 style="background-color: powderblue;  border-radius: 15px;"> Level Two Quiz </h1>
<form action="GradeQuiz" method="post">
<div class="slideshow-container">
	<div class="mySlides fade">
	  <div class="numbertext">Question: 1 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '1' written in Japanese?</div>
	  <div class="questions">
	  	  <input type="radio" id="Ni" name="q1" value="wrong">
		  <label for="Ni">Ni</label><br>
		  <input type="radio" id="Ichi" name="q1" value="correct">
		  <label for="Ichi">Ichi</label><br>
		  <input type="radio" id="Go" name="q1" value="wrong">
		  <label for="Go">Go</label><br>
		  <input type="radio" id="Nana" name="q1" value="wrong">
		  <label for="Nana">Nana</label>
		  
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 2 / 10</div>
	    <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '0' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Rei" name="q2" value="correct">
		  <label for="Rei">Rei</label><br>
		  <input type="radio" id="Ichi" name="q2" value="wrong">
		  <label for="Ichi">Ichi</label><br>
		  <input type="radio" id="Juu" name="q2" value="wrong">
		  <label for="Juu">Juu</label><br>
		  <input type="radio" id="San" name="q2" value="wrong">
		  <label for="San">San</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 3 / 10</div>
	    <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '8' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Roku" name="q3" value="wrong">
		  <label for="Roku">Roku</label><br>
		  <input type="radio" id="Kyuu" name="q3" value="wrong">
		  <label for="Kyuu">Kyuu</label><br>
		  <input type="radio" id="Hachi" name="q3" value="correct">
		  <label for="Hachi">Hachi</label><br>
		  <input type="radio" id="Yon" name="q3" value="wrong">
		  <label for="Yon">Yon</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 4 / 10</div>
	    <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '10' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Juu" name="q4" value="correct">
		  <label for="Juu">Juu</label><br>
		  <input type="radio" id="Nijuu" name="q4" value="wrong">
		  <label for="Nijuu">Nijuu</label><br>
		  <input type="radio" id="Ichi" name="q4" value="wrong">
		  <label for="Ichi">Ichi</label><br>
		  <input type="radio" id="Kyuu" name="q4" value="wrong">
		  <label for="Kyuu">Kyuu</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 5 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '18' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Juuichi" name="q5" value="wrong">
		  <label for="Juuichi">Juuichi</label><br>
		  <input type="radio" id="Juuhachi" name="q5" value="correct">
		  <label for="Juuhachi">Juuhachi</label><br>
		  <input type="radio" id="Juuroku" name="q5" value="wrong">
		  <label for="Juuroku">Juuroku</label><br>
		  <input type="radio" id="Juukyuu" name="q5" value="wrong">
		  <label for="Juukyuu">Juukyuu</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 6 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '22' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Juuni" name="q6" value="wrong">
		  <label for="Juuni">Juuni</label><br>
		  <input type="radio" id="Juugo" name="q6" value="wrong">
		  <label for="Juugo">Juugo</label><br>
		  <input type="radio" id="Nijuugo" name="q6" value="wrong">
		  <label for="Nijuugo">Nijuugo</label><br>
		  <input type="radio" id="Nijuuni" name="q6" value="correct">
		  <label for="Nijuuni">Nijuuni</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 7 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '40' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Gojuu" name="q7" value="wrong">
		  <label for="Gojuu">Gojuu</label><br>
		  <input type="radio" id="Yonjuu" name="q7" value="correct">
		  <label for="Yonjuu">Yonjuu</label><br>
		  <input type="radio" id="RokuJuu" name="q7" value="wrong">
		  <label for="RokuJuu">RokuJuu</label><br>
		  <input type="radio" id="Nanajuu" name="q7" value="wrong">
		  <label for="Nanajuu">Nanajuu</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 8 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '55' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Gojuuni" name="q8" value="wrong">
		  <label for="Gojuuni">Gojuuni</label><br>
		  <input type="radio" id="Gojuuhachi" name="q8" value="wrong">
		  <label for="Gojuuhachi">Gojuuhachi</label><br>
		  <input type="radio" id="Gojuuichi" name="q8" value="wrong">
		  <label for="Gojuuichi">Gojuuichi</label><br>
		  <input type="radio" id="Gojuugo" name="q8" value="correct">
		  <label for="Gojuugo">Gojuugo</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 9 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '86' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Kyuujuu" name="q9" value="wrong">
		  <label for="Kyuujuu">Kyuujuu</label><br>
		  <input type="radio" id="Hachijuuroku" name="q9" value="correct">
		  <label for="Hachijuuroku">Hachijuuroku</label><br>
		  <input type="radio" id="Kyuujuuroku" name="q9" value="wrong">
		  <label for="Kyuujuuroku">Kyuujuuroku</label><br>
		  <input type="radio" id="Nanajuroku" name="q9" value="wrong">
		  <label for="Nanajuroku">Nanajuroku</label>
	  </div>
	</div>
	
	<div class="mySlides fade">
	  <div class="numbertext">Question: 10 / 10</div>
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">How is '100' written in Japanese?</div>
	    <div class="questions">
	  	  <input type="radio" id="Juu" name="q10" value="wrong">
		  <label for="Juu">Juu</label><br>
		  <input type="radio" id="Ichi" name="q10" value="wrong">
		  <label for="Ichi">Ichi</label><br>
		  <input type="radio" id="Hyaku" name="q10" value="correct">
		  <label for="Hyaku">Hyaku</label><br>
		  <input type="radio" id="Hachi" name="q10" value="wrong">
		  <label for="Hachi">Hachi</label>
	  </div>
	</div>
	<div class="mySlides fade">
	  <img src="./images/transparent_wide.png" style="width:100%">
	  <div class="text">Submit Below</div>
	  <% String userName = request.getParameter("userName");%>
	  <button style="width: 100%; text-align: center; background-color: powderblue" name="submit" value="jp2 <%=userName%>"  type="submit">Submit</button>
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