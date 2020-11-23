<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<div class="header">
  <h1><i>BOOK MANAGEMENT</i></h1>
</div>

<nav class="navbar navbar-expand-md sticky-top px-0">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse justify-content-between" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item px-2">
						<a class="nav-link"href="${pageContext.request.contextPath}/home">HOME</a>
					</li>
						
					<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/book/getall">BOOK LIST</a> 
					</li>
					
					<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/book/create">CREATE BOOK</a>
					</li>
				
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">USER</a>
						<div class="dropdown-menu">
							<a class="nav-link" href="#">LINK1</a> 
							<a class="nav-link" href="#">LINK2</a>
						</div>
					</li>
				
					<li class="nav-item">
						<a class="nav-link " href="#">About Me</a>
					</li>
				</ul>
				
				<div class="d-flex">
					<form class="form-inline" method="POST" action="${pageContext.request.contextPath}/book/searchBook">
						<input class="form-control mr-sm-2" type="text" name="name" placeholder="Search">
						<button class="btn btn-success" type="submit">Search</button>
					</form>
					
					
					<div class="nav-item float-right">
						<a class="nav-link " href="${pageContext.request.contextPath}/logout">LogOut</a>
					</div>
				</div>
			</div>
		</nav>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>