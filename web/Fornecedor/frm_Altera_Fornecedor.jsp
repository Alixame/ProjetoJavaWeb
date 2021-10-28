<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Fornecedor</title>

    <link rel="stylesheet"  href="../css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet"  href="../css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="../css/style.css" type="text/css"/>


</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
      <a class="navbar-brand" href="">
          <img src="../img/logo.png" width="35" height="35" class="d-inline-block align-top">
      </a>
      
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">

          <li class="nav-item active">
            <a class="nav-link" href="http://localhost:8080/CrudJavaWeb/Fornecedor/listar_Fornecedor.jsp">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
            <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
            </svg>
            Voltar</a>
          </li>
              
        </ul>

      </div>
  </div>
</nav>


    
<form action="alterar_Fornecedor.jsp" method="POST">
<div class="container">
<div class="jumbotron bg-dark text-light mt-3">
    
     <br>
        <label for="nome">ID: </label>
        <input class="form-control" type="text" id="id" name="id" value="<%=request.getParameter("id")%>" readonly>
    <br>
    
    <br>
        <label for="nome">Nome: </label>
        <input class="form-control" type="text" id="nome" name="nome" value="<%=request.getParameter("nome")%>" required autofocus>
    <br>
        <label for="cpf">CPF ou CNPJ: </label>
        <input class="form-control" type="text" id="cpf_ou_cnpj" name="cpf_ou_cnpj" value="<%=request.getParameter("cpf_ou_cnpj")%>" required>
    <br>
        <label for="rg">RG ou IS : </label>
        <input class="form-control" type="text" id="rg_ou_is" name="rg_ou_is"  value="<%=request.getParameter("rg_ou_is")%>"required>
    <br>
        <label for="telefone">Telefone: </label>
        <input class="form-control" type="text" id="telefone" name="telefone" value="<%=request.getParameter("telefone")%>" required>
    <br>
        <label for="email">Email: </label>
        <input class="form-control" type="email" id="email" name="email" value="<%=request.getParameter("email")%>" required>
    <br>
        <label for="cep">CEP: </label>
        <input class="form-control" type="text" id="cep" name="cep" value="<%=request.getParameter("cep")%>" required>
    <br>
        <label for="estado">Estado: </label>
        <input class="form-control" type="text" id="estado" name="estado" value="<%=request.getParameter("estado")%>" required>
    <br>
        <label for="cidade">Cidade: </label>
        <input class="form-control" type="text" id="cidade" name="cidade" value="<%=request.getParameter("cidade")%>" required>
    <br>
        <label for="rua_endereco">Rua de Endereço: </label>
        <input class="form-control" type="text" id="rua_endereco" name="rua_endereco" value="<%=request.getParameter("rua_endereco")%>" required>
    <br>
        <label for="numero_endereco">Numero de Endereço: </label>
        <input class="form-control" type="text" id="numero_endereco" name="numero_endereco" value="<%=request.getParameter("numero_endereco")%>" required>
    <br>
        
    <div class="text-center">
    <input class="btn btn-primary" type="submit" value="Salvar">
    </div>

</div>
</div>
</form>

</body>
</html>