package br.com.DAO;

import br.com.DTO.FuncionarioDTO;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class FuncionarioDAO {
    
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<FuncionarioDTO> lista = new ArrayList<>();
    
    
    public void CadastrarFuncionario(FuncionarioDTO objfuncionariodto)throws ClassNotFoundException {
        
        String sql= "INSERT INTO tb_funcionario (nome_funcionario,cargo_funcionario,cpf_funcionario,rg_funcionario,telefone_funcionario,"
                + "email_funcionario,cep_funcionario,estado_funcionario,cidade_funcionario,rua_endereco_funcionario,numero_endereco_funcionario) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        
        conn = new ConexaoDAO().conexaoDB();
        
        try{
        
            pstm =conn.prepareStatement(sql);
            pstm.setString(1,objfuncionariodto.getNome());
            pstm.setString(2,objfuncionariodto.getCargo());
            pstm.setString(3,objfuncionariodto.getCpf());
            pstm.setString(4,objfuncionariodto.getRg());
            pstm.setString(5,objfuncionariodto.getTelefone());
            pstm.setString(6,objfuncionariodto.getEmail());
            pstm.setString(7,objfuncionariodto.getCep());
            pstm.setString(8,objfuncionariodto.getCidade());
            pstm.setString(9,objfuncionariodto.getEstado());
            pstm.setString(10,objfuncionariodto.getRua());
            pstm.setString(11,objfuncionariodto.getNumero());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException erro){
        
            JOptionPane.showMessageDialog(null, "FuncionarioDAO" + erro);
            
        }

    }
    
    
    public ArrayList<FuncionarioDTO> PesquisarFuncionario() throws ClassNotFoundException{
        
      conn = new ConexaoDAO().conexaoDB();
      String sql = "select * from tb_funcionario";
      
    try  {  
        
        pstm = conn.prepareStatement(sql);
        rs = pstm.executeQuery(sql);
        
        while(rs.next()){
            FuncionarioDTO objfuncionarioDTO = new FuncionarioDTO();
            objfuncionarioDTO.setId(rs.getInt("id_funcionario"));
            objfuncionarioDTO.setNome(rs.getString("nome_funcionario"));
            objfuncionarioDTO.setCargo(rs.getString("cargo_funcionario"));
            objfuncionarioDTO.setCpf(rs.getString("cpf_funcionario"));
            objfuncionarioDTO.setRg(rs.getString("rg_funcionario"));
            objfuncionarioDTO.setTelefone(rs.getString("telefone_funcionario"));
            objfuncionarioDTO.setEmail(rs.getString("email_funcionario")); 
            objfuncionarioDTO.setCep(rs.getString("cep_funcionario"));
            objfuncionarioDTO.setEstado(rs.getString("estado_funcionario"));
            objfuncionarioDTO.setCidade(rs.getString("cidade_funcionario"));
            objfuncionarioDTO.setRua(rs.getString("rua_endereco_funcionario"));
            objfuncionarioDTO.setNumero(rs.getString("numero_endereco_funcionario"));
            
            lista.add(objfuncionarioDTO);
        }    
            
    } catch (SQLException e) {
            
            }
        
      return lista;
      
    } 
    
    public void excluirFuncionario(FuncionarioDTO objfuncionarioDTO)  throws ClassNotFoundException{
    
    conn = new ConexaoDAO().conexaoDB();
    String sql = "delete from tb_funcionario where id_funcionario = ? ";
    
       try{
        
            pstm =conn.prepareStatement(sql);
            pstm.setInt(1,objfuncionarioDTO.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
         
        }
    
    }
    
    public void AlterarFuncionario(FuncionarioDTO objfuncionarioDTO)  throws ClassNotFoundException{
    
    conn = new ConexaoDAO().conexaoDB();
    String sql = "UPDATE tb_funcionario SET nome_funcionario = ?,cargo_funcionario = ?,cpf_funcionario = ?,rg_funcionario = ?,"
            + "telefone_funcionario = ?,email_funcionario = ?,cep_funcionario = ?,estado_funcionario = ?,cidade_funcionario = ?,"
            + "rua_endereco_funcionario = ?,numero_endereco_funcionario = ? WHERE id_funcionario = ?";
       
    try{
        
            pstm = conn.prepareStatement(sql);

            pstm.setString(1,objfuncionarioDTO.getNome());
            pstm.setString(2,objfuncionarioDTO.getCargo());
            pstm.setString(3,objfuncionarioDTO.getCpf());
            pstm.setString(4,objfuncionarioDTO.getRg());
            pstm.setString(5,objfuncionarioDTO.getTelefone());
            pstm.setString(6,objfuncionarioDTO.getEmail());
            pstm.setString(7,objfuncionarioDTO.getCep());
            pstm.setString(8,objfuncionarioDTO.getEstado());
            pstm.setString(9,objfuncionarioDTO.getCidade());
            pstm.setString(10,objfuncionarioDTO.getRua());
            pstm.setString(11,objfuncionarioDTO.getNumero());
            pstm.setInt(12,objfuncionarioDTO.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){

        }
    
    }
    
    
    
    
}
