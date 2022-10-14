<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Home.css">
<meta charset="ISO-8859-1">
<title>Atualizar Cliente</title>
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
        </li>
      </ul>
      
      <form action="CreateAndFind" method="GET" class="d-flex">
        <input name="pesquisa" class="form-control me-2" type="search" placeholder="Digite o Nome ou CPF" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Buscar</button>
      </form>
    </div>
  </div>
</nav>
<div class="container">
	<div class="row">
		<div class="cold-md-7">
			<hr>
			<h3>Atualizar dados do Cliente</h3>
			<hr>
			<form action="ClienteUpdate" method="POST">
				<input value="${cliente.id_cliente}name="id_cliente" type="number" style="visibility:hidden">
				<div class="form-floating mb-3">
						<input value="${cliente.cpf}" name="cpf" maxlength="11" type="text" class="form-control" id="floatingInput1"> 
						<label>CPF</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.email}" name="email" maxlength="40" type="text" class="form-control"> 
						<label>Email</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.senha}" name="senha" type="password" class="form-control">
						<label>senha</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.data_nascimento}" name="data_nascimento" type="date" class="form-control">
						<label>Data nascimento</label>
					</div>
					
					<button class="btn btn-success" type="submit">Atualizar dados do
						Cliente</button>
					<button class="btn btn-secondary" type="reset">Limpar
						Formulário</button>
			</form>
			<br>

			<br>
			<h5><a href="CreateAndFind">Lista de Clientes</a></h5>
		</div>
		
	</div>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>