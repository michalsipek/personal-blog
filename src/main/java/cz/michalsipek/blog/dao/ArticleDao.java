package cz.michalsipek.blog.dao;

import java.util.List;

import cz.michalsipek.blog.entity.Article;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

public interface ArticleDao extends GenericDao<Article, Integer> {
	List<Article> findAllWithPagination(int page, int limitResultsPerPage);
	List<Article> findByDate(String date);
}
