package pensistence.dao.jdbc;
import java.sql.Connection;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Clienti;
import pensistence.DataSource;
import pensistence.dao.ClienteDao;


public class ClienteDaoJDBC implements ClienteDao {
	private DataSource dataSource;

	public ClienteDaoJDBC(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void save(Clienti cliente) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			String insert = "insert into clienti(numcliente, nome, cognome,"
					+ " email,password) values (?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			long id = IdBroker.getId(connection);
			statement.setLong(1, id);
			statement.setString(2, cliente.getNome());
			statement.setString(3, cliente.getCognome());
			statement.setString(4, cliente.getEmail());
			statement.setString(5, cliente.getPassword());
			
			statement.executeUpdate();
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

	public Clienti findByPrimaryKey(int numCliente) {
		Connection connection = null;
		Clienti cliente = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from clienti where numCliente = ?";
			statement = connection.prepareStatement(query);
			statement.setInt(1, numCliente);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				cliente = new Clienti();
				
				cliente.setNumCliente(result.getInt("numCliente"));;
				cliente.setNome(result.getString("nome"));
				cliente.setCognome(result.getString("cognome"));
				cliente.setEmail(result.getString("email"));
				cliente.setPassword(result.getString("password"));
				
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
		return cliente;
	}
	public List<Clienti> findAll() {
		Connection connection = null;
		List<Clienti> clie = new ArrayList<>();
		try {
			connection = this.dataSource.getConnection();
			Clienti client;
			PreparedStatement statement;
			String query = "select * from clienti";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				client = new Clienti();
				client.setNumCliente(result.getInt("numCliente"));;
				client.setNome(result.getString("nome"));
				client.setCognome(result.getString("cognome"));
				client.setEmail(result.getString("email"));
				client.setPassword(result.getString("password"));
				clie.add(client);
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
		return clie;
	}

	public Boolean loginRicerca(String id, String pass) {
		Connection connection = null;
		try {
			connection = this.dataSource.getConnection();
			PreparedStatement statement;
			String query = "select * from clienti";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			String username;
			String password;
			
			while (result.next()) {
				username = result.getString("email");
				password = result.getString("password");
				if(username.equalsIgnoreCase(id) &&  password.equalsIgnoreCase(pass)) {
					return true;
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
		return false;
	}
}
