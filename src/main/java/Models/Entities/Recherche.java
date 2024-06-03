package Models.Entities;

public class Recherche {
	private int id;
    private String mot;
    private int nbr;
    private String dater;

    // Constructeur
    public Recherche() {}
    public Recherche(int id, String mot, int nbr, String dater) {
        this.id = id;
        this.mot = mot;
        this.nbr = nbr;
        this.dater = dater;
    }
    public Recherche(String mot, int nbr, String dater) {
        this.mot = mot;
        this.nbr = nbr;
        this.dater = dater;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getMot() {
        return mot;
    }

    public int getNbr() {
        return nbr;
    }

    public String getDater() {
        return dater;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setMot(String mot) {
        this.mot = mot;
    }

    public void setNbr(int nbr) {
        this.nbr = nbr;
    }

    public void setDater(String dater) {
        this.dater = dater;
    }

    // Méthode pour afficher les informations sur la recherche
    @Override
    public String toString() {
        return "Recherche{" +
                "id=" + id +
                ", mot='" + mot + '\'' +
                ", nbr=" + nbr +
                ", dater=" + dater +
                '}';
    }
}
