package cz.michalsipek.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cz.michalsipek.blog.dao.ArchiveDao;
import cz.michalsipek.blog.entity.Archive;
import cz.michalsipek.blog.service.ArchiveService;

@Service
@Transactional
public class ArchiveServiceImpl implements ArchiveService {

	@Autowired
	private ArchiveDao archiveDao;
	
	@Override
	public List<Archive> findAll() {
		return archiveDao.findAll();
	}

	@Override
	public Archive save(Archive archive) {
		return archiveDao.save(archive);
	}

	@Override
	public Archive update(Archive archive) {
		return archiveDao.update(archive);
	}

	@Override
	public void remove(Archive archive) {
		archiveDao.remove(archive);
	}

	@Override
	public Archive findById(Integer id) {
		return archiveDao.findById(id);
	}

}
