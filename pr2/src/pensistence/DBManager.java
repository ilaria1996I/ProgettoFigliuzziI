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
	static ClienteDaoJDBC ClienteDaoJDBC;
	
	static { 
		 try {
			Class.forName("org.postgresql.Driver").newInstance();
			dataSource=new DataSource("jdbc:postgresql://rajje.db.elephantsql.com:5432/bgobesop"
				+ "","bgobesop","PHOyAAl31WGcKS0xEXHsYmvw_3bFPZGa");
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
		UtenteNor un = new UtenteNor();
		if (getClienteDAO().loginRicerca(usernameN, passwordN) == true) {
			return un;
			}
		return null;
	}
	
	public Utente login(String username, String password) {
		Utente u = new Utente();
		if (username.equals("admin") && password.equals("password")) {
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
