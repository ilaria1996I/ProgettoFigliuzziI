package controller;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Clienti;
import pensistence.DBManager;

public class IscriviStudente extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		Clienti stud = new Clienti();
		stud.setNome(nome);
		stud.setCognome(cognome);
		stud.setEmail(email);
		stud.setPassword(password);
		
			DBManager.getInstance().inserisciStudente(stud);
		
		req.setAttribute("studenteRegistrato", stud);
		
		RequestDispatcher rd = req.getRequestDispatcher("ottieniStudenti");
		rd.forward(req, resp);
		}
}
