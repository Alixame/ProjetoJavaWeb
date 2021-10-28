<%-- 
    Document   : excluir_Fornecedor
    Created on : 06/10/2021, 21:47:01
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
        
            try {
                    FuncionarioDTO objfuncionarioDTO = new FuncionarioDTO();
                    objfuncionarioDTO.setId(Integer.parseInt(request.getParameter("id")));
                    
                    FuncionarioDAO objfuncionarioDAO = new FuncionarioDAO();
                    objfuncionarioDAO.excluirFuncionario(objfuncionarioDTO);
                    
                } catch (Exception e) {
                }
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Funcionario/listar_Funcionario.jsp";
            response.sendRedirect(redirectURL);
        
        %>
        
        
        
    </body>
</html>
