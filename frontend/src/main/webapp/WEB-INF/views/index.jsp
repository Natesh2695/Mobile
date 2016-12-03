<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="carousel.jsp"></jsp:include> 
  
<hr>
${SuccessMessage}
	${ErrorMessage}
	<c:if test="${userClickedLogin}">

		<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${userClickedRegister}">
		<jsp:include page="register.jsp"></jsp:include>
	</c:if>
	<c:if test="${userClickedAboutUs}">

		<jsp:include page="about us.jsp"></jsp:include>
	</c:if>
<jsp:include page="footer.jsp"></jsp:include>     
</body>
</html>

