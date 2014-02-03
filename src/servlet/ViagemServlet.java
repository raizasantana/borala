package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CidadeDAO;

import model.Cidade;
import model.Roteiro;
import model.Viagem;

import sun.print.resources.serviceui;

public class ViagemServlet extends HttpServlet{
	
	
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
	
	public String getTipoViagem(String[] t){
		String r = t[0];
		for (int i = 1;i<t.length; i++) {
			r = r+", "+t[i];
		}
		return r;
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String valor = request.getParameter("valorViagem");
		String tempo = request.getParameter("tempoViagem");
		String periodo = request.getParameter("periodo");
		String[] tipos = request.getParameterValues("checkboxes");
		
		Viagem v = new Viagem();
		v.setPeriodo(periodo);
		v.setTempo(Integer.valueOf(tempo));
		v.setTipos(tipos);
		v.setValor(Float.parseFloat(valor));
		
		ArrayList<Cidade> cidades = new ArrayList<Cidade>();
		ArrayList<String> latlng  = new ArrayList<String>();
		int i = 0,qtdDias;
		qtdDias = this.getQtdDias(v.getTempo(),v.getPeriodo());
		
		String tipo = this.getTipoViagem(tipos);
		CidadeDAO cDAO = new CidadeDAO();
		try {
			cidades = cDAO.getListaCidades(v.getTipos(),v.getValor(),qtdDias);
			latlng = cDAO.getLatLng(cidades);
			
			if(!cidades.isEmpty()){
				request.setAttribute("cidades", cidades);
				request.setAttribute("latlng", latlng);
			}
			else
				request.setAttribute("cidades", null);
			
			request.setAttribute("tipoViagem", tipo);
			RequestDispatcher rd = request.getRequestDispatcher("exibe-roteiro.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		//Colocando a variavel no response
	}
	
	

}
