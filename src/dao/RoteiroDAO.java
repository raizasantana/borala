package dao;

import java.sql.Connection;

import model.Roteiro;

public class RoteiroDAO {
	
	//Conex�o com o banco de dados
	  private Connection connection;
	  private Roteiro roteiro = new Roteiro();
	  
	  public RoteiroDAO() {
	    this.connection = new ConnectionFactory().getConnection();
	  }
	  
	  
	  

}
