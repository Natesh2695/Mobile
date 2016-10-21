<%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<html>
<body>
<h2><center>Shopping cart</center></h2>
<hr>
new user <a href="login" > login here </a><br>
Register <a href="register"> here</a>
<hr>
<c:if test="${userClickedLogin}">
<jsp:include page="login.jsp"></jsp:include><br>
</c:if>
<c:if test="${userClickedRegister}">
<jsp:include page="register.jsp"></jsp:include>
</c:if>
<c:out value="${ErrorMessage}"/>
<c:out value="${SuccessMessage}"/>
</body>
</html>
