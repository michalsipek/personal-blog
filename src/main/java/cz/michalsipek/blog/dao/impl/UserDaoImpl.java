package cz.michalsipek.blog.dao.impl;

import org.springframework.stereotype.Repository;

import cz.michalsipek.blog.dao.UserDao;
import cz.michalsipek.blog.entity.User;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Repository
public class UserDaoImpl extends GenericDaoHibernateImpl<User, Integer> implements UserDao {

	public UserDaoImpl() {
		super(User.class);
	}

}
