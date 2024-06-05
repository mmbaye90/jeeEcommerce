package Model.dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import ConDB.Db;
import Models.Entities.Produit;

public class ProduitDao {
public void save(Produit obj) {
		
		try {
			
			if(obj.getId() != 0) {
				
				PreparedStatement preparedStatement  = Db.con.prepareStatement("UPDATE produits set titre=?,prix=?,qte=?,categorie_id=?,image=? WHERE id=?");
				preparedStatement.setString(1,obj.getTitre());
				preparedStatement.setDouble(2,obj.getPrix());
				preparedStatement.setInt(3,obj.getQte());
				preparedStatement.setInt(4,obj.getCategorie_id());
				preparedStatement.setString(5,obj.getImage());
				preparedStatement.setInt(6,obj.getId());
	            preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Db.con.prepareStatement("INSERT INTO produits (titre,prix,qte,categorie_id,image) VALUES(?,?,?,?,?)");
				preparedStatement.setString(1,obj.getTitre());
				preparedStatement.setDouble(2,obj.getPrix());
				preparedStatement.setInt(3,obj.getQte());
				preparedStatement.setInt(4,obj.getCategorie_id());
				preparedStatement.setString(5,obj.getImage());
	            preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED NO");
        }
	
}

public Produit getById(int id) {
	try {
	
			PreparedStatement preparedStatement  = Db.con.prepareStatement("SELECT * FROM produits WHERE id=?");
			preparedStatement.setInt(1,id);
			
			ResultSet resultat=preparedStatement.executeQuery();
			
			Produit u = new Produit();
			while(resultat.next()) {
				u.setId(resultat.getInt( "id" ));
				u.setTitre(resultat.getString( "titre" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQte(resultat.getInt( "qte" ));
				u.setCategorie_id(resultat.getInt( "categorie_id" ));
				u.setImage(resultat.getString( "image" ));
			}
			return u;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}


public ArrayList<Produit> getAll() {
	ArrayList<Produit> list = new ArrayList<Produit>();
	try {
		
			PreparedStatement preparedStatement  = Db.con.prepareStatement("SELECT * FROM produits");
			
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit u = new Produit();
				u.setId(resultat.getInt( "id" ));
				u.setTitre(resultat.getString( "titre" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQte(resultat.getInt( "qte" ));
				u.setCategorie_id(resultat.getInt( "categorie_id" ));
				u.setImage(resultat.getString( "image" ));
				list.add(u);
			}
			
			
			return list;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}


public ArrayList<Produit> getAllByCat(int catid) {
	ArrayList<Produit> list = new ArrayList<Produit>();
	try {
		
			PreparedStatement preparedStatement  = Db.con.prepareStatement("SELECT * FROM produits WHERE categorie_id=?");
			preparedStatement.setInt(1,catid);
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit u = new Produit();
				u.setId(resultat.getInt( "id" ));
				u.setTitre(resultat.getString( "titre" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQte(resultat.getInt( "qte" ));
				u.setCategorie_id(resultat.getInt( "categorie_id" ));
				u.setImage(resultat.getString( "image" ));
				list.add(u);
			}
			
			
			return list;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}

public ArrayList<Produit> Rechercher(String mot) {
	ArrayList<Produit> list = new ArrayList<Produit>();
	try {
		
			PreparedStatement preparedStatement  = Db.con.prepareStatement("SELECT * FROM produits WHERE Titre like ?");
			preparedStatement.setString(1,"%"+mot+"%");
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Produit u = new Produit();
				u.setId(resultat.getInt( "id" ));
				u.setTitre(resultat.getString( "titre" ));
				u.setPrix(resultat.getDouble( "prix" ));
				u.setQte(resultat.getInt( "qte" ));
				u.setCategorie_id(resultat.getInt( "categorie_id" ));
				u.setImage(resultat.getString( "image" ));
				list.add(u);
			}
			return list;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}


public void deleteById(int id) {
	try {
		
			PreparedStatement preparedStatement  = Db.con.prepareStatement("DELETE FROM produits WHERE id=?");
			preparedStatement.setInt(1,id);
			
			preparedStatement.executeUpdate();
			
			System.out.println("DELETED OK");
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	System.out.println("DELETED NO");
    }
}
}
