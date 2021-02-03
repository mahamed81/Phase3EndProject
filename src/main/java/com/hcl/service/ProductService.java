package com.hcl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.productrepo;
import com.hcl.model.Customer;
import com.hcl.model.Products;

@Service
public class ProductService {
	
	@Autowired
	productrepo repo;
	
	
	public void addProd(Products prod) {
		repo.save(prod);
	}
	
	
	public List<Products> listProd(){
		
		List<Products> list = (List<Products>) repo.findAll();
		
		return list;		
	}
	
	
	public Products findProdById(long id) {
		Products prod = repo.findById(id).get();
		
		return prod;
	}
	
	
	public void removeProd(long id) {
		repo.deleteById(id);
	}
	
	
}
