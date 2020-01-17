package controller;

import java.io.IOException; 
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Clienti;
import pensistence.DBManager;

public class DammiFuturiA extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Clienti> clienti = DBManager.getInstance().dammiClienti();
		
		req.setAttribute("studenti", clienti);
		
		RequestDispatcher rd = req.getRequestDispatcher("futuriA.html");
		rd.forward(req, resp);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
