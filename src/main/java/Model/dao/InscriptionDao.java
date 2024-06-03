package Model.dao;

import Models.Entities.Inscription;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ConDB.Db;
public class InscriptionDao {
	  // Méthode pour insérer une inscription dans la base de données
    public static boolean inscrire(Inscription inscription) {
        String query = "INSERT INTO inscription (nom, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement preparedStatement = Db.con.prepareStatement(query);
            preparedStatement.setString(1, inscription.getNom());
            preparedStatement.setString(2, inscription.getEmail());
            preparedStatement.setString(3, inscription.getPassword());
            int rowsInserted = preparedStatement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Méthode pour rechercher une inscription par son ID
    public static Inscription getById(int id) {
        String query = "SELECT * FROM inscription WHERE id = ?";
        try {
            PreparedStatement preparedStatement = Db.con.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                int inscriptionId = resultSet.getInt("id");
                String nom = resultSet.getString("nom");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                return new Inscription(inscriptionId, nom, email, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Méthode pour mettre à jour une inscription dans la base de données
    public static boolean mettreAJour(Inscription inscription) {
        String query = "UPDATE inscription SET nom = ?, email = ?, password = ? WHERE id = ?";
        try {
            PreparedStatement preparedStatement = Db.con.prepareStatement(query);
            preparedStatement.setString(1, inscription.getNom());
            preparedStatement.setString(2, inscription.getEmail());
            preparedStatement.setString(3, inscription.getPassword());
            preparedStatement.setInt(4, inscription.getId());
            int rowsUpdated = preparedStatement.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Méthode pour supprimer une inscription de la base de données
    public static boolean supprimer(int id) {
        String query = "DELETE FROM inscription WHERE id = ?";
        try {
            PreparedStatement preparedStatement = Db.con.prepareStatement(query);
            preparedStatement.setInt(1, id);
            int rowsDeleted = preparedStatement.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Méthode pour récupérer toutes les inscriptions de la base de données
    public static ArrayList<Inscription> recupererTous() {
        ArrayList<Inscription> inscriptions = new ArrayList<>();
        String query = "SELECT * FROM inscription";
        try {
            PreparedStatement preparedStatement = Db.con.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String nom = resultSet.getString("nom");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                inscriptions.add(new Inscription(id, nom, email, password));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return inscriptions;
    }

    // Méthode pour vérifier une connexion en utilisant l'email et le mot de passe
    public Inscription connexionVerif(String email, String password,String nom) {
        String query = "SELECT * FROM inscription WHERE email = ? AND password = ? AND nom =?";
        try {
            PreparedStatement preparedStatement = Db.con.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, nom);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
            	Inscription ins = new Inscription();
            	ins.setEmail(email);
            	ins.setNom(nom);
            	ins.setPassword(password);
            	return ins;
            }
        } catch (SQLException e) {
            e.printStackTrace();         
        }
        return null;
    }
}
