package com.hcl.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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



@RestController
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	@GetMapping("/register")
	public ModelAndView getRegis() {
		Address address = new Address();
		Customer cus = new Customer();
	
		
		return new ModelAndView("register", "regis", cus);
	}
	
	@PostMapping("/register")
	public RedirectView postRegis(Customer cus) {
		customerService.signUp(cus);
		
		return new RedirectView("login");	
	}
	
	@GetMapping("/login")
	public ModelAndView getLogin() {
		Customer cus = new Customer();
		
		return new ModelAndView("login", "log", cus);
	}
	
	@PostMapping("/login")
	public RedirectView postLogin(Customer cus, ModelMap model, HttpSession session) {
		ShoppingCard shop = new ShoppingCard();
		boolean custo = customerService.login(cus);
			if(custo) {
			model.put("name", cus.getName());
			session.setAttribute("user", cus);
			
			return new RedirectView("prod_list");
			} else {
				
				model.put("errorMessage", "Invalid credentails. Try again.");
		
			return new RedirectView("login");
			}
	}	
	
	
	@GetMapping("/cusMan")
	public ModelAndView getlist() {
		List<Customer> list= customerService.listProd();
		return new ModelAndView("cusMan", "result", list);
	}
	
	
	
	
	@GetMapping("/addre")
	public ModelAndView getAddre() {
		Address address = new Address();
		
		return new ModelAndView("register", "regis", address);
	}
	
	@PostMapping("/addre")
	public RedirectView postAddres(Address addre) {
		customerService.address(addre);;
		
		return new RedirectView("login");	
	}
	
	
	
}
