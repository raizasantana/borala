package dao;

import java.sql.Connection;

import model.Roteiro;

public class RoteiroDAO {
	
	//Conexão com o banco de dados
	  private Connection connection;
	  private Roteiro roteiro = new Roteiro();
	  
	  public RoteiroDAO() {
	    this.connection = new ConnectionFactory().getConnection();
	  }
	  
	  
	  

}
