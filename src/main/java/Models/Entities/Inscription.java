package Models.Entities;

public class Inscription {
	 private int id;
	    private String nom;
	    private String email;
	    private String password;

	    // Constructeur
	    public Inscription() {}
	    public Inscription(int id, String nom, String email, String password) {
	        this.id = id;
	        this.nom = nom;
	        this.email = email;
	        this.password = password;
	    }
	    public Inscription(String nom, String email, String password) {
	        this.nom = nom;
	        this.email = email;
	        this.password = password;
	    }

	    // Getters
	    public int getId() {
	        return id;
	    }

	    public String getNom() {
	        return nom;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public String getPassword() {
	        return password;
	    }

	    // Setters
	    public void setId(int id) {
	        this.id = id;
	    }

	    public void setNom(String nom) {
	        this.nom = nom;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }

	    // Méthode pour afficher les informations sur l'inscription
	    @Override
	    public String toString() {
	        return "Inscription{" +
	                "id=" + id +
	                ", nom='" + nom + '\'' +
	                ", email='" + email + '\'' +
	                ", password='" + password + '\'' +
	                '}';
	    }
}
