<%@ page contentType="text/html;charset=UTF-8" language="java" %>   
	
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
       <form  method="POST" action="./AddClient" class="row g-3 mt-5 ms-5">
       <div  class="form-group row" class="form-control">
       <label  class="col-sm-2 col-form-label" for="nom">nom</label>
       <div  class="col-sm-7">
       <input  name="nom" placeholder="Entrer votre nom" type="text"/>
       </div>
        <div class="col-sm-7">
		   	     <input type="submit" class="btn btn-primary mb-3" value="add client" />
		</div>
	   </form>        
       
</form>         
</body>
</html>