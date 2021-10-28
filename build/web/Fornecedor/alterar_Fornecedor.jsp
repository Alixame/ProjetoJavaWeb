
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
                    objfornecedorDTO.setNome(request.getParameter("nome"));
                    objfornecedorDTO.setCpf(request.getParameter("cpf_ou_cnpj"));
                    objfornecedorDTO.setRg(request.getParameter("rg_ou_is"));
                    objfornecedorDTO.setTelefone(request.getParameter("telefone"));
                    objfornecedorDTO.setEmail(request.getParameter("email"));
                    objfornecedorDTO.setCep(request.getParameter("cep"));
                    objfornecedorDTO.setEstado(request.getParameter("estado"));
                    objfornecedorDTO.setCidade(request.getParameter("cidade"));
                    objfornecedorDTO.setRua(request.getParameter("rua_endereco"));
                    objfornecedorDTO.setNumero(request.getParameter("numero_endereco"));
                    
                    FornecedorDAO objfornecedorDAO = new FornecedorDAO();
                    objfornecedorDAO.AlterarFornecedor(objfornecedorDTO);
                    
                } catch (Exception e) {
                }
            
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Fornecedor/listar_Fornecedor.jsp";
            response.sendRedirect(redirectURL);
        
        %>
        
        
        
    </body>
</html>
