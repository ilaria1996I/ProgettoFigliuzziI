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
		String scelta1 = req.getParameter("scelta1");
		String scelta2 = req.getParameter("scelta2");
		String scelta3 = req.getParameter("scelta3");
		String data2 = req.getParameter("data");
		
		Ordine ord = new Ordine();
		ord.setCommento(commento);
		ord.setVoglioFareUnOrdineAl(scelta1);
		ord.setVogliostringere(scelta2);
		ord.setVoglioCheMiCreiIlModello(scelta3);
		ord.setData(data2);
		
		
		DBManager.getInstance().inserisciOrdine(ord);
		
		req.setAttribute("ordineRegistrato", ord);
		
		RequestDispatcher rd = req.getRequestDispatcher("gestioneOrdini/ottieniOrdini");
		rd.forward(req, resp);
		
		//RequestDispatcher rd = req.getRequestDispatcher("");
		//rd.forward(req, resp);
		
		System.out.println(ord.getCommento());
	}
}
