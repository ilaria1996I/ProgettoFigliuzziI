package pensistence;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;       
import java.util.List;

import controller.RichiediPassword;
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
	
	public DBManager() {
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

	public String passwordRicerca(String email) {
		Connection connection = null;
		String password = "";
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from clienti";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			String emailP;
			while (result.next()) {
				emailP = result.getString("email");
				password = result.getString("password");
				if(emailP.equalsIgnoreCase(email)) {
					return password;
				}
			}
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		}	 finally {
			try {
				if (connection != null)
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return null;
	}

	public void  inserisciCliente(Clienti cliente) {
		getClienteDAO().save(cliente);
		
	}

	public List<Clienti> dammiClienti() {
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
