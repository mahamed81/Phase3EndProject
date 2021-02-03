package com.hcl.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;

@Entity
@Table(name = "products")
public class Products {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private long id;
		private String productName;
		private String category;
		private String cond;
		private double price;
		private double quantity=1;
		private double finalPrice;
		@ManyToOne
		@JoinColumn
		private ShoppingCard card;
	
		public Products() {
	}
		
		public Products(String productName, String category, String cond, double price, double quantity,
				double finalPrice, ShoppingCard card) {
			super();
			this.productName = productName;
			this.category = category;
			this.cond = cond;
			this.price = price;
			this.quantity = quantity;
			this.finalPrice = finalPrice;
			this.card = card;
		}

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getProductName() {
			return productName;
		}

		public void setProductName(String productName) {
			this.productName = productName;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

		public String getCond() {
			return cond;
		}

		public void setCond(String cond) {
			this.cond = cond;
		}

		public double getPrice() {
			return price;
		}

		public void setPrice(double price) {
			this.price = price;
		}

		public double getQuantity() {
			return quantity;
		}

		public void setQuantity(double quantity) {
			this.quantity = quantity;
		}

		public double getFinalPrice() {
			return finalPrice;
		}

		public void setFinalPrice(double finalPrice) {
			this.finalPrice = this.quantity * this.price;
		}

		public ShoppingCard getCard() {
			return card;
		}

		public void setCard(ShoppingCard card) {
			this.card = card;
		}

		@Override
		public String toString() {
			return "Products [id=" + id + ", productName=" + productName + ", category=" + category + ", cond=" + cond
					+ ", price=" + price + ", quantity=" + quantity + ", finalPrice=" + finalPrice + ", card=" + card
					+ "]";
		}

		
		
}
