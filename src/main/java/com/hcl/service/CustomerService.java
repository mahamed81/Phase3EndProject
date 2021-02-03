package com.hcl.service;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.AddressRepo;
import com.hcl.dao.CustomerRepo;
import com.hcl.model.Address;
import com.hcl.model.Customer;
import com.hcl.model.Products;

@Service
public class CustomerService {
	
	@Autowired
	CustomerRepo repo;
	
	@Autowired
	AddressRepo addrepo;

	public boolean login(Customer cus) {
		AtomicBoolean userExists = new AtomicBoolean(false);

		List<Customer> list = (List<Customer>) repo.findAll();

		list.stream().filter(x -> x.getUsername().equals(cus.getUsername()) && x.getPassword().equals(cus.getPassword()))
						.findFirst().ifPresent(x -> {
							userExists.set(true);});
		
		if(userExists.get()) {
			return true;
		}else {
			return false;
		}	
	}
	
	
	
	public void signUp(Customer cus) {
		repo.save(cus);	
	}
	
	
	
public List<Customer> listProd(){
		
		List<Customer> list = (List<Customer>) repo.findAll();
		
		return list;		
	}
	
	
	
	
	public void address(Address add) {
		
		addrepo.save(add);
			
	}
	
	
	
	public List<Address> showAddr() {
		 
		return (List<Address>) addrepo.findAll();
	}
	
	
	
	
	
	
	
	
	
}
