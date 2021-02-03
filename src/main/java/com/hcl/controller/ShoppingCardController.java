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
import com.hcl.service.ShoppingCartService;



@RestController
public class ShoppingCardController {

	@Autowired
	ShoppingCartService cartService;
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/add-prod")
	public ModelAndView addtoCard(@RequestParam long id) {
	
		ShoppingCard card = new ShoppingCard();
		Products prod = productService.findProdById(id);
		List<Products> list = cartService.adddToShoppping(prod);

		return new ModelAndView("shopping", "shop", list);
	}

}
