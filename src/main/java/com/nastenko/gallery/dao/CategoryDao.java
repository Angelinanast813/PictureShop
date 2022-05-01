package com.nastenko.gallery.dao;

import java.util.List;

import com.nastenko.gallery.domain.Category;

public interface CategoryDao {

	void save(Category category);

	void update(Category category);

	List<Category> findAll();

	Category findByName(String categoryName);

	void deleteByName(String categoryName);

	Category findOne(String categoryId);
	

}
