package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Cidade;

public class TestaConexao {

	public static void main(String[] args) throws SQLException {
		ConnectionFactory CF = new ConnectionFactory();
		Connection c = CF.getConnection();
		PreparedStatement stmt = c.prepareStatement("select * from cidade");
		ResultSet rs = stmt.executeQuery();
		  while(rs.next()){
			 System.out.println(rs.getString("NOME"));
			  /*c.setNome(rs.getString("NOME"));
			  c.setMediaViagem(rs.getFloat("CUSTOMEDIO"));*/
					  
		  }
		  rs.close();
		  stmt.close();
		System.out.println("Conectado!");
		c.close();

	}

}
