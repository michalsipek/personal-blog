package cz.michalsipek.blog.controller;

import java.beans.PropertyEditorSupport;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cz.michalsipek.blog.entity.Article;
import cz.michalsipek.blog.entity.Category;
import cz.michalsipek.blog.service.ArticleService;
import cz.michalsipek.blog.service.CategoryService;
import cz.michalsipek.blog.service.UserService;

/**
 * The ArticleController class accepts input and converts it to commands for the
 * model - Article and views related to article.
 * 
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */
@Controller
public class ArticleController {

	@Autowired
	ArticleService articleService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	UserService userService;

	@ModelAttribute("article")
	public Article construct() {
		return new Article();
	}

	/**
	 * Method displays page with all articles, categories and users
	 * (articles.jsp)
	 * */
	@RequestMapping("/admin/articles")
	public String articles(Model model) {
		model.addAttribute("articles", articleService.findAll());
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("users", userService.findAll());
		return "articles";
	}
	
	/**
	 * Method for display article's detail (article-detail.jsp)
	 * */
	@RequestMapping("/admin/articles/{id}")
	public String userDetail(Model model, @PathVariable Integer id) {
		model.addAttribute("articles", articleService.findAll());
		model.addAttribute("article", articleService.findById(id));
		model.addAttribute("categories", categoryService.findAll());
		return "article-detail";
	}
	
	/**
	 * Method for display article's add page (article-add.jsp)
	 * */
	@RequestMapping("/admin/articles/new")
	public String articleAdd(Model model) {
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("users", userService.findAll());
		return "article-add";
	}

	/**
	 * Method for saving an article
	 * */
	@RequestMapping(value = "/admin/articles/new", method = RequestMethod.POST)
	public String saveArticle(Model model,@Valid @ModelAttribute("article") Article article,
			BindingResult result) {
		if (result.hasErrors()) {
			return articleAdd(model);
		}
		Date publishDate = new Date();
		article.setPublishDate(publishDate);
		articleService.save(article);
		return "redirect:/admin/articles.html?success=true";
	}

	/**
	 * Binder for required date format
	 * */
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm");
		dateFormat.setLenient(false);
		webDataBinder.registerCustomEditor(Date.class, "publishDate",
				new CustomDateEditor(dateFormat, false));
	}
	
	/**
	 * Binder for resolving type mismatch and bind exceptions in POST
	 * */
	@InitBinder
	protected void initBinder1(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    binder.registerCustomEditor(Category.class, "categories", new PropertyEditorSupport() {
	    @Override
	    public void setAsText(String text) {
	        Category c = categoryService.findById(Integer.parseInt(text));
	        setValue(c);
	    }
	    });
	}

}
