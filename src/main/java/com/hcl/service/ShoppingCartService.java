package com.hcl.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.ShoppingRepo;
import com.hcl.model.Products;
import com.hcl.model.ShoppingCard;

@Service
public class ShoppingCartService {
	
	@Autowired
	ShoppingRepo repo;
	
	
	public List<Products> adddToShoppping(Products prod) {
		List<Products> list = new ArrayList<>();
		
			ShoppingCard card = new ShoppingCard();
			card.getListOfProd().add(prod);
			list  = card.getListOfProd();
			
			repo.save(card);
			
			return list;
			
	}
	
	
		
	public List<Products> ProductsInCart(){
		List<Products> list = new ArrayList<>();
		ShoppingCard card = new ShoppingCard();
		
		System.out.println("The other card: " + card);
		list  = card.getListOfProd();
		System.out.println(" the other list: " + list);
		return list;
		
	}
}
