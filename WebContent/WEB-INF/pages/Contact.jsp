<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page  import="java.util.List" %>
<%@ page  import="ma1.fstm.ilisi.gestionContactClient.model.bo.Contact" %>
<% List<Contact> contacts = (List<Contact>) request.getAttribute("contacts"); %>   
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Contact</title>
</head>
<body>
       <a  href="<%=  "./AddContact" %>" class="btn btn-secondary g-3 mt-5 ms-5">Add Contact</a><table  class="table table-hover"><thead ><tr ><th >num</th><th >adresse</th><th >tel</th></tr></thead><tbody ><% for (Contact contact : contacts  ) { %><tr ><td ><%= contact.num %></td><td ><%= contact.adresse %></td><td ><%= contact.tel %></td></tr><% } %></tbody></table>         
</body>
</html>