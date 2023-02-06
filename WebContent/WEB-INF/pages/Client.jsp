<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ page  import="java.util.List" %>
<%@ page  import="ma1.fstm.ilisi.gestionContactClient.model.bo.Client" %>
<% List<Client> clients = (List<Client>) request.getAttribute("clients"); %>   
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Client</title>
</head>
<body>
       <a  href="<%=  "./AddClient" %>" class="btn btn-secondary g-3 mt-5 ms-5">Add Client</a><table  class="table table-hover"><thead ><tr ><th >code</th><th >nom</th><th >Contacts</th></tr></thead><tbody ><% for (Client client : clients  ) { %><tr ><td ><%= client.code %></td><td ><%= client.nom %></td><td ><a  href="<%=  "./ShowContacts?client="+client.code %>">show Contacts</a></td></tr><% } %></tbody></table>         
</body>
</html>