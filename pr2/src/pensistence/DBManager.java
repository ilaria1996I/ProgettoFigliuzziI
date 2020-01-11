package pensistence;
import java.util.ArrayList;       
import java.util.List;
import model.Clienti;
import model.Ordine;
import model.Utente;
import model.UtenteNor;
import pensistence.dao.ClienteDao;
import pensistence.dao.OrdineDao;
import pensistence.dao.jdbc.ClienteDaoJDBC;
import pensistence.dao.jdbc.OrdineDaoJDBC;

public class DBManager {
	private static  DataSource dataSource;

	static {
		 try {
			Class.forName("org.postgresql.Driver").newInstance();
			//questi vanno messi in file di configurazione!!!	
//			dataSource=new DataSource("jdbc:postgresql://52.39.164.176:5432/xx","xx","p@xx");
			dataSource=new DataSource("jdbc:postgresql://localhost:5432/altasartoria"
					+ "","postgres","gaetano27");
		} 
		catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load MySQL JDBC driver\n"+e);
			e.printStackTrace();
		}
	}

private static DBManager instance = null;
	List<Ordine> ordine;
	List<Clienti> clienti;
	
	public static DBManager getInstance() {
		if (instance == null) {
			instance = new DBManager();
		}
		return instance;
	}
	
	private DBManager() {
	clienti = new ArrayList<Clienti>();
	ordine = new ArrayList<Ordine>();
	}
	
	public void inserisciClienti(Clienti cl) {
		getClienteDAO().save(cl);
	}
	
	public void inserisciOrdini(Ordine or) {
		ordine.add(or);
	}
	
	
	//utente cliente
	public UtenteNor loginNor(String usernameN, String passwordN) {
		System.out.println(usernameN + passwordN);
		if (usernameN.equals("ilaria") && passwordN.equals("ilaria") ) {
			System.out.println("sei un cliente");
			UtenteNor un = new UtenteNor();
			un.setUsername("ilaria");
			un.setPassword("ilaria");
			return un;
		}
		return null;
	}
	
	public Utente login(String username, String password) {
		System.out.println("qua "+username + password);
		if (username.equals("admin") && password.equals("password")) {
			System.out.println("sei un admin");
			Utente u = new Utente();
			u.setUsername("admin");
			u.setPassword("password");
			return u;
		}
		return null;
	}

	public void  inserisciStudente(Clienti cliente) {
		getClienteDAO().save(cliente);
		
	}

	public List<Clienti> dammiStudenti() {
		return getClienteDAO().findAll();
	}

	public void inserisciOrdine(Ordine ord) {
		getOrdineDAO().save(ord);
		
	}

	public List<Ordine> dammiOrdine() {
		return getOrdineDAO().findAll();
	}

	public ClienteDao getClienteDAO() {
		return new ClienteDaoJDBC(dataSource);
	}
	
	public OrdineDaoJDBC getOrdineDAO() {
		return new OrdineDaoJDBC(dataSource);
	}
	
	
}
