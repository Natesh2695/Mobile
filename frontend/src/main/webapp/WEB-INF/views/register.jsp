<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="container" align="center">
      <div class="freshdesignweb-top"><h1><i>SMAFO</i></h1></div><div class="clr"></div>
			       
      <div  class="form">
    		<form id="contactform" action="register" > 
    			<p class="contact"><label for="name">Name</label></p> 
    			<input id="name" name="name" placeholder="First and last name" required="" tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="email" required="" tabindex="1" type="email"> 
                
                <p class="contact"><label for="username">Create a username</label></p> 
    			<input id="username" name="username" placeholder="username" required="" tabindex="1" type="text"> 
    			 
                <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="password" required="" tabindex="1"> 
                <p class="contact"><label for="repassword">Confirm your password</label></p> 
    			<input type="password" id="repassword" name="repassword" required="" tabindex="1"> 
        
               <fieldset>
                 <label>Birthday</label>
                 <input type="date" name="date" >
               </fieldset>
  
            <select class="select-style gender" name="gender">
            <option value="select">Gender</option>
            <option value="m">Male</option>
            <option value="f">Female</option>
            </select><br><br>
            
            <p class="contact"><label for="phone">Mobile phone</label></p>
                       <input id="phone" name="phone" placeholder="phone number" required="" type="phonenumber"> <br>
            <input class="button" name="submit" id="submit" tabindex="1" value="Register" type="submit"> 	 
            <input class="button" name="reset" id="reset" tabindex="1" value="Reset" type="Reset"> 	 
   </form> 
  </div>       
</div>
          
            </body>

</html>