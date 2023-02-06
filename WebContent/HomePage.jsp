<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Home Page</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-light">
		<div class="container px-5">
			<!-- <a class="navbar-brand" href="#!">Annonces de recrutement</a> -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li><label class="">Gestion Client Contact</label></li>
				</ul>
			</div>
		</div>
	</nav>
  <div class="card">
  <div class="card-body">
  <a class="btn btn-info" href="<%=   "./" %>">Home Page</a>
  <a class="btn btn-warning" href="<%=   "./listClient" %>">Clients</a>
  <a class="btn btn-danger"  href="<%=  "./listContact" %>">Contacts</a>	
  </div>
  </div>
</body>
</html>