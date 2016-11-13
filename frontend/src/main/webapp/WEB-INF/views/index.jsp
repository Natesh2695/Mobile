<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="carousel.jsp"></jsp:include> 
<jsp:include page="thumbnail.jsp"></jsp:include>    
<hr>
<c:if test="${Login}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>
<c:if test="${Register}">
<jsp:include page="register.jsp"></jsp:include>
</c:if>

<c:out value="${successmessage}"></c:out>
<c:out value="${errormessage}"></c:out>
<c:out value="${Reg}"></c:out>

<jsp:include page="footer.jsp"></jsp:include>     
</body>
</html>
