package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cidade;
import model.Roteiro;

import dao.RoteiroDAO;

public class RoteiroServlet extends HttpServlet{
	
	ArrayList<Cidade> cidadesSugeridas;
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 
		 //Mandar as variaveis de volta pra pagina
	
	}
	
}
