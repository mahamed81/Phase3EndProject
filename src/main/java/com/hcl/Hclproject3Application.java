package com.hcl;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.hcl.dao.ShoppingRepo;
import com.hcl.model.Address;
import com.hcl.model.Customer;
import com.hcl.model.Products;
import com.hcl.model.ShoppingCard;


@SpringBootApplication
public class Hclproject3Application{

	public static void main(String[] args) {
		SpringApplication.run(Hclproject3Application.class, args);
	}

//	@Autowired
//	ShoppingRepo repo;
//	@Override
//	public void run(String... args) throws Exception {
//		Customer cus = new Customer("Hasssan");
//		cus.setAddress(new Address("44 streeet"));
//		
//		Products pro = new Products("music");
//		
//		ShoppingCard shop = new ShoppingCard();
//		
//		shop.setCustomer(cus);
//		shop.getListTask().add(pro);
//		
//		repo.save(shop);
//		
//	}


}
