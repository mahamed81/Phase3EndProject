package com.hcl.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="shopping_card")

public class ShoppingCard {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name= "card", referencedColumnName = "id")
	private List<Products> listOfProd =new ArrayList<>();
//	@OneToOne(cascade = CascadeType.ALL)
	//private Customer customer;
	
	public ShoppingCard() {
		
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public List<Products> getListOfProd() {
		return listOfProd;
	}

	public void setListOfProd(List<Products> listOfProd) {
		this.listOfProd = listOfProd;
	}

	
	@Override
	public String toString() {
		return "ShoppingCard [id=" + id + ", listOfProd=" + listOfProd + ", customer="  + "]";
	}


}