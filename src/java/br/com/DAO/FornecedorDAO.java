/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.FornecedorDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author USUARIO
 */
public class FornecedorDAO {
    
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<FornecedorDTO> lista = new ArrayList<>();
    
    public void CadastrarFornecedor(FornecedorDTO objfornecedorDTO)throws ClassNotFoundException{
        
        String sql= "INSERT INTO tb_fornecedor (nome_ou_rs, cpf_ou_cnpj, rg_ou_is, telefone_fornecedor, email_fornecedor,"
                + " cep_fornecedor,estado_fornecedor, cidade_fornecedor, rua_endereco_fornecedor, numero_endereco_fornecedor) VALUES (?,?,?,?,?,?,?,?,?,?)";
                
        conn = new ConexaoDAO().conexaoDB();
        
        try{
        
            pstm = conn.prepareStatement(sql);
            pstm.setString(1,objfornecedorDTO.getNome());
            pstm.setString(2,objfornecedorDTO.getCpf());
            pstm.setString(3,objfornecedorDTO.getRg());
            pstm.setString(4,objfornecedorDTO.getEmail());
            pstm.setString(5,objfornecedorDTO.getTelefone());
            pstm.setString(6,objfornecedorDTO.getCep());
            pstm.setString(7,objfornecedorDTO.getEstado());
            pstm.setString(8,objfornecedorDTO.getCidade());
            pstm.setString(9,objfornecedorDTO.getRua());
            pstm.setString(10,objfornecedorDTO.getNumero());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException erro){
        
            JOptionPane.showMessageDialog(null, "FuncionarioDAO" + erro);
            
        }
        
    }
    
    
    public ArrayList<FornecedorDTO> PesquisarFornecedor() throws ClassNotFoundException{
        
      conn = new ConexaoDAO().conexaoDB();
      String sql = "select * from tb_fornecedor";
      
    try  {  
        
        pstm = conn.prepareStatement(sql);
        rs = pstm.executeQuery(sql);
        
        while(rs.next()){
            FornecedorDTO objfornecedorDTO = new FornecedorDTO();
            objfornecedorDTO.setId(rs.getInt("id_fornecedor"));
            objfornecedorDTO.setNome(rs.getString("nome_ou_rs"));
            objfornecedorDTO.setCpf(rs.getString("cpf_ou_cnpj"));
            objfornecedorDTO.setRg(rs.getString("rg_ou_is"));
            objfornecedorDTO.setEmail(rs.getString("email_fornecedor"));
            objfornecedorDTO.setTelefone(rs.getString("telefone_fornecedor"));
            objfornecedorDTO.setCep(rs.getString("cep_fornecedor"));
            objfornecedorDTO.setEstado(rs.getString("estado_fornecedor"));
            objfornecedorDTO.setCidade(rs.getString("cidade_fornecedor"));
            objfornecedorDTO.setRua(rs.getString("rua_endereco_fornecedor"));
            objfornecedorDTO.setNumero(rs.getString("numero_endereco_fornecedor"));
            
            lista.add(objfornecedorDTO);
        }    
            
    } catch (SQLException e) {
            
         
    }
        
      return lista;
      
    }
    
    public void excluirFornecedor(FornecedorDTO objfornecedorDTO)  throws ClassNotFoundException{
    
    conn = new ConexaoDAO().conexaoDB();
    String sql = "delete from tb_fornecedor where id_fornecedor = ? ";
    
       try{
        
            pstm =conn.prepareStatement(sql);
            pstm.setInt(1,objfornecedorDTO.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
         
        }
    
    }
    
    public void AlterarFornecedor(FornecedorDTO objfornecedorDTO)  throws ClassNotFoundException{
    
    conn = new ConexaoDAO().conexaoDB();
    String sql = "UPDATE tb_fornecedor SET nome_ou_rs = ?, cpf_ou_cnpj = ?, rg_ou_is = ?, telefone_fornecedor = ?, email_fornecedor = ?, cep_fornecedor = ?, estado_fornecedor = ?, cidade_fornecedor = ?, rua_endereco_fornecedor = ?, numero_endereco_fornecedor = ? where id_fornecedor = ?;";
    
       try{
        
            pstm =conn.prepareStatement(sql);

            pstm.setString(1,objfornecedorDTO.getNome());
            pstm.setString(2,objfornecedorDTO.getCpf());
            pstm.setString(3,objfornecedorDTO.getRg());
            pstm.setString(4,objfornecedorDTO.getTelefone());
            pstm.setString(5,objfornecedorDTO.getEmail());
            pstm.setString(6,objfornecedorDTO.getCep());
            pstm.setString(7,objfornecedorDTO.getEstado());
            pstm.setString(8,objfornecedorDTO.getCidade());
            pstm.setString(9,objfornecedorDTO.getRua());
            pstm.setString(10,objfornecedorDTO.getNumero());
            pstm.setInt(11,objfornecedorDTO.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){

        }
    
    }
    
    
}
