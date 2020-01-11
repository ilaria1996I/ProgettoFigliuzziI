package pensistence.dao;

import java.util.List;

import model.Ordine;

public interface OrdineDao {
	
	public void save(Ordine ordine );  // Create
	public Ordine findByPrimaryKey(int codice);     // Retrieve
	public List<Ordine> findAll();       
	public void update(Ordine ordine); //Update
}
