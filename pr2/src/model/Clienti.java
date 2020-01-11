package model;

public class Clienti {
	private int numCliente;
	private String nome;
	private String cognome;
	private String email;
	private String password;
	
	public String getPassword() {
		return password;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getCognome() {
		return cognome;
	}
	
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNome() {
		return nome;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public int getNumCliente() {
		return numCliente;
	}

	public void setNumCliente(int numCliente) {
		this.numCliente = numCliente;
	}
}
