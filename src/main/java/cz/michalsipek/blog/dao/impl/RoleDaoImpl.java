package cz.michalsipek.blog.dao.impl;

import org.springframework.stereotype.Repository;

import cz.michalsipek.blog.dao.RoleDao;
import cz.michalsipek.blog.entity.Role;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Repository
public class RoleDaoImpl extends GenericDaoHibernateImpl<Role, Integer> implements RoleDao {

	public RoleDaoImpl() {
		super(Role.class);
	}

}
