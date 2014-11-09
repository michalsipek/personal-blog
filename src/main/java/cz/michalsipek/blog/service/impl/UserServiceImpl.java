package cz.michalsipek.blog.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cz.michalsipek.blog.dao.UserDao;
import cz.michalsipek.blog.entity.User;
import cz.michalsipek.blog.service.UserService;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public User save(User user) {
		return userDao.save(user);
	}

	@Override
	public void remove(User user) {
		user = userDao.findById(user.getId());
		userDao.remove(user);
	}
	
	@Override
	public void disable(User user) {
		userDao.disable(user);
	}

	@Override
	public User findById(Integer id) {
		User user = userDao.findById(id);
		return user;
	}

	@Override
	public User update(User user) {
		return userDao.update(user);
	}

}
