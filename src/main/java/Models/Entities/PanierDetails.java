package Models.Entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//@AllArgsConstructor
//@NoArgsConstructor
//@Data
public class PanierDetails {
	private Produit produit;
	private int qte;
	
	public PanierDetails() {
	}
	public PanierDetails(Produit produit, int qte) {
		super();
		this.produit = produit;
		this.qte = qte;
	}
	
	public Produit getProduit() {
		return produit;
	}
	public void setProduit(Produit produit) {
		this.produit = produit;
	}
	public int getQte() {
		return qte;
	}
	public void setQte(int qte) {
		this.qte = qte;
	}
	
	@Override
	public String toString() {
		return "Panier [produit=" + produit + ", qte=" + qte + "]";
	}
}
