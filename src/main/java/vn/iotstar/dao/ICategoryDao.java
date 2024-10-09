package vn.iotstar.dao;

import java.util.List;

import vn.iotstar.entity.Category;

public interface ICategoryDao {

	int count();

	List<Category> findAll(int page, int pagesize);

	Category findByCategoryname(String catname) throws Exception;

	List<Category> findAll();

	Category findById(int cateid);

	void delete(int cateid) throws Exception;

	void update(Category category);

	void insert(Category category);

	List<Category> searchByName(String catname);

}