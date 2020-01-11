package controller;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Clienti;
import model.Ordine;
import pensistence.DBManager;

public class IscriviOrdine extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String commento = req.getParameter("commento");
		
		Ordine ord = new Ordine();
		ord.setCommento(commento);
		
		
		DBManager.getInstance().inserisciOrdine(ord);
		
		req.setAttribute("ordineRegistrato", ord);
		
		RequestDispatcher rd = req.getRequestDispatcher("gestioneOrdini/ottieniOrdini");
		rd.forward(req, resp);
		
		//RequestDispatcher rd = req.getRequestDispatcher("");
		//rd.forward(req, resp);
		
		System.out.println(ord.getCommento());
	}
}
