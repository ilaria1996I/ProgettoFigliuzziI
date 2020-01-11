package model;

public class Ordine {
	private int codice;
	private String vogliostringere;
	private String vogliochemicreiilmodello;
	private String commento;
	private String data;
	private String vogliofareunordineal;
	
	public void setVogliostringere(String vogliostringere) {
		this.vogliostringere = vogliostringere;
	}
	public String getVoglioFareUnOrdineAl() {
		return vogliofareunordineal;
	}

	public void setVoglioFareUnOrdineAl(String vogliofareunordineal) {
		this.vogliofareunordineal = vogliofareunordineal;
	}

	public String getVoglioStringere() {
		return vogliostringere;
	}
	
	public String getVoglioCheMiCreiIlModello() {
		return vogliochemicreiilmodello;
	}

	public void setVoglioCheMiCreiIlModello(String vogliochemicreiilmodello) {
		this.vogliochemicreiilmodello = vogliochemicreiilmodello;
	}

	public String getCommento() {
		return commento;
	}

	public void setCommento(String commento) {
		this.commento = commento;
	}

	public String getData() {
		return data;
	}

	public void setData(String data2) {
		this.data = data2;
	}

	public int getCodice() {
		return codice;
	}

	public void setCodice(int codice) {
		this.codice = codice;
	}
}