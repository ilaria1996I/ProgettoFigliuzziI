package pensistence.dao;

import java.util.List; 


import model.UtenteNor;

public interface UtenteNorDao {
	public void save(UtenteNor utenteNor);  // Create
	public UtenteNor findByPrimaryKey(String admin);     // Retrieve
	public List<UtenteNor> findAll();	
	public void update(UtenteNor utenteNor); //Update
	public void delete(UtenteNor utenteNor); //Delete	
}
