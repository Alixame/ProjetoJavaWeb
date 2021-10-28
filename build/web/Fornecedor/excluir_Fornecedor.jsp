<%-- 
    Document   : excluir_Fornecedor
    Created on : 06/10/2021, 21:47:01
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
        
            try {
                    FornecedorDTO objfornecedorDTO = new FornecedorDTO();
                    objfornecedorDTO.setId(Integer.parseInt(request.getParameter("id")));
                    
                    FornecedorDAO objfornecedorDAO = new FornecedorDAO();
                    objfornecedorDAO.excluirFornecedor(objfornecedorDTO);
                    
                } catch (Exception e) {
                }
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Fornecedor/listar_Fornecedor.jsp";
            response.sendRedirect(redirectURL);
        
        %>
        
        
        
    </body>
</html>
