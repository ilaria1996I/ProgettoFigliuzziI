package controller;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Clienti;
import pensistence.DBManager;

public class IscriviCliente extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		Clienti clie = new Clienti();
		clie.setNome(nome);
		clie.setCognome(cognome);
		clie.setEmail(email);
		clie.setPassword(password);
		
			DBManager.getInstance().inserisciCliente(clie);
		
		req.setAttribute("clienteRegistrato", clie);
		
		RequestDispatcher rd = req.getRequestDispatcher("ottieniClienti");
		rd.forward(req, resp);
		}
}
