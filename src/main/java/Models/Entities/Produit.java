package Models.Entities;

public class Produit {
	
		private int id;
		private String titre;
		private double prix;
		private int qte;
		private int categorie_id;
		private String image;
		
		
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getTitre() {
			return titre;
		}
		public void setTitre(String titre) {
			this.titre = titre;
		}
		public double getPrix() {
			return prix;
		}
		public void setPrix(double prix) {
			this.prix = prix;
		}
		public int getQte() {
			return qte;
		}
		public void setQte(int qte) {
			this.qte = qte;
		}
		public int getCategorie_id() {
			return categorie_id;
		}
		public void setCategorie_id(int categorie_id) {
			this.categorie_id = categorie_id;
		}
		
		public Produit() {
		}
		public Produit(int id, String titre, double prix, int qte, int categorie_id,String image) {
			this.id = id;
			this.titre = titre;
			this.prix = prix;
			this.qte = qte;
			this.categorie_id = categorie_id;
			this.image=image;
		}
		public Produit(String titre, double prix, int qte, int categorie_id,String image) {
			this.titre = titre;
			this.prix = prix;
			this.qte = qte;
			this.categorie_id = categorie_id;
			this.image=image;
		}
		@Override
		public String toString() {
			return "Produit [id=" + id + ", titre=" + titre + ", prix=" + prix + ", qte=" + qte + ", categorie_id="
					+ categorie_id + ", image=" + image + "]";
		}
		
		
		
}


