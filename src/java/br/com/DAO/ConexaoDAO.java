package br.com.DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class ConexaoDAO {
    
    // metodo de conexao
    public  Connection conexaoDB() throws ClassNotFoundException{

        // variavel do tipo connection que recebe o valor null
        Connection  conn = null;
        
        // Tentar fazer algo ... se não entra em uma exeção
        try {
            
            Class.forName("com.mysql.jdbc.Driver");

            // Criação de variavel do tipo string que recebe o a ligação com o mysql 
            // passando os seguintes dados : drive de conexao , onde esta a base de dados , o nome da base de datos , usuario e senha
            String url = "jdbc:mysql://localhost:3306/banco_web?user=root&password=";
        
            // Variavel con recebe o driver de conexão que recebe a variavel url    
            conn = DriverManager.getConnection(url);
        
        } catch (SQLException e) {

        }

        //retorna a variavel
        return conn;

    } 
}