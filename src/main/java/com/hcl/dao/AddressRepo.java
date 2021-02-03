package com.hcl.dao;

import org.springframework.data.repository.CrudRepository;

import com.hcl.model.Address;
import com.hcl.model.ShoppingCard;

public interface AddressRepo extends CrudRepository<Address, Long> {

}
