package Models.Entities;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//@NoArgsConstructor
//@AllArgsConstructor
//@Data
public class Panier {
	
	public ArrayList<PanierDetails> articles = new ArrayList<PanierDetails>();
	
	public Panier(ArrayList<PanierDetails> articles) {
		super();
		this.articles = articles;
	}

	public Panier() {
		// TODO Auto-generated constructor stub
	}
	
	public int count() {
		return this.articles.size();
	}
	
	public void ajouter(PanierDetails p) {
		boolean exist=false;
		for(PanierDetails dp:articles) {
			System.out.println();
			if(dp.getProduit().getId()==p.getProduit().getId()) {
				exist=true;
				dp.setQte(dp.getQte()+p.getQte());
			}
		}
		if(!exist) {
			articles.add(p);
		}
	}
	
	public double total() {
		double total=0;
		for(PanierDetails pp:articles) {
			total+=pp.getProduit().getPrix()*pp.getQte();
		}
		return total;
	}
	
	public void delete(int produitid) {
		PanierDetails detail= new PanierDetails();
		for(PanierDetails pp:articles) {
			if(pp.getProduit().getId()==produitid) {
				detail=pp;
			}
		}
		articles.remove(detail);
	}
	
	public void vider() {
		articles= new ArrayList<PanierDetails>();
	}	
}
