package ma1.fstm.ilisi.gestionContactClient.model.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ma1.fstm.ilisi.gestionContactClient.model.bo.Client;
import ma1.fstm.ilisi.gestionContactClient.model.dao.DAOClient;
import ma1.fstm.ilisi.gestionContactClient.model.dao.Data;

/**
 * Servlet implementation class CrudServlet
 */
@WebServlet("/")
public class CrudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Data data;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrudServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		data = new Data();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		if(action.endsWith("/")){
			System.out.println("this is the homepage");
			request.getRequestDispatcher("HomePage.jsp").forward(request, response);
	    }else
		if(action.endsWith("/listClient")){
			request.setAttribute("clients", data.getClients());
	        request.getRequestDispatcher("WEB-INF/pages/Client.jsp").forward(request, response);
	    }else 
	    	if(action.endsWith("/AddClient")){
	    	request.getRequestDispatcher("WEB-INF/forms/Client.jsp").forward(request, response);
	    }else
			if(action.endsWith("/listContact")){
				request.setAttribute("contacts", data.getContacts());
		        request.getRequestDispatcher("WEB-INF/pages/Contact.jsp").forward(request, response);
		        
		    }
			else if(action.endsWith("/ShowContacts")){
				int idClient = Integer.parseInt(request.getParameter("client"));
				request.setAttribute("contacts", data.getContactsByClient(idClient));
		        request.getRequestDispatcher("WEB-INF/pages/Contact.jsp").forward(request, response);
		        
		    }
			else 
			    	if(action.endsWith("/AddContact")){
			    		request.setAttribute("clients", data.getClients());
			    	request.getRequestDispatcher("WEB-INF/forms/Contact.jsp").forward(request, response);
			    }else{
		    	System.out.println("Get nothing");
		    }///
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println("POST : action => "+action);
		
		if(action.endsWith("/AddClient")){
			
			String nom = request.getParameter("nom");
			
	        data.addClient(nom);
	        response.sendRedirect("listClient");
		}
		if(action.endsWith("/AddContact")){
			
			String adresse = request.getParameter("adresse");
			String tel = request.getParameter("tel");
			int code = Integer.parseInt(request.getParameter("code"));
	        
			data.addContact(tel, adresse,code );
	        response.sendRedirect("listContact");
		}
		else {
	    	System.out.println("Post nothing");
	    }
		
	}



}
