package ma1.fstm.ilisi.gestionContactClient.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionToDB {
	public static Connection getConn(){
		Connection	 connection = null;
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_contacts_clients", "root","");//Establishing connection
			System.out.println("Connected With the database successfully");
			 
		} catch (SQLException e) {
			System.out.println("Error while connecting to the database");
		}
		return connection;
	}
	
	public static void main(String[] args) {
		ConnectionToDB.getConn();
	}
}
