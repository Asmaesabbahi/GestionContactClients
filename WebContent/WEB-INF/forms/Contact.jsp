<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page  import="ma1.fstm.ilisi.gestionContactClient.model.bo.Client" %>
<%@ page  import="java.util.List" %>
<% List<Client> clients = (List<Client>) request.getAttribute("clients"); %>   
	
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
       <form  method="POST" action="./AddContact" class="g-3 mt-5 ms-5">
       <div  class="form-group row">
       <label  class="col-sm-2 col-form-label" for="code">code</label>
       <div  class="col-sm-7">
       <select  name="code" class="form-select"><% for (Client client : clients  ) { %>
       <option  value="<%= client.code %>"><%= client.nom %></option><% } %>
       </select>
       </div>
       </div>
       <div  class="form-group row" class="form-control">
       <label  class="col-sm-2 col-form-label" for="adresse">adresse</label>
       <div  class="col-sm-7">
       <input  name="adresse" placeholder="Entrer votre adresse" type="text"/>
       </div>
       </div>
       <div  class="form-group row" class="form-control">
       <label  class="col-sm-2 col-form-label" for="tel">tel</label>
       <div  class="col-sm-7">
       <input  name="tel" placeholder="Entrer votre tel" type="text"/>
       </div>
       </div>
       <input type="submit" class="btn btn-primary" value="add contact" />
       </form>         
</body>
</html>