package cz.michalsipek.blog.dao.impl;


import org.springframework.stereotype.Repository;
import cz.michalsipek.blog.dao.ArchiveDao;
import cz.michalsipek.blog.entity.Archive;


/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Repository
public class ArchiveDaoImpl extends GenericDaoHibernateImpl<Archive, Integer> implements ArchiveDao {

	public ArchiveDaoImpl() {
		super(Archive.class);
	}

}
