package ma1.fstm.ilisi.gestionContactClient.model.bo;

public class Contact {
	public int num;
	public String tel;
	public String adresse;
	public Client client;
	
	public Contact() {
		super();
	}
	public Contact(int num, String tel, String adresse, Client client) {
		super();
		this.num = num;
		this.tel = tel;
		this.adresse = adresse;
		this.client = client;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	
	

}
