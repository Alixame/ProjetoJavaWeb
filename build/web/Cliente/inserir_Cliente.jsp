<%-- 
    Document   : inserir_Cliente
    Created on : 22/09/2021, 21:52:55
    Author     : USUARIO
--%>

<%@page import="br.com.DAO.ClienteDAO"%>
<%@page import="br.com.DTO.ClienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        
  
            
            ClienteDTO objclientedto = new ClienteDTO();
            
            
            objclientedto.setNome(request.getParameter("nome"));
            objclientedto.setCpf(request.getParameter("cpf_ou_cnpj"));
            objclientedto.setRg(request.getParameter("rg_ou_is"));
            objclientedto.setTelefone(request.getParameter("telefone"));
            objclientedto.setEmail(request.getParameter("email"));
            objclientedto.setCep(request.getParameter("cep"));
            objclientedto.setEstado(request.getParameter("estado"));
            objclientedto.setCidade(request.getParameter("cidade"));
            objclientedto.setRua(request.getParameter("rua_endereco"));
            objclientedto.setNumero(request.getParameter("numero_endereco"));
            
            
            ClienteDAO objclientedao = new ClienteDAO();
            objclientedao.CadastrarCliente(objclientedto);
            
     
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Cliente/listar_Cliente.jsp";
            response.sendRedirect(redirectURL);
        %>
        
        
    </body>
</html>
