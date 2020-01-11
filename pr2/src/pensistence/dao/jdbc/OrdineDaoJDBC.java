package pensistence.dao.jdbc;

import java.sql.Connection;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Ordine;
import pensistence.DataSource;
import pensistence.dao.OrdineDao;


public class OrdineDaoJDBC implements OrdineDao {
	private DataSource dataSource;

	public OrdineDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public void save(Ordine ordine) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into ordine(codice,vogliostringere,vogliochemicreiilmodello,"
					+ "commento,data,vogliofareunordineal) values (?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			long id = IdBroker.getId(connection);
			statement.setLong(1, id);
			statement.setString(2, ordine.getVoglioStringere());
			statement.setString(3, ordine.getVoglioCheMiCreiIlModello());
			statement.setString(4, ordine.getCommento());
			statement.setString(5, ordine.getData());
			statement.setString(6, ordine.getVoglioFareUnOrdineAl());
			
//			statement.setLong(5, ordine.getScuolaDiDiploma().getId()); 
//			statement.setLong(5, studente.get.getScuolaDiDiploma().getId());
			statement.executeUpdate();

			//System.out.printf(ordine.getVoglioStringere(),ordine.getVoglioCheMiCreiIlModello(),ordine.getCommento(),ordine.getData(),ordine.getVoglioFareUnOrdineAl());
			} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}  

	public Ordine findByPrimaryKey(int codice) {
		Connection connection = null;
		Ordine ordine = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from ordini where codice = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, codice);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				ordine = new Ordine();
				ordine.setCodice(result.getInt("codice"));				
				ordine.setVogliostringere(result.getString("vogliostringere"));
				ordine.setVoglioCheMiCreiIlModello(result.getString("vogliochemicreiilmodello"));
				ordine.setCommento(result.getString("commento"));
				ordine.setData(result.getString("data"));
				ordine.setVoglioCheMiCreiIlModello(result.getString("vogliofareunordineal"));
				
			//	Scuola scuola = DBManager.getInstance().getScuolaDAO().findByPrimaryKey(result.getLong("scuola"));
			//	studente.setScuolaDiDiploma(scuola);
				
			//	CorsoDiLaurea corsoDiLaurea = DBManager.getInstance().getCorsoDiLaureaDAO().findByPrimaryKey(result.getLong("corsodilaurea"));
			//	studente.setCorsoDiLaurea(corsoDiLaurea);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}	
		return ordine;
	}
	

	public List<Ordine> findAll() {
		Connection connection = null;
		List<Ordine> ord = new LinkedList<>();
		try {
			connection = this.dataSource.getConnection();
			Ordine ordine;
			PreparedStatement statement;
			String query = "select * from ordine";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				ordine = new Ordine();
				ordine.setCodice(result.getInt("codice"));				
				ordine.setVogliostringere(result.getString("VoglioStringere"));
				ordine.setVoglioCheMiCreiIlModello(result.getString("voglioCheMiCreiIlModello"));
				ordine.setCommento(result.getString("commento"));
				ordine.setData(result.getString("data"));
				ordine.setVoglioCheMiCreiIlModello(result.getString("vogliofareunordineal"));
				
				//al posto di scuola mettere utenteNor
			//	Clienti utenteNor = DBManager.getInstance().getUtenteNorDAO().findByPrimaryKey(result.getString("numClienteO"));
			//	utenteNor.setScuolaDiDiploma(scuola);
				
			//	CorsoDiLaurea corsoDiLaurea = DBManager.getInstance().getCorsoDiLaureaDAO().findByPrimaryKey(result.getLong("corsodilaurea"));
			//	studente.setCorsoDiLaurea(corsoDiLaurea);
				
				ord.add(ordine);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		}	 finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return ord;
	}



	
}
