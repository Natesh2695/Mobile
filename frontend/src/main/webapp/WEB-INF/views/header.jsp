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
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Smafo</a>
    </div>
   
    <ul class="nav navbar-nav pull-left">
      <li><a href="#">Home</a></li>
      <li><a href="#">Sony</a></li>
      <li><a href="#">Apple</a></li>
      <li><a href="#">Samsung</a></li>
                 </li>
    </ul>
    <ul class="nav navbar-nav pull-middle">
     <nav class="navbar navbar-light bg-faded">
  <form class="form-inline float-xs-right">
  
    <input class="form-control" type="text" placeholder="Search">
    <button class="btn btn-outline-success" type="submit">Search</button>
    
  </form>
</nav>

            </ul>
           <i class="glyphicon glyphicon-align-right"></i>
<ul class="nav navbar-nav pull-right">
    <c:if test="${empty successmessage  }">
      <li><a href="Login"><span class="glyphicon glyphicon-log-in">login</span></a></li>
      <li><a href="Register"><span class="glyphicon glyphicon-user">Register</span></a></li>
      </c:if>
    </ul >
    <ul class="nav navbar-nav pull-right">
    <c:if test="${ not empty successmessage  }">
      <li><a href="Login"><span class="glyphicon glyphicon-log-out">logout</span></a></li>
      <li><a href="#"><span class="glyphicon glyphicon-cart">AddCart</a></li>
    </c:if>
    </ul>
    
    

  </div>
</nav>
</body>
</html>