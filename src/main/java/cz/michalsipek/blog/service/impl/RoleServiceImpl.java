package cz.michalsipek.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cz.michalsipek.blog.dao.RoleDao;
import cz.michalsipek.blog.entity.Role;
import cz.michalsipek.blog.service.RoleService;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Service
@Transactional
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;
	
	@Override
	public List<Role> findAll() {
		return roleDao.findAll();
	}

	@Override
	public Role save(Role role) {
		return roleDao.save(role);
	}

	@Override
	public Role update(Role role) {
		return roleDao.update(role);
	}

	@Override
	public void remove(Role role) {
		role = roleDao.findById(role.getId());
		roleDao.remove(role);
	}

	@Override
	public Role findById(Integer id) {
		return roleDao.findById(id);
	}

}
