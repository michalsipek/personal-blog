package cz.michalsipek.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cz.michalsipek.blog.dao.CategoryDao;
import cz.michalsipek.blog.entity.Category;
import cz.michalsipek.blog.service.CategoryService;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDao categoryDao;

	@Override
	public List<Category> findAll() {
		return categoryDao.findAll();
	}

	@Override
	public Category save(Category category) {
		return categoryDao.save(category);
	}

	@Override
	public void remove(Category category) {
		categoryDao.remove(category);
	}

	@Override
	public Category findById(Integer id) {
		return categoryDao.findById(id);
	}

	@Override
	public Category update(Category category) {
		return categoryDao.update(category);
	}
	
}
