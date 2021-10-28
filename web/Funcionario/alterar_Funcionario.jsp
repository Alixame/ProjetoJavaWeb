
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
                    objfuncionarioDTO.setNome(request.getParameter("nome"));
                    objfuncionarioDTO.setCargo(request.getParameter("cargo"));
                    objfuncionarioDTO.setCpf(request.getParameter("cpf"));
                    objfuncionarioDTO.setRg(request.getParameter("rg"));
                    objfuncionarioDTO.setTelefone(request.getParameter("telefone"));
                    objfuncionarioDTO.setEmail(request.getParameter("email"));
                    objfuncionarioDTO.setCep(request.getParameter("cep"));
                    objfuncionarioDTO.setEstado(request.getParameter("estado"));
                    objfuncionarioDTO.setCidade(request.getParameter("cidade"));
                    objfuncionarioDTO.setRua(request.getParameter("rua_endereco"));
                    objfuncionarioDTO.setNumero(request.getParameter("numero_endereco"));
                    
                    FuncionarioDAO objfuncionarioDAO = new FuncionarioDAO();
                    objfuncionarioDAO.AlterarFuncionario(objfuncionarioDTO);
                    
                } catch (Exception e) {
                    
                }
            
            
            String redirectURL = "http://localhost:8080/CrudJavaWeb/Funcionario/listar_Funcionario.jsp";
            response.sendRedirect(redirectURL);
        
        %>
        
        
        
    </body>
</html>
