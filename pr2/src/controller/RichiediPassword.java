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

public class RichiediPassword extends HttpServlet{
	public static String emailRichiesta;
	public static String password;
	DBManager DBManager = new DBManager();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("email", emailRichiesta);
		req.setAttribute("password", password);
		
//		RequestDispatcher rd = req.getRequestDispatcher("ottieniStudenti.jsp");
//		rd.forward(req, resp);
			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		emailRichiesta = req.getParameter("email_addy");
		//deve controllare se email richiesta ce 
		password = DBManager.passwordRicerca(emailRichiesta);
		doGet(req, resp);
		req.setAttribute("emailRichiesta", emailRichiesta);
		req.setAttribute("password", password);
		
		RequestDispatcher rd = req.getRequestDispatcher("gestioneClienti/ottieniPassword.jsp");
		rd.forward(req, resp);
		}
}
