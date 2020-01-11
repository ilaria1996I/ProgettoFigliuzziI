package model;

public class Ordine {
	private int codice;
	private String VoglioStringere;
	private String voglioCheMiCreiIlModello;
	private String commento;
	private String data;
	private String voglioFareUnOrdineAl;
	
	public String getVoglioFareUnOrdineAl() {
		return voglioFareUnOrdineAl;
	}

	public void setVoglioFareUnOrdineAl(String voglioFareUnOrdineAl) {
		this.voglioFareUnOrdineAl = voglioFareUnOrdineAl;
	}

	public String getVoglioStringere() {
		return VoglioStringere;
	}

	public void setVoglioStringere(String voglioStringere) {
		VoglioStringere = voglioStringere;
	}

	public String getVoglioCheMiCreiIlModello() {
		return voglioCheMiCreiIlModello;
	}

	public void setVoglioCheMiCreiIlModello(String voglioCheMiCreiIlModello) {
		this.voglioCheMiCreiIlModello = voglioCheMiCreiIlModello;
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
