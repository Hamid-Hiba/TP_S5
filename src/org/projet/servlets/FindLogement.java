package org.projet.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.projet.beans.Logement;
import org.projet.db.LogementDB;

/**
 * Servlet implementation class FindLogement
 */
@WebServlet(name = "FindLogement" , urlPatterns ="/FindLogement")
public class FindLogement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindLogement() {
        super();
        // TODO Auto-generated constructor stub
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
		//int id_proprietaire=Integer.parseInt(request.getParameter("id"));
		//int nombre_pieces= Integer.parseInt(request.getParameter("nombre_pieces"));
		//int age= Integer.parseInt(request.getParameter("age"));
		String nettoyage= request.getParameter("nettoyage");
		//String fumer= request.getParameter("fumer");
		String organisation= request.getParameter("organisation");
		int prix=Integer.parseInt(request.getParameter("prix"));
		String disponibilite_move_in=request.getParameter("disponibilite_move_in");
		String disponibilite_move_out=request.getParameter("disponibilite_move_out");
		int nombre_chambre=Integer.parseInt( request.getParameter("nombre_chambre"));
		int nombre_lit= Integer.parseInt( request.getParameter("nombre_lit"));
		String ville = request.getParameter("ville");
		String pays = request.getParameter("pays");
		
		Logement logement = new Logement();
		try {
			java.util.Date sdf = new SimpleDateFormat("yyyy-MM-dd").parse(disponibilite_move_in);
			
			java.sql.Date sqlStartDate = new java.sql.Date(sdf.getTime()); 
			logement.setDisponibilite_move_in(sqlStartDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		try {
			java.util.Date sdf = new SimpleDateFormat("yyyy-MM-dd").parse(disponibilite_move_out);
			java.sql.Date sqlStartDate = new java.sql.Date(sdf.getTime()); 
			logement.setDisponibilite_move_out(sqlStartDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		//logement.setNombre_pieces(nombre_pieces);
		
		logement.setNombre_chambre(nombre_chambre);
		logement.setNombre_lit(nombre_lit);
		logement.setPays(pays);
		logement.setVille(ville);
		//logement.setAge(age);
		logement.setNettoyage(nettoyage);
		//logement.setFumer(fumer);
		logement.setOrganisation(organisation);
		
		//logement.setId_proprietaire(id_proprietaire);
		logement.setPrix(prix);
		LogementDB logementdb =  new LogementDB();
		try {
			List<Logement> listLogement=logementdb.FindLogement(logement);
			HttpSession session = request.getSession();
			session.setAttribute("listLogement", listLogement);
			RequestDispatcher dispatcher = request.getRequestDispatcher("FindLogement.jsp");
			dispatcher.forward(request, response);	
			
		} catch (ClassNotFoundException | SQLException e) {
		
			e.printStackTrace();
		}
	}

}
