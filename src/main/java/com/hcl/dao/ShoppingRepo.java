package com.hcl.dao;

import org.springframework.data.repository.CrudRepository;

import com.hcl.model.ShoppingCard;

public interface ShoppingRepo extends CrudRepository<ShoppingCard, Long> {

}
