<%-- 
    Document   : inserir_Funcionario
    Created on : 22/09/2021, 22:22:57
    Author     : USUARIO
--%>

<%@page import="br.com.DAO.FuncionarioDAO"%>
<%@page import="br.com.DTO.FuncionarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
  
            
            FuncionarioDTO objfuncionariodto = new FuncionarioDTO();
            
            
            objfuncionariodto.setNome(request.getParameter("nome"));
            objfuncionariodto.setCargo(request.getParameter("cargo"));
            objfuncionariodto.setCpf(request.getParameter("cpf"));
            objfuncionariodto.setRg(request.getParameter("rg"));
            objfuncionariodto.setTelefone(request.getParameter("telefone"));
            objfuncionariodto.setEmail(request.getParameter("email"));
            objfuncionariodto.setCep(request.getParameter("cep"));
            objfuncionariodto.setEstado(request.getParameter("estado"));
            objfuncionariodto.setCidade(request.getParameter("cidade"));
            objfuncionariodto.setRua(request.getParameter("rua_endereco"));
            objfuncionariodto.setNumero(request.getParameter("numero_endereco"));
            
            
            FuncionarioDAO objfuncionariodao = new FuncionarioDAO();
            objfuncionariodao.CadastrarFuncionario(objfuncionariodto);
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Funcionario/listar_Funcionario.jsp";
            response.sendRedirect(redirectURL);
     
            
        %>

    </body>
</html>
