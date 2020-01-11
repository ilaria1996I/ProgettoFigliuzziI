package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Utente;
import model.UtenteNor;
import pensistence.DBManager;

public class LoginUtente extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object utenteNor = request.getSession().getAttribute("utenteNor");
		String isLogout = request.getParameter("logout");
		if (isLogout != null && isLogout.equals("true")) {
			request.getSession().removeAttribute("utenteNor");
			RequestDispatcher rd = request.getRequestDispatcher("");
			rd.forward(request, response);
		}else {
			if (utenteNor == null) {
				RequestDispatcher rd = request.getRequestDispatcher("loginUtente.html");
				rd.forward(request, response);
			}
		}
	}
	
	//il login è già fatto?
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usernameN = request.getParameter("username");
		String passwordN = request.getParameter("password");
		System.out.println(usernameN + passwordN);
		UtenteNor utenteNor = DBManager.getInstance().loginNor(usernameN, passwordN);
		if (utenteNor != null) {
			request.getSession().setAttribute("utenteNor", utenteNor);
			RequestDispatcher rd = request.getRequestDispatcher("");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("loginError.html");
			rd.forward(request, response);
		}
	}
}