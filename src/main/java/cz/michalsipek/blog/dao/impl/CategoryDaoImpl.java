package cz.michalsipek.blog.dao.impl;


import org.springframework.stereotype.Repository;

import cz.michalsipek.blog.dao.CategoryDao;
import cz.michalsipek.blog.entity.Category;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Repository
public class CategoryDaoImpl extends GenericDaoHibernateImpl<Category, Integer> implements CategoryDao {

	public CategoryDaoImpl() {
		super(Category.class);
	}
	
}
