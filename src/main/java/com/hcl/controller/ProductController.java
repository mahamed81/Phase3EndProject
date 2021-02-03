package com.hcl.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.dao.CustomerRepo;
import com.hcl.dao.productrepo;
import com.hcl.model.Address;
import com.hcl.model.Customer;
import com.hcl.model.Products;
import com.hcl.model.ShoppingCard;
import com.hcl.service.CustomerService;
import com.hcl.service.ProductService;



@RestController
public class ProductController {

	@Autowired
	ProductService productService;
	
	@GetMapping("/add_prod")
	public ModelAndView getPro() {

	Products prod = new Products();
		return new ModelAndView("products", "prod", prod);
	}

	@PostMapping("/add_prod")
	public RedirectView postPro(Products prod) {
		productService.addProd(prod);
		return new RedirectView("prod_list");
	}
	
	
	
	@GetMapping("/add_prod-admin")
	public ModelAndView getProAdmin() {

	Products prod = new Products();
		return new ModelAndView("products", "prod", prod);
	}

	@PostMapping("/add_prod-admin")
	public RedirectView postProAdmin(Products prod) {
		productService.addProd(prod);
		return new RedirectView("prodInv");
	}
	
	
	
	
	
	
	
	@GetMapping("/prod_list")
	public ModelAndView getlist() {
		List<Products> list= productService.listProd();
		return new ModelAndView("result", "result", list);
	}
	
	
	@GetMapping("/prodInv")
	public ModelAndView getProdAd() {
		List<Products> list= productService.listProd();
		return new ModelAndView("prodInv", "result", list);
	}
	
	
	
	
	@GetMapping("/prod-detail")
	public ModelAndView  getProdDetail(@RequestParam long id) {
		
		Products prod=productService.findProdById(id);
		
		return new ModelAndView("prodDetail", "prodDetail", prod);
			
	}
	
	@GetMapping("/order")
	public ModelAndView  getOrder(@RequestParam long id) {
		
		Products prod=productService.findProdById(id);
		
		return new ModelAndView("Order");
			
	}
	
	
	@GetMapping("/remo-prod")
	public ModelAndView  remove(@RequestParam long id) {
		
		productService.removeProd(id);
		
		return new ModelAndView("shopping");	
	}
	
	@GetMapping("/dele")
	public ModelAndView  removeProd(@RequestParam long id) {
		
		productService.removeProd(id);
		
		return new ModelAndView("prodInv");	
	}
	
	
	@GetMapping("/admin")
	public ModelAndView  admin() {
		
		
		return new ModelAndView("admin");	
	}

}
