
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
                    objclienteDTO.setNome(request.getParameter("nome"));
                    objclienteDTO.setCpf(request.getParameter("cpf_ou_cnpj"));
                    objclienteDTO.setRg(request.getParameter("rg_ou_is"));
                    objclienteDTO.setTelefone(request.getParameter("telefone"));
                    objclienteDTO.setEmail(request.getParameter("email"));
                    objclienteDTO.setCep(request.getParameter("cep"));
                    objclienteDTO.setEstado(request.getParameter("estado"));
                    objclienteDTO.setCidade(request.getParameter("cidade"));
                    objclienteDTO.setRua(request.getParameter("rua_endereco"));
                    objclienteDTO.setNumero(request.getParameter("numero_endereco"));
                    
                    ClienteDAO objclienteDAO = new ClienteDAO();
                    objclienteDAO.AlterarCliente(objclienteDTO);
                    
                } catch (Exception e) {
                }
            
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Cliente/listar_Cliente.jsp";
            response.sendRedirect(redirectURL);
        
        %>
        
        
        
    </body>
</html>
