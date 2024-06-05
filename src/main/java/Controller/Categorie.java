package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ConDB.Db;
import Model.dao.ProduitDao;
import Models.Entities.Produit;

/**
 * Servlet implementation class Categorie
 */
@WebServlet("/Categorie")
public class Categorie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Categorie() {
        super();
        Db.connect();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		  Integer id = Integer.parseInt(request.getParameter("cat_id"));
		  String name = request.getParameter("namCat");
		  
		  if (id != null) {
			  System.out.println(id);
			  ArrayList<Produit> listPrdtByIdCat = new ProduitDao().getAllByCat(id);
			  //listPrdtByIdCat.forEach((lp)->{System.out.println(lp.getTitre());});
			  
			  request.setAttribute("productByCatId", listPrdtByIdCat);
			  request.setAttribute("namCat", name);
		}
		  
	
		request.getRequestDispatcher("/categorie.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
