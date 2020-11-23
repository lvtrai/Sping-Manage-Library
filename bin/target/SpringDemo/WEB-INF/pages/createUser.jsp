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

<script type="text/javascript">

function fRE()
{

if(document.fRE.username.value == "")
{
alert('Please input User name');
return false;
} 

if(document.fRE.password.value == "")
{
alert('Please input Password');
return false;
} 

if(document.fRE.confpassword.value == "")
{
alert('Please input Confirm Password');
return false;
} 

if(document.fRE.newpassword.value != document.fRE.password.value)
{
alert('Incorrect Password!');
return false;
} 

}

</script>

<div class="wrap-form">
	<form:form name="fRE" method="POST" action="${pageContext.request.contextPath}/register" modelAttribute="book">
       <h2 class="title">REGISTER</h2>
       <table class="w-100 table_spacing">
            <tr >
               <td class="table_name">User Name:</td>
               <td><form:input class="pl-3" type="text" path="username"/></td>
            </tr>
            
            <tr>
               <td class="table_name">Password:</td>
               <td><form:input class="pl-3" type="text" path="password"/></td>
            </tr>
            
            <tr>
               <td class="table_name">Confirm Password:</td>
               <td><form:input class="pl-3" type="text" path="confpassword"/></td>
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