<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

<div class="wrap-table">
	<h1 class="title">BOOK LIST</h1>
		<table border="1" class="container table table-striped table-bordered">
			<tr>
          		<th>ID</th>
          		<th>Name</th>
         		<th>Author</th>
          		<th>Publisher</th>
          		<th>Price</th>
		  	<th>Edit</th>
          		<th>Delete</th>
			</tr>
			<c:forEach items="${bookList}" var="book" >
          	<tr>
            	<td>${book.id}</td>
            	<td>${book.name}</td>
            	<td>${book.author}</td>
            	<td>${book.publisher}</td>
            	<td>${book.price}</td>

			

				<td class="text-center"><a class="btn btn-success" href="update?id=${book.id}">Edit</a></td>
		
				<td class="text-center">
					<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal-${book.id}">Delete</button>
				
					<div class="modal fade" id="myModal-${book.id}" role="dialog">
    					<div class="modal-dialog">
    
      						<!-- Modal content-->
      						<div class="modal-content">
        						<div class="modal-header btn-danger">
          							<h4 class="modal-title">Confirm Delete</h4>
        						</div>
        					
        						<div class="modal-body text-left">
         			 				<p>Are you sure you want to delete this book? </p>
        						</div>
        					
        						<div class="modal-footer">
        							<a class="btn btn-danger" href="deleteBook?id=${book.id}">Accept</a>
          							<button style="background-color:#CCCCCC;" type="button" class="btn" data-dismiss="modal">Cancel</button>
        						</div>
      						</div>
      					</div>
  					</div>
				</td>
          	</tr>
			</c:forEach>
    	</table>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>