package cz.michalsipek.blog.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cz.michalsipek.blog.service.ArchiveService;
import cz.michalsipek.blog.service.ArticleService;
import cz.michalsipek.blog.service.CategoryService;
import cz.michalsipek.blog.service.UserService;

/**
 * The IndexController class accepts input and converts it to commands for the
 * views related to main page
 * 
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */
@Controller
public class IndexController {

	@Autowired
	UserService userService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	ArticleService articleService;
	
	@Autowired
	ArchiveService archiveService;
	
	private static final int limitResultsPerPage = 4;

	/**
	 * Method redirects to index page
	 * */
	@RequestMapping("/index")
	public String index(Model model) {
		return "redirect:/articles?page=0";
		}
	
	/**
	 * Method for get Articles with pagination / index page
	 * */
	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String getArticles(@RequestParam(value = "page", required = false) int page, Model model){
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("archives", archiveService.findAll());
		model.addAttribute("articles", articleService.findAllWithPagination(page, limitResultsPerPage));
		model.addAttribute("page",page);
		model.addAttribute("sizeArticles", articleService.findAll().size());
		model.addAttribute("limitResultsPerPage", limitResultsPerPage);
		return"index";
	}
	
	/**
	 * Method for get an article's detail
	 * */
	@RequestMapping("/articles/{id}")
	public String getDetail(Model model, @PathVariable Integer id){
		model.addAttribute("article", articleService.findById(id));
		model.addAttribute("categories", categoryService.findAll());
		return "article-detail-public";
	}
	
	/**
	 * Method for display articles by category
	 * */
	@RequestMapping("/articles/cat{id}")
	public String getArticlesByCategory(Model model, @PathVariable Integer id){
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("archives", archiveService.findAll());
		model.addAttribute("category", categoryService.findById(id));		
		return "index-filterByCat";
	}
	
	/**
	 * Method for display articles by date with pagination
	 * */
	@RequestMapping(value = "/archive", method = RequestMethod.GET)
	public String getArticlesByYear(@RequestParam(value = "date") String date, @RequestParam(value="page") int page, Model model){
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("archives", archiveService.findAll());
		model.addAttribute("articles", articleService.findByDate(date, page, limitResultsPerPage));
		model.addAttribute("page",page);
		model.addAttribute("date",date);
		model.addAttribute("sizeArticles", articleService.findAll().size()); // tuto metodu nutno zmenit, v kazdem filtru je jiny pocet clanku
		model.addAttribute("limitResultsPerPage", limitResultsPerPage);
		return "archive";
	}

}
