<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Home.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Lista de clientes</title>
</head>
<body>
<header>
    <div class="container">
        <h1 class="logo">TRAVEL</h1>
        <nav>
            <a href="Index.html">Home</a>
            <a href="">Promoções</a>
            <a href="">Contato</a>
            <a href="">Cadastro</a>
        </nav>
    </div>
   </header>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Index.html">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="CreateAndFind">Lista de Clientes</a>
        </li>
      </ul>
      
      <form action="CreateAndFind" method="GET" class="d-flex">
        <input name="pesquisa" class="form-control me-2" type="search" placeholder="Digite o Nome ou CPF" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Buscar</button>
      </form>
    </div>
  </div>
</nav>
<br>
<div class="container">
	<div class="row">
		<div class="cold-md-7">
			<hr>
			<h3>Lista de clientes cadastrados</h3>
			<hr>
			<table class="table">
			<thead>
			<tr>
				<th>#</th>
				<th>Email</th>
				<th>CPF</th>
				<th>Nascimento</th>
				<th>Senha</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${clientes}" var="cliente">
				<tr>
					<td>${cliente.id_cliente}</td>
					<td>${cliente.email}</td>	
					<td>${cliente.cpf}</td>	
					<td>${cliente.data_nascimento}</td>	
					<td>${cliente.senha}</td>	
					<td>
						<a class="buttons" href="ClienteDestroy?Id_cliente=${cliente.id_cliente}">deletar</a>
						<a href="ClienteUpdate?Id_cliente=${cliente.id_cliente}">atualizar</a>
					</td>
					</tr>
					</c:forEach>
			</tbody>
			
			
			
			
			
			</tr>
			</thead>
			</table>
			<h5><a href="Index.html">Voltar para o Cadastro de Clientes</a></h5>

			<br>
		</div>
		
	</div>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>