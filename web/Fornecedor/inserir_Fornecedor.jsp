<%-- 
    Document   : inserir_Fornecedor
    Created on : 22/09/2021, 22:34:29
    Author     : USUARIO
--%>

<%@page import="br.com.DAO.FornecedorDAO"%>
<%@page import="br.com.DTO.FornecedorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
  
            
            FornecedorDTO objfornecedordto = new FornecedorDTO();
            
            
            objfornecedordto.setNome(request.getParameter("nome"));
            objfornecedordto.setCpf(request.getParameter("cpf"));
            objfornecedordto.setRg(request.getParameter("rg"));
            objfornecedordto.setTelefone(request.getParameter("telefone"));
            objfornecedordto.setEmail(request.getParameter("email"));
            objfornecedordto.setCep(request.getParameter("cep"));
            objfornecedordto.setEstado(request.getParameter("estado"));
            objfornecedordto.setCidade(request.getParameter("cidade"));
            objfornecedordto.setRua(request.getParameter("rua_endereco"));
            objfornecedordto.setNumero(request.getParameter("numero_endereco"));
            
            
            FornecedorDAO objfornecedordao = new FornecedorDAO();
            objfornecedordao.CadastrarFornecedor(objfornecedordto);
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Fornecedor/listar_Fornecedor.jsp";
            response.sendRedirect(redirectURL);
        
        %>
    </body>
</html>
