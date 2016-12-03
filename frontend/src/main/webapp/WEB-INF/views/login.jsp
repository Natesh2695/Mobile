<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	height: 700px;
	background-image:
		url('http://www.technobuffalo.com/wp-content/uploads/2014/02/iphone-6-concept-design-3d.jpg');
	width: 100%;
}

.col-md-4 h1 {
	color: #9f00a7;
	font-family: calibri, arial;
	font-weight: bold;
	font-size: 30px;
	position: relative;
	left: 30px;
}

.header {
	background: white;
	width: 100%;
}

.header a {
	color: rgb(100, 100, 100);
	padding: 20px;
	position: relative;
	top: 30px;
	font-family: calibri, arial;
	font-weight: 900;
}

#col-md-4 {
	height: 50px;
}

.header a:hover {
	transition-duration: 0.3s;
	color: rgb(0, 0, 0);
}

/*container design*/
.control-label {
	float: left;
}

.container .inner {
	width: 480px;
	margin: 100px auto;
	border: 1px solid none;
	background: rgba(55, 55, 55, 0.4);
	padding: 10px;
	-webkit-transform: skew(30deg, 10deg);
	-moz-transform: skew(30deg, 10deg);
	-o-transform: skew(30deg, 10deg);
	transition-duration: 0.7s;
}

.container .inner:hover {
	-webkit-transform: skew(0deg, 0deg);
	-moz-transform: skew(0deg, 0deg);
	-o-transform: skew(0deg, 0deg);
	transition-duration: 0.7s;
	background: transparent;
}

.inner h1 {
	color: rgb(200, 200, 200);
	font-family: calibri, arial;
	font-weight: bold;
	text-align: center;
	font-size: 40px
}

.inner h3 {
	color: rgb(200, 200, 200);
	font-size: 18px;
	font-family: calibri;
	text-align: center;
	margin-top: -5px
}

.inner form label span {
	color: white;
}

.inner form lagend {
	color: white;
}

.inner .input {
	width: 90%;
	border: none;
	border-bottom: 1px solid white;
	color: #9f00a7;
	background: transparent;
	padding: 10px;
}

.inner .input:focus {
	box-shadow: none;
	border: 1px solid none;
}

.container hr {
	border-color: rgb(100, 100, 100);
}

.inner .button {
	border-radius: 10px 10px 10px 10px;
	color: #9f00a7;
	background: rgba(50, 50, 50, 0.4);
	padding: 2px 30px;
	border: 2px solid #9f00a7;
	font-family: calibri;
	margin: 10px auto;
	font-weight: bold;
}

.inner .button:hover {
	background: #8f00a7;
	color: white;
}
</style>
<body>

<div class="container">
    <div class="inner">
        <h1>Login</h1>
               
       <form action="validate"  method="post">
            <lagend>Login to your account</lagend><br>
            <label><span class="glyphicon glyphicon-user"></span></label>
            <input type="text" placeholder='Username' class="input" name="Email" required  /><br>
            <label><span class="glyphicon glyphicon-lock"></span></label>
            <input type="password"   placeholder="password" class="input" name="password" required /><br>
            <input type="submit" value="Sign in" name="Sign In">
        </form>
        
    </div>    
</div>
</body>
</html>