package ma1.fstm.ilisi.gestionContactClient.model.dao;

import java.util.List;

import ma1.fstm.ilisi.gestionContactClient.model.bo.Client;

public interface IDAClient {
	public String insertClient(Client client);
	public List<Client> getClients();
	public String deleteClient(int id);
}
