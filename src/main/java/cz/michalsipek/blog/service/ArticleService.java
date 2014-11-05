package cz.michalsipek.blog.service;

import java.util.List;

import cz.michalsipek.blog.dao.ArticleDao;
import cz.michalsipek.blog.entity.Article;

/**
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */

public interface ArticleService extends ArticleDao {
	List<Article> findAllWithPagination(int page, int limitResultsPerPage);
	List<Article> findByDate(String date, int page, int limitresultsperpage);
}
