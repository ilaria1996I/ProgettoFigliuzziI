package pensistence.dao;

import java.util.List; 


import model.UtenteNor;

public interface UtenteNorDao {
	public void save(UtenteNor utenteNor);  // Create
	public UtenteNor findByPrimaryKey(String admin);     // Retrieve
	public List<UtenteNor> findAll();
	
//	public CorsoDiLaurea findByPrimaryKeyJoin(Long id);	
//	public List<CorsoDiLaurea> findByDipartimento(Dipartimento dipartimento);
	
	public void update(UtenteNor utenteNor); //Update
	public void delete(UtenteNor utenteNor); //Delete	
}
