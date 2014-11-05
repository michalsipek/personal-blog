package cz.michalsipek.blog.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cz.michalsipek.blog.dao.ArticleDao;
import cz.michalsipek.blog.entity.Article;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

@Repository
public class ArticleDaoImpl implements ArticleDao {

	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Article> findAllWithPagination(int page, int limitResultsPerPage) {
		Criteria cr = sessionFactory.getCurrentSession()
				.createCriteria(Article.class)
				.addOrder(Order.desc("publishDate"));
		cr.setFirstResult(page * limitResultsPerPage);
		cr.setMaxResults(limitResultsPerPage);
		List<Article> results = cr.list();
		return results;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> findAll() {
		return sessionFactory.getCurrentSession()
				.createCriteria(Article.class)
				.addOrder(Order.desc("publishDate")).list();
	}

	@Override
	public Article save(Article article) {
		sessionFactory.getCurrentSession().save(article);
		return article;
	}

	@Override
	public void remove(Article article) {
		sessionFactory.getCurrentSession().delete(article);
	}

	@Override
	public Article findById(Integer id) {
		return (Article) sessionFactory.getCurrentSession().get(Article.class,
				(Serializable) id);
	}

	@Override
	public Article update(Article article) {
		sessionFactory.getCurrentSession().update(article);
		return article;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> findByDate(String date, int page,
			int limitResultsPerPage) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Article where publishDate like '" + date
						+ "%' order by publishDate ASC");
		query.setFirstResult(page * limitResultsPerPage);
		query.setMaxResults(limitResultsPerPage);
		List<Article> articles = query.list();
		return articles;
	}
}
