
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
        
            try {
                    ClienteDTO objclienteDTO = new ClienteDTO();
                    objclienteDTO.setId(Integer.parseInt(request.getParameter("id")));
                    
                    ClienteDAO objclienteDAO = new ClienteDAO();
                    objclienteDAO.excluirCliente(objclienteDTO);
                    
                } catch (Exception e) {
                }
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Cliente/listar_Cliente.jsp";
            response.sendRedirect(redirectURL);
        
        %>
        
        
        
    </body>
</html>
