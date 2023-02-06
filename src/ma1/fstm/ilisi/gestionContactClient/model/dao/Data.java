package ma1.fstm.ilisi.gestionContactClient.model.dao;

import java.util.ArrayList;
import java.util.List;

import ma1.fstm.ilisi.gestionContactClient.model.bo.Client;
import ma1.fstm.ilisi.gestionContactClient.model.bo.Contact;

public class Data {
	static int counterClients =0;
	static int counterContacts =0;
	private List<Client> clients;
	private List<Contact> contacts;
	
	public Data() {
		this.clients = new ArrayList<Client>();
		this.contacts = new ArrayList<Contact>();
	}
	
	public List<Client> getClients() {
		return clients;
	}
	public List<Contact> getContacts() {
		return contacts;
	}
	
	public void addClient(String nom){
		clients.add(new Client(++counterClients,nom));
	}
	public void addContact(String tel, String adresse, int code){
		Client client = getClientByCode(code);
		Contact contact = new Contact(++counterContacts, tel,  adresse,  client);
		contacts.add(contact);
		client.getContacts().add(contact);
	}
	private Client getClientByCode(int codecl){
		for(Client c : clients)
			if(c.code==codecl)
				return c;
		return null;
	}

	public List<Contact> getContactsByClient(int code) {
		Client client = getClientByCode(code);
		return client.getContacts();
	}
}
