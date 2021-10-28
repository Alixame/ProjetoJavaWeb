<%-- 
    Document   : inserir_Cliente
    Created on : 22/09/2021, 21:52:55
    Author     : USUARIO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.FuncionarioDAO"%>
<%@page import="br.com.DTO.FuncionarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listar Funcionario</title>

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
                      <a class="nav-link" href="http://localhost:8080/CrudJavaWeb/Funcionario/frm_Funcionario.html">
                      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                      <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                      </svg>
                      Voltar</a>
                    </li>

                  </ul>

                </div>
            </div>
        </nav>
    
    <div style="margin: 1rem;">
        <table class="table table-center">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>Cargo</th>
                        <th>CPF</th>
                        <th>RG</th>
                        <th>Telefone</th>
                        <th>Email</th>
                        <th>Cep</th>
                        <th>Estado</th>
                        <th>Cidade</th>
                        <th>Logradoro</th>
                        <th>N° Logradoro</th>
                        <th>Alterar</th>
                        <th>Excluir</th>
                    </tr>
		</thead>
            <tbody>
        <%
            
            FuncionarioDAO objfuncionarioDAO = new FuncionarioDAO();
            ArrayList<FuncionarioDTO> lista = objfuncionarioDAO.PesquisarFuncionario();
            
            for(int num = 0; num < lista.size(); num++){     

            %>
            <tr>
                <th><%out.print(lista.get(num).getId());%></th>
                <th><%out.print(lista.get(num).getNome());%></th>
                <th><%out.print(lista.get(num).getCargo());%></th>
                <th><%out.print(lista.get(num).getCpf());%></th>
                <th><%out.print(lista.get(num).getRg());%></th>
                <th><%out.print(lista.get(num).getEmail());%></th>
                <th><%out.print(lista.get(num).getTelefone());%></th>
                <th><%out.print(lista.get(num).getCep());%></th>
                <th><%out.print(lista.get(num).getEstado());%></th>
                <th><%out.print(lista.get(num).getCidade());%></th>
                <th><%out.print(lista.get(num).getRua());%></th>
                <th><%out.print(lista.get(num).getNumero());%></th>
                <br>
                <td><center><a href='http://localhost:8080/CrudJavaWeb/Funcionario/frm_Altera_Funcionario.jsp?id=<% out.print(lista.get(num).getId());%>&nome=<% out.print(lista.get(num).getNome());%>&cargo=<% out.print(lista.get(num).getCargo());%>&cpf=<% out.print(lista.get(num).getCpf());%>&rg=<% out.print(lista.get(num).getRg());%>&email=<% out.print(lista.get(num).getEmail());%>&telefone=<% out.print(lista.get(num).getTelefone());%>&cep=<% out.print(lista.get(num).getCep());%>&estado=<% out.print(lista.get(num).getEstado());%>&cidade=<% out.print(lista.get(num).getCidade());%>&rua_endereco=<% out.print(lista.get(num).getRua());%>&numero_endereco=<% out.print(lista.get(num).getNumero());%>'><img src='../img/alterar.png' width='30'></a></center></td>
                <br>
                <td><center><a href='http://localhost:8080/CrudJavaWeb/Funcionario/excluir_Funcionario.jsp?id=<% out.print(lista.get(num).getId());%>'><img src='../img/excluir.png' width='30'></a></center></td>
                <br>
                </tr><%
            }    
        %>
            </tbody>
        </table>
    </div>
        
    </body>
</html>
