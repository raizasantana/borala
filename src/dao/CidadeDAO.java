package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import sun.org.mozilla.javascript.internal.regexp.SubString;

import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Collections;

import model.Cidade;

public class CidadeDAO {

	//Conexão com o banco de dados
	  private Connection conection = null;

	  
	  public CidadeDAO() {
		  ConnectionFactory CF = new ConnectionFactory();
		  this.conection = CF.getConnection();
		  }
	  
	  public ArrayList<Cidade> getListaCidades(String[] tipos, float valor, int dias) throws SQLException{
		  ArrayList<Cidade> resultado = new ArrayList<Cidade>();
		  ArrayList<String> tiposViagem =  new ArrayList<String>();
		  
		  
		  String sql = "SELECT C.*, (C.PRECO_DIARIA * ?) as cc FROM CIDADE C WHERE (C.PRECO_DIARIA * ?) <= ?";
		  int i = 0;
		 while(i < tipos.length){
			 if(tipos[i].equals("Sol e Praia"))
				 tiposViagem.add("SOL_PRAIA");
			 else
				 tiposViagem.add(tipos[i].toUpperCase());
			 
			 if(i == 0)
				 sql = sql+" ORDER BY "+tiposViagem.get(i)+" DESC";
			 else
				  sql = sql+", "+tiposViagem.get(i)+" DESC";
			  	  
			  i++;
		  }
		 
		  PreparedStatement stmt = conection.prepareStatement(sql);
		  stmt.setInt(1, dias);
		  stmt.setInt(2, dias);
		  stmt.setFloat(3, valor);
		  
		  int k = 0,ind=4;
		  /*while(k < tipos.length){
			  if(tipos[k].equals("Sol e Praia"))
				  tipos[k] = "SOL_PRAIA";
			  String t = tipos[k];
			  stmt.setString(ind,"RURAL");
			  System.out.println(">>>>"+sql+"   >>> "+ind+">>> "+t.toUpperCase());
			   k++;
			  ind++;
		  }*/
		  
		  ResultSet rs = stmt.executeQuery();
		  
		  while(rs.next()){
			  
			Cidade c = new Cidade(); 
			int qtdTipos = 0;
			for(int t = 0; t < tiposViagem.size(); t++){
				switch (tiposViagem.get(t)) {
				case "AVENTURA":
					if(Float.parseFloat(rs.getString("AVENTURA")) > 0){
						c.setNvlAventura(Float.parseFloat(rs.getString("AVENTURA")));
						qtdTipos++;
					}
				continue;
				case "CULTURA":
					if(Float.parseFloat(rs.getString("CULTURA")) > 0){
						c.setNvlCultural(Float.parseFloat(rs.getString("CULTURA")));
						qtdTipos++;
					}
				continue;
				case "ESPORTE":
					if(Float.parseFloat(rs.getString("ESPORTE")) > 0){
						c.setNvlEsporte(Float.parseFloat(rs.getString("ESPORTE")));
						qtdTipos++;
					}
				continue;
				case "NAUTICO":
					if(Float.parseFloat(rs.getString("NAUTICO")) > 0){
						c.setNvlNautico(Float.parseFloat(rs.getString("NAUTICO")));
						qtdTipos++;
					}
				continue;
				case "PESCA":
					if(Float.parseFloat(rs.getString("PESCA")) > 0){
					  c.setNvlPesca(Float.parseFloat(rs.getString("PESCA")));
					  qtdTipos++;
					}
				continue;
				case "SOL_PRAIA":
				  if(Float.parseFloat(rs.getString("SOL_PRAIA")) > 0){
					  c.setNvlSolPraia(Float.parseFloat(rs.getString("SOL_PRAIA")));
					  qtdTipos++;
				  }
				 continue;
				case "RURAL":
				  if(Float.parseFloat(rs.getString("RURAL")) > 0){
					  c.setNvlRural(Float.parseFloat(rs.getString("RURAL")));
					  qtdTipos++;
				  }
				 continue;
				}
			}
			if (qtdTipos == tiposViagem.size()) {
				c.setNome(rs.getString("NOME"));
				c.setMediaViagem(rs.getFloat("cc"));
				c.setLatlng(rs.getString("LATLNG"));
				c.setAtividades(this.getAtvOrdenadas(rs.getString("ATIVIDADES")));
				resultado.add(c);
			} 
		  }
		  
		  rs.close();
		  stmt.close();
		  conection.close();
		  
		  return resultado;
	  }
	  
	public String getAtvOrdenadas(String atvd) {
		String[] atv = atvd.split(", ");
		ArrayList<String> listaAtv = new ArrayList<String>();

		for (String atvAux : atv)
			listaAtv.add(atvAux);
		java.util.Collections.sort(listaAtv);
		String ord = listaAtv.toString();
		
		return ord.substring(1,(ord.length()-1));		
	
	}
	
	public ArrayList<String> getLatLng(ArrayList<Cidade> cidades){
		ArrayList<String> listalatlng = new ArrayList<String>();
		
		for (Cidade c : cidades) 
			listalatlng.add(c.getLatlng());
		
		return listalatlng;
	}

	
	
	  

}

