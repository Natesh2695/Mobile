<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
*{
  color: #b8b8b8 !important;
}
/* HEADER */
#nav-right{
  float:right;
}
.nav>li>a:focus, .nav>li>a:hover {
    text-decoration: none;
    background-color: #fff;
    color: #7079c6 !important;
}
.nav-pills>li.active>a{
    color: #7178c6 !important;
    font-weight: bold;
    background-color: #fff;
}
.nav-pills>li.active>a:hover{
  background-color: #fff;
}
.navbar-nav>li>a {
    padding-top: 20px;
}
.navbar-toggle {
  border: 2px solid #7178c6;
}
.icon-bar {
  color: #7178c6;
  border-color: #7178c6;
  background-color: #7178c6;
}
#nav-right button{
      font-size: 10px;
      margin-top: 15px;
      margin-bottom: 15px;
      margin-left: 10px;
      background-color: #fff;
      border-radius: 4px;
      border: 1px solid;
      padding: 5px 9px;
}
#nav-right{
  margin-right: 15px;
}
#navtop{
  font-size: 10px !important;
}
.fa {
    padding-right: 10px;
    font-size: 14px;
    color: #9a9a9a !important;
}
#logo a img{
    margin-top: -25px;
    margin-bottom: 30px;
}
#main-navigation{
    font-size: 12px !important;
    font-weight: bold;
}
#main-navigation .nav>li>a{
  padding-left:0;
  padding-right:0;
}
#main-navigation .container{
  max-width: 720px;
}
/* MEDIA QUERIES FOR TOP NAV*/
@media screen and (max-width:768px){
  #nav-left{
    text-align: center;
  }
  #nav-left:after{
    display: block;
    content: "";
    clear: both;
  }
  #nav-left li{
    float:left;
    width: 31%;
    padding:1%;
  }
  #nav-right{
    display: block;
    content: "";
    clear: both;
  }
  #nav-right{
    text-align: center;
    width:100%;
  }
  #nav-right li {
    float: left;
    width:23%;
    padding: 1%;
  }
  #logo a img {
    margin-top: 0;
    margin-bottom: 0;
}
#main-navigation ul li{
  border-top: 1px solid #7178c6;
  width: 100%;
}
}
/* MEDIA QUERIES FOR TOP NAV END*/
/* HEADER END*/
</style>
<body>

<nav id="navtop">
        <div class="container-fluid">
      <!--header navbar top left -->
              <ul class="nav navbar-nav" id="nav-left">
              <c:if test="${empty SuccessMessage}">
                <li><a href="login">
                  <i class="fa fa-sign-in" aria-hidden="true"></i>LOGIN</a>
                </li>
                <li><a href="register">
                  <i class="fa fa-user" aria-hidden="true"></i>SIGN UP</a>
                </li>
                </c:if>
               
              </ul>
              <ul class="nav navbar-nav" id="nav-left">
              <c:if test="${not empty SuccessMessage}">
                <li><a href="#">
                  <i class="fa fa-sign-in" aria-hidden="true"></i>CART</a>
                </li>
                <li><a href="logout">
                  <i class="fa fa-user" aria-hidden="true"></i>LOGOUT</a>
                </li>
                </c:if>
               
              </ul>
      <!--header navbar top right -->
              <ul class="nav navbar-nav nav-pills" id="nav-right">
                <li>
                  <a href="#">
                        <i class="fa fa-search" aria-hidden="true"></i>SEARCH</a></li>
				  <li><a href="#">	
						<i class="fa fa-phone" aria-hidden="true"></i>CONTACT</a>
                </li>
                
              </ul>

          </div>
        </nav>
      <!--header navbar LOGO -->
        <div class="text-center" id="logo">
              <a href="#" ><img src="https://www.freelogoservices.com/api/main/images/1j+ojl1FOMkX9WypfBe43D6kjPaErh9PnhzJwXs1M3EMoAJtlCgtg...tq9PQ..." alt="logo" /></a>
        </div>
      <!-- TOOGLE MAIN NAVIGATION -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navigation" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>

      <!--  MAIN NAVIGATION -->
        <div class="collapse navbar-collapse" id="main-navigation">
          <div class="container">

          <ul class="nav nav-justified nav-pills">
              <li class="active"><a href="#">HOMEPAGE</a></li>
              <li><a href="#">SONY</a></li>
              <li><a href="#">APPLE</a></li>
              <li><a href="#">SAMSUNG</a></li>
              <li><a href="aboutus">ABOUT US</a></li>
              
          </ul>
          </div>
        </div>
<!--header navbar END -->
    
    

  </div>
</nav>
</body>
</html>