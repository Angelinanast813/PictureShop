package com.nastenko.gallery.dao;

import com.nastenko.gallery.domain.Customer;

public interface CustomerDao {

	void save(Customer customer);

	void update(Customer customer);

	Customer findByCode(String code);

	Customer find(String username, String password);

}
