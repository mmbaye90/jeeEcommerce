package Models.Entities;

public class Commande {
	   private int id;
	    private int inscriptionId;
	    private double total;
	    private String date;

	    public Commande( ) {};
	    public Commande(int id, int inscriptionId, double total, String date) {
	        this.id = id;
	        this.inscriptionId = inscriptionId;
	        this.total = total;
	        this.date = date;
	    }
	    public Commande( int inscriptionId, double total, String date) {
	        this.inscriptionId = inscriptionId;
	        this.total = total;
	        this.date = date;
	    }


	    public int getId() {
	        return id;
	    }

	    public int getInscriptionId() {
	        return inscriptionId;
	    }

	    public double getTotal() {
	        return total;
	    }

	    public String getDate() {
	        return date;
	    }


	    public void setId(int id) {
	        this.id = id;
	    }

	    public void setInscriptionId(int inscriptionId) {
	        this.inscriptionId = inscriptionId;
	    }

	    public void setTotal(double total) {
	        this.total = total;
	    }

	    public void setDate(String date) {
	        this.date = date;
	    }


	    @Override
	    public String toString() {
	        return "Commande{" +
	                "id=" + id +
	                ", inscriptionId=" + inscriptionId +
	                ", total=" + total +
	                ", date=" + date +
	                '}';
	    }
}
