package pensistence.dao;

import java.util.List; 

import model.Clienti;

public interface ClienteDao {
	
	public void save(Clienti cliente);  // Create
	public Clienti findByPrimaryKey(int numCliente);     // Retrieve 
	public List<Clienti> findAll(); 
}
