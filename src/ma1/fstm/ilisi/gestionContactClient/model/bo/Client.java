package ma1.fstm.ilisi.gestionContactClient.model.bo;

import java.util.ArrayList;
import java.util.List;

public class Client {
	public int code;
	public String nom;
	public List<Contact> contacts = new ArrayList<Contact>();
	
	public Client(int code, String nom) {
		super();
		this.code = code;
		this.nom = nom;
	}
	public Client() {
		// TODO Auto-generated constructor stub
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public List<Contact> getContacts() {
		return contacts;
	}
	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}
	@Override
	public String toString() {
		return "Client [code=" + code + ", nom=" + nom + "]";
	}

	
}
