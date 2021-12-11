package org.projet.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.projet.beans.Proprietaire;
import org.projet.beans.User;
import org.projet.db.ProprietaireDB;

/**
 * Servlet implementation class UpdateProfile
 */
@WebServlet(name = "UpdateProfile",urlPatterns = "/UpdateProfile")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String description= request.getParameter("description");
		String sexe= request.getParameter("sexe");
        int age = Integer.parseInt(request.getParameter("age"));
        int id = Integer.parseInt(request.getParameter("id"));
        String organisation=request.getParameter("organisation");
        String fumer=request.getParameter("fumer");
        String nettoyage=request.getParameter("nettoyage");
        Proprietaire prop = new Proprietaire();
        prop.setAge(age);
        prop.setId_user(id);
        prop.setDescription(description);
        prop.setSexe(sexe);
        prop.setOrganisation(organisation);
        prop.setFumer(fumer);
        prop.setNettoyage(nettoyage);
        ProprietaireDB proprietairedb = new ProprietaireDB();
        
        try {
        	Proprietaire propi = new Proprietaire();
        	if( proprietairedb.updateProfile(prop)) {
				request.setAttribute("NOTIFICATION", "Employee Updated Successfully!");
			}
        	else {
        		 response.sendRedirect("login.jsp");
        	}
        	 HttpSession session = request.getSession();
        	 session.setAttribute("propi", propi);
        	 response.sendRedirect("login.jsp");
	
        }catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
            
	}

    	
    }
   
    protected void Redirect(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    	
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
		
		
		
}
}
