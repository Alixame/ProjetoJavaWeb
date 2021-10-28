/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.ClienteDTO;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class ClienteDAO {
    
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ClienteDTO> lista = new ArrayList<>();
    
    public void CadastrarCliente(ClienteDTO objclienteDTO)throws ClassNotFoundException {
        
        String sql= "insert into tb_cliente (nome_ou_rs, cpf_ou_cnpj, rg_ou_is, telefone_cliente, email_cliente, "
                + "cep_cliente, estado_cliente, cidade_cliente, rua_endereco_cliente, numero_endereco_cliente) values (?,?,?,?,?,?,?,?,?,?)";
    
        conn = new ConexaoDAO().conexaoDB();
        
        try{
        
            pstm = conn.prepareStatement(sql);
            pstm.setString(1,objclienteDTO.getNome());
            pstm.setString(2,objclienteDTO.getCpf());
            pstm.setString(3,objclienteDTO.getRg());
            pstm.setString(4,objclienteDTO.getTelefone());
            pstm.setString(5,objclienteDTO.getEmail());
            pstm.setString(6,objclienteDTO.getCep());
            pstm.setString(7,objclienteDTO.getEstado());
            pstm.setString(8,objclienteDTO.getCidade());
            pstm.setString(9,objclienteDTO.getRua());
            pstm.setString(10,objclienteDTO.getNumero());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
        
            JOptionPane.showMessageDialog(null, "clienteDTO" + e);
            
        }
        
    }
   
 
    public ArrayList<ClienteDTO> PesquisarCliente() throws ClassNotFoundException{
        
      conn = new ConexaoDAO().conexaoDB();
      String sql = "select * from tb_cliente";
      
      try  {  
        
        pstm = conn.prepareStatement(sql);
        rs = pstm.executeQuery(sql);
        
        while(rs.next()){
            ClienteDTO objclienteDTO = new ClienteDTO();
            objclienteDTO.setId(rs.getInt("id_cliente"));
            objclienteDTO.setNome(rs.getString("nome_ou_rs"));
            objclienteDTO.setCpf(rs.getString("cpf_ou_cnpj"));
            objclienteDTO.setRg(rs.getString("rg_ou_is"));
            objclienteDTO.setTelefone(rs.getString("telefone_cliente"));
            objclienteDTO.setEmail(rs.getString("email_cliente")); 
            objclienteDTO.setCep(rs.getString("cep_cliente"));
            objclienteDTO.setEstado(rs.getString("estado_cliente"));
            objclienteDTO.setCidade(rs.getString("cidade_cliente"));
            objclienteDTO.setRua(rs.getString("rua_endereco_cliente"));
            objclienteDTO.setNumero(rs.getString("numero_endereco_cliente"));
            
            lista.add(objclienteDTO);
                         }    
            
            } catch (SQLException e) {
            
            }
        
      return lista;
      
    }
    
    public void excluirCliente(ClienteDTO objclienteDTO)  throws ClassNotFoundException{
    
    conn = new ConexaoDAO().conexaoDB();
    String sql = "delete from tb_cliente where id_cliente = ? ";
    
       try{
        
            pstm =conn.prepareStatement(sql);
            pstm.setInt(1,objclienteDTO.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
         
        }
    
    }
    
    
    public void AlterarCliente(ClienteDTO objclienteDTO)  throws ClassNotFoundException{
    
    conn = new ConexaoDAO().conexaoDB();
    String sql = "UPDATE tb_cliente SET nome_ou_rs = ?, cpf_ou_cnpj = ?, rg_ou_is = ?, telefone_cliente = ?, email_cliente = ?, cep_cliente = ?, estado_cliente = ?, cidade_cliente = ?, rua_endereco_cliente = ?, numero_endereco_cliente = ? where id_cliente = ?;";
    
       try{
        
            pstm =conn.prepareStatement(sql);

            pstm.setString(1,objclienteDTO.getNome());
            pstm.setString(2,objclienteDTO.getCpf());
            pstm.setString(3,objclienteDTO.getRg());
            pstm.setString(4,objclienteDTO.getTelefone());
            pstm.setString(5,objclienteDTO.getEmail());
            pstm.setString(6,objclienteDTO.getCep());
            pstm.setString(7,objclienteDTO.getEstado());
            pstm.setString(8,objclienteDTO.getCidade());
            pstm.setString(9,objclienteDTO.getRua());
            pstm.setString(10,objclienteDTO.getNumero());
            pstm.setInt(11,objclienteDTO.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){

        }
    
    }
    
    
}
