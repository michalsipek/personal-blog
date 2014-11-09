package cz.michalsipek.blog.service;

import cz.michalsipek.blog.dao.GenericDao;
import cz.michalsipek.blog.entity.User;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

public interface UserService extends GenericDao<User, Integer> {
	void disable(User user);
}
