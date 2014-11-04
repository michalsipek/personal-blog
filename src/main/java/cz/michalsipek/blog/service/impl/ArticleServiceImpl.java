package cz.michalsipek.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cz.michalsipek.blog.dao.ArticleDao;
import cz.michalsipek.blog.entity.Article;
import cz.michalsipek.blog.service.ArticleService;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Service
@Transactional
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao articleDao;

	@Override
	public List<Article> findAll() {
		return articleDao.findAll();
	}

	@Override
	public Article save(Article article) {
		return articleDao.save(article);
	}

	@Override
	public void remove(Article article) {
		articleDao.remove(article);
	}

	@Override
	public Article findById(Integer id) {
		return articleDao.findById(id);
	}

	@Override
	public Article update(Article article) {
		return articleDao.update(article);
	}

	@Override
	public List<Article> findAllWithPagination(int page, int limitResultsPerPage) {
		return articleDao.findAllWithPagination(page, limitResultsPerPage);
	}


}
