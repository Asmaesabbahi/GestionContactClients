package ma1.fstm.ilisi.gestionContactClient.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import ma1.fstm.ilisi.gestionContactClient.model.bo.Client;

public class DAOClient implements IDAClient{

	@Override
	public String insertClient(Client c) {
		try {
			
			 PreparedStatement preparedStatement=ConnectionToDB.getConn().prepareStatement("insert into client (nom) values(?)");
			 preparedStatement.setString(1,c.getNom());
	         preparedStatement.executeUpdate();
	         System.out.println(c);
	         return"data inserted successfully";
		}catch(SQLException e) {
			return"Error while inserting data in database";
		}
	}

	@Override
	public List<Client> getClients() {
		List<Client> clients = new ArrayList();
		try {
			
			PreparedStatement preparedStatement=ConnectionToDB.getConn().prepareStatement("select * from client");
	        ResultSet resultSet=preparedStatement.executeQuery();
	        while(resultSet.next()){
	             int id = resultSet.getInt("id");
	        	 String nom=resultSet.getString("nom");
	             Client c = new Client(id,nom);
	             c.setCode(id);
	             c.setNom(nom);
	             clients.add(c);
	        }
			
			
		} catch (SQLException e) {
			System.out.println("Error while retrieving data from database");
		}
		return clients;
	}

	@Override
	public String deleteClient(int id) {
		try {
			
	        PreparedStatement preparedStatement=ConnectionToDB.getConn().prepareStatement("delete from client where id=?");
	        preparedStatement.setInt(1,id);
	        preparedStatement.executeUpdate();
	        return"client deleted Successfully";
	        
		} catch (SQLException e) {
			return"Error while deleting client";
		}
		
	}
	
}
