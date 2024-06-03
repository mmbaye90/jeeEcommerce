package Models.Entities;

public class Detail {
	 private int id;
	    private int commandeId;
	    private int produitId;
	    private int qte;
	    private double prix;

	    // Constructeur
	    public Detail() {};
	    public Detail(int id, int commandeId, int produitId, int qte, double prix) {
	        this.id = id;
	        this.commandeId = commandeId;
	        this.produitId = produitId;
	        this.qte = qte;
	        this.prix = prix;
	    }
	    public Detail(int commandeId, int produitId, int qte, double prix) {
	        this.commandeId = commandeId;
	        this.produitId = produitId;
	        this.qte = qte;
	        this.prix = prix;
	    }
	    

	    // Getters
	    public int getId() {
	        return id;
	    }

	    public int getCommandeId() {
	        return commandeId;
	    }

	    public int getProduitId() {
	        return produitId;
	    }

	    public int getQte() {
	        return qte;
	    }

	    public double getPrix() {
	        return prix;
	    }

	    // Setters
	    public void setId(int id) {
	        this.id = id;
	    }

	    public void setCommandeId(int commandeId) {
	        this.commandeId = commandeId;
	    }

	    public void setProduitId(int produitId) {
	        this.produitId = produitId;
	    }

	    public void setQte(int qte) {
	        this.qte = qte;
	    }

	    public void setPrix(double prix) {
	        this.prix = prix;
	    }

	    // Méthode pour afficher les informations sur le détail
	    @Override
	    public String toString() {
	        return "Detail{" +
	                "id=" + id +
	                ", commandeId=" + commandeId +
	                ", produitId=" + produitId +
	                ", qte=" + qte +
	                ", prix=" + prix +
	                '}';
	    }
}
