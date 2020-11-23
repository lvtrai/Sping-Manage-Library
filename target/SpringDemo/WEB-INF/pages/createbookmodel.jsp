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

	<jsp:include page="header.jsp" />

<div class="wrap-form">
	<form:form method="POST" action="${pageContext.request.contextPath}/book/createmodel" modelAttribute="book">
       <h2 class="title">CREATE BOOK</h2>
       <table class="w-100 table_spacing">
            <tr >
               <td class="table_name">Name:</td>
               <td><form:input class="pl-3" type="text" path="name"/></td>
            </tr>
            
            <tr>
               <td class="table_name">Author:</td>
               <td><form:input class="pl-3" type="text" path="author"/></td>
            </tr>
            
            <tr>
               <td class="table_name">Publisher:</td>
               <td><form:input class="pl-3" type="text" path="publisher"/></td>
            </tr>
            
             <tr>
               <td class="table_name">Price:</td>
               <td><form:input class="pl-3" type="number" path="price"/></td>
            </tr>
         </table>
         
         <div class="text-center mt-4">
         	<input class="btn btn-success" type="submit" value="Submit" />
         	<a class="btn btn-danger" href="${pageContext.request.contextPath}/home">Cancel</a>
         </div>
      </form:form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>