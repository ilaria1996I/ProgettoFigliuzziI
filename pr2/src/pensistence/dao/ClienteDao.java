package pensistence.dao;

import java.util.List; 

import model.Clienti;

public interface ClienteDao {
	
	public void save(Clienti cliente);  // Create
	public Clienti findByPrimaryKey(int numCliente);     // Retrieve 
	public List<Clienti> findAll();
	public Boolean loginRicerca(String id, String pass);
	public String passwordRicerca(String email);
}
