package com.hcl.dao;

import org.springframework.data.repository.CrudRepository;

import com.hcl.model.Products;


public interface productrepo extends CrudRepository<Products, Long> {

}
