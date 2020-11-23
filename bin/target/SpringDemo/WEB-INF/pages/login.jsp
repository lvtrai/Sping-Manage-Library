<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/create.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="page_background">
	<div class="wrap-form ">

		<form action="/loginAction" method="post">
			<h1 class="title">LOGIN</h1>
			
               <label>User name:</label>
               <input class="pl-3" type="text" name="username" placeholder="Enter username" required>
            
               <label>Password:</label>
               <input class="pl-3" type="password" name="password" placeholder="Enter password" required>
      				
      			<input type="checkbox">
      			<span>Remember me?</span><br>
				
				<div class="text-center mt-4">
            	<input class="btn btn-info px-3" type="submit" value="Login">  
            	</div>
            
            	<div class="pt-2"><a href="#">Forgot password?</a></div>
            	<div><a href="#">Register a new membership</a></div>
		</form>  
	</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>