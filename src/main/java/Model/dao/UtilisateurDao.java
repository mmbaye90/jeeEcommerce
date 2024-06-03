package Model.dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import ConDB.Db;
import Models.Entities.Utilisateur;
public class UtilisateurDao {
	public void save(Utilisateur obj) {
		
		try {
			
			if(obj.getId() != 0) {
				PreparedStatement preparedStatement  = Db.con.prepareStatement("UPDATE inscription set nom=?,email=?,password=? WHERE id=?");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setString(2,obj.getEmail());
				preparedStatement.setString(3,obj.getPassword());
				preparedStatement.setInt(4,obj.getId());
	            preparedStatement.executeUpdate();
			}else {
				PreparedStatement preparedStatement  = Db.con.prepareStatement("INSERT INTO inscription (nom,email,password) VALUES(?,?,?)");
				preparedStatement.setString(1,obj.getNom());
				preparedStatement.setString(2,obj.getEmail());
				preparedStatement.setString(3,obj.getPassword());
	            preparedStatement.executeUpdate();
			}
			System.out.println("SAVED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED NO");
        }
	
}

public Utilisateur getById(int id) {
	try {
	
			PreparedStatement preparedStatement  = Db.con.prepareStatement("SELECT * FROM inscription WHERE id=?");
			preparedStatement.setInt(1,id);
			
			ResultSet resultat=preparedStatement.executeQuery();
			
			Utilisateur u = new Utilisateur();
			while(resultat.next()) {
				u.setId(resultat.getInt( "id" ));
				u.setNom(resultat.getString( "nom" ));
				u.setEmail(resultat.getString( "email" ));
				u.setPassword(resultat.getString( "password" ));
			}
			return u;
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}


public Utilisateur connexion(String email,String password) {
	try {
	
			PreparedStatement preparedStatement  = Db.con.
					prepareStatement("SELECT * FROM inscription WHERE email=? AND password=?");
			preparedStatement.setString(1,email);
			preparedStatement.setString(2,password);
			ResultSet resultat=preparedStatement.executeQuery();
			Utilisateur u = new Utilisateur();
			if(resultat.next()) {
				u.setId(resultat.getInt( "id" ));
				u.setNom(resultat.getString( "nom" ));
				u.setEmail(resultat.getString( "email" ));
				u.setPassword(resultat.getString( "password" ));
				return u;
			}else {
				return null;
			}
	} catch (Exception ex) {
    	ex.printStackTrace();
    	return null;
    }
}



public ArrayList<Utilisateur> getAll() {
	ArrayList<Utilisateur> list = new ArrayList<Utilisateur>();
	try {
		
			PreparedStatement preparedStatement  = Db.con.prepareStatement("SELECT * FROM inscription");
			
			ResultSet resultat=preparedStatement.executeQuery();

			while(resultat.next()) {
				Utilisateur u = new Utilisateur();
				u.setId(resultat.getInt( "id" ));
				u.setNom(resultat.getString( "nom" ));
				u.setEmail(resultat.getString( "email" ));
				u.setPassword(resultat.getString( "password" ));
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
		
			PreparedStatement preparedStatement  = Db.con.prepareStatement("DELETE FROM inscription WHERE id=?");
			preparedStatement.setInt(1,id);
			
			preparedStatement.executeUpdate();
			
			System.out.println("DELETED OK");
		
	} catch (Exception ex) {
    	ex.printStackTrace();
    	System.out.println("DELETED NO");
    }
}
}
