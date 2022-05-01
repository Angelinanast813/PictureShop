package com.nastenko.gallery.dao;

import java.util.List;

import com.nastenko.gallery.domain.Order;
import com.nastenko.gallery.domain.OrderItem;

public interface OrderDao {

	void save(Order order);

	Order findByNum(String ordernum);

	void update(Order order);

	List<Order> findByCustomerId(String customerId);

	
	List<OrderItem> findOrderItem(String ordernum);

}
