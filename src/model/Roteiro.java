package model;

import java.sql.SQLException;
import java.util.ArrayList;


import dao.CidadeDAO;

public class Roteiro {

	private ArrayList<Cidade> cidSugeridas;
	
	
	public int getQtdDias(int t,String p){
		int qtdDias = 0;		
		if (p.equals("mes"))
			qtdDias = t * 30;
		else if (p.equals("semana"))
			qtdDias = t * 7;
		else
			qtdDias = t;	

			return qtdDias;
		
	}
	
	
	public ArrayList<Cidade> getCidades(Viagem v){
		ArrayList<Cidade> cidades = new ArrayList<Cidade>();
		int i = 0,qtdDias;
		qtdDias = this.getQtdDias(v.getTempo(),v.getPeriodo());
		CidadeDAO cDAO = new CidadeDAO();
		try {
			cidades = cDAO.getListaCidades(v.getTipos(),v.getValor(),qtdDias);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return cidades;
	}
	
	
	
	
	
	
	
	/*Getters & Setters*/
	public ArrayList<Cidade> getCidSugeridas() {
		return cidSugeridas;
	}
	public void setCidSugeridas(ArrayList<Cidade> cidSugeridas) {
		this.cidSugeridas = cidSugeridas;
	}
	
	
}
