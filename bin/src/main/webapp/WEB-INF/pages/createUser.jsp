<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Book</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/create.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="page_background">

<div class="wrap-form">
	<form:form method="POST" action="${pageContext.request.contextPath}/register" modelAttribute="user">
       <h2 class="title">REGISTER</h2>
       <table class="w-100 table_spacing">
            <tr >
               <td class="table_name">User Name:</td>
               <td><form:input class="pl-3" type="text" path="username"/></td>
            </tr>
            
            <tr>
               <td class="table_name">Password:</td>
               <td><form:input class="pl-3" type="password" path="password"/></td>
            </tr>
            
            <tr >
               <td class="table_name">Role:</td>
               <td><form:input class="pl-3" type="text" path="role" /></td>
            </tr>
      
         </table>
         
         <div class="text-center mt-4">
         	<input class="btn btn-success" type="submit" value="Submit" />
         </div>
      </form:form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>