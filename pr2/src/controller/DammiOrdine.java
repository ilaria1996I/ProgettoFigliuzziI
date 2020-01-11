package controller;
import java.io.IOException; 
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Clienti;
import model.Ordine;
import pensistence.DBManager;

public class DammiOrdine extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Ordine> ordini = DBManager.getInstance().dammiOrdine();
		
		req.setAttribute("ordini", ordini);
		
		RequestDispatcher rd = req.getRequestDispatcher("ottieniOrdini.jsp");
		rd.forward(req, resp);
		System.out.println("dammi ordini");
		
}
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doGet(req, resp);
	System.out.println("do post di dammi ordine");
}
}
