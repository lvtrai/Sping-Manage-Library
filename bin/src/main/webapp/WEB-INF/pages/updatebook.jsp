<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/create.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="page_background">
	
<div class="wrap-form">
	<form:form method="POST" action="${pageContext.request.contextPath}/book/update" modelAttribute="book">
	<h2 class="title">EDIT BOOK</h2>
         <table class="w-100 table_spacing">
         	<tr>
               <td class="table_name">Id:</td>
               <td><form:input class="pl-3" type="number" path="id"/></td>
            </tr>
            <tr>
               <td class="table_name">Name:</td>
               <td><form:input class="pl-3" type="text" path="name"/></td>
            </tr>
            <tr>
               <td class="table_name">Author:</td>
               <td><form:input class="pl-3" type="text" path="author"/></td>
            </tr>
            <tr>
               <td class="table_name">Publisher:</td>
               <td><form:input class="pl-3" type="text" path="publisher" /></td>
            </tr>
             <tr>
               <td class="table_name">Price:</td>
               <td><form:input class="pl-3" type="number" path="price"/></td>
            </tr>
     
         </table>
         <div class="text-center mt-4">
         	<input class="btn btn-success" type="submit" value="Save" />
         	<a class="btn btn-danger" href="${pageContext.request.contextPath}/book/getall">Cancel</a>
         </div>
      </form:form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>      

</body>
</html>