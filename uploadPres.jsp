<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Prescription Checkout</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">
<style>
h2{
color:black;
  font-size: 30px; 
}
input[type=text], input[type=password] {
  width: 50%;
  padding: 5px;
  margin: 5px 0 15px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: white;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.registerbtn {
  background-color: cyan;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}
.registbtn {
  background-color: cyan;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 15%;
  opacity: 0.9;
}
.main{
background:url("https://images.unsplash.com/photo-1573883431205-98b5f10aaedb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
background-position:center;
background-size:cover;
color:black;
}

a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>
<div class="site-navbar py-2">

      

      <div class="container2">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a class="js-logo-clone">HookUPMeds!!</a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li class="active"><a href="homepage.html">Home</a></li>
                <li><a href="Dont_Know.html">Don't Know??</a></li>
                <li class="has-children">
                  <a href="#">General Meds</a>
                  <ul class="dropdown">
                    <li><a href="vitamin_supp.html">Supplements &amp; Vitamins</a></li>
                    <li class="has-children">
                      <a href="#">Illness</a>
                      <ul class="dropdown">
                        <li><a href="fever.html">Fever</a></li>
                        <li><a href="cold_cough.html">Cold &amp; Cough</a></li>
                        <li><a href="throatinfection.html">Throat infection</a></li>
                      </ul>
                    </li>
                    <li><a href="headache.html">Headaches</a></li>
                    <li><a href="bodypain.html">Body / Muscular pain</a></li>  
                    <li><a href="Diet_Nutrition.html">Diet &amp; Nutrition</a></li>                    
                  </ul>
                </li>
                <li><a href="about_us.html">About</a></li>
              </ul>
            </nav>
          </div>
        
        </div>
      </div>
    </div>
<div class=main>
<h2>Order Form</h2>

<form action="Presupload" method="get">
<div class="container">
	<label for="text"><b>Name :</b></label><br>
<select name="mr">
  <option value="Mr. ">Mr.</option>
  <option value="Ms. ">Ms.</option>
  <option value="Mrs. ">Mrs.</option>
  </select>
    <input type="text" placeholder="Enter your Name" name="name" required>
	<br><br>
	<label for="text"><b>Age :</b></label><br>
    <input type="text" placeholder="Enter your Age" name="age" required>
	<br><br>
	<b>Gender</b>      :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<select name="gender">
	<option value="male">Male</option>
	<option value="female">Female</option>
	<option value="other">Other</option>
	</select>
  	<br>
  	<br>
<b>Blood group :</b>
  <select name="bg">
  <option value="A+ve">A+ve</option>
  <option value="A-ve">A-ve</option>
  <option value="B+ve">B+ve</option>
  <option value="B-ve">B-ve</option>
  <option value="AB+ve">AB+ve</option>
  <option value="AB-ve">AB-ve</option>
  <option value="O+">O+</option>
  <option value="O-">O-</option>
  </select>
  <br><br>
	<label for="text"><b>Mobile number :</b></label><br>
    <input type="text" placeholder="Enter your Number" name="number"required>
	<br><br>
	<label for="text"><b>PIN-Code :</b></label><br>
    <input type="text" placeholder="Enter your PIN-Code" name="pin" required>
	<br>
	<br>
  <b>Upload your prescription :</b>
  	<form action="upload" method="get">
    <input type="file" id="myFile" name="filename">
	</form>
	<br><br>
  	<input type="reset" value="RESET" class="registbtn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="registerbtn">Register</button>
  </div>
  </div>
  <footer class="site-footer">
      <div class="container2">
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

            <div class="block-7">
              <h3 class="footer-heading mb-4">About Us</h3>
              <p>We are at hookup meds serve people to find and buy medicines from nearby local stores at their 
                home convenience.</p>
            </div>

          

          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
              Copyright &copy;
              <script>document.write(new Date().getFullYear());</script> | This is a project
              by Naveen K | Themes and Styling Courtesy Colorlib.com
            </p>
          </div>

        </div>
      </div>
    </footer>
</body>
</html>