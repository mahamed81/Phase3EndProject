package com.hcl.dao;

import org.springframework.data.repository.CrudRepository;

import com.hcl.model.Customer;
import com.hcl.model.Products;


public interface CustomerRepo extends CrudRepository<Customer, Long> {

}
