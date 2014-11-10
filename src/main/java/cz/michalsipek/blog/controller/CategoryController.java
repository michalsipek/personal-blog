package cz.michalsipek.blog.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cz.michalsipek.blog.entity.Category;
import cz.michalsipek.blog.service.CategoryService;

/**
 * The CategoryController class accepts input and converts it to commands for the
 * model - Category and views related to category.
 * 
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */
@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;
	
	@ModelAttribute("category")
	public Category construct(){
		return new Category();
	} 
	
	/**
	 * Method displays page with all categories (category.jsp)
	 * */
	@RequestMapping("/admin/categories")
	public String categories(Model model){
		model.addAttribute("categories", categoryService.findAll());
		return "categories";
	}
	
	
	/**
	 * Method for display category's detail (category-detail.jsp)
	 * */
	@RequestMapping("/admin/category")
	public String categoryDetail(Model model, @RequestParam("id") Integer id) {
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("category", categoryService.findById(id));
		return "category-detail";
	}
	
	/**
	 * Method for saving category
	 * */
	@RequestMapping(value="admin/categories", method = RequestMethod.POST)
	public String saveCategory(Model model, @ModelAttribute("category") Category category, BindingResult result){
		if (result.hasErrors()) {
			return categories(model);
		}
		categoryService.save(category);
		return "redirect:/admin/categories.html?success=true";
	}
	
	/**
	 * Method for removing category
	 * */
	@RequestMapping(value="admin/categories/remove", method = RequestMethod.GET)
	public String removeCategory(@RequestParam("id") Integer id){
		categoryService.remove(categoryService.findById(id));
		return "redirect:/admin/categories.html?remove=true";
	}
	
	/**
	 * Method for display edit-category.jsp page
	 * */
	@RequestMapping("/admin/category/edit")
	public String editCategory(Model model, @RequestParam("id") Integer id){
		model.addAttribute("edit-category", categoryService.findById(id));
		return "edit-category";
	}
	
	/**
	 * Method for saving the modified category
	 * */
	@RequestMapping(value="admin/category/edit", method = RequestMethod.POST)
	public String doEditCategory(@Valid @ModelAttribute("edit-category") Category category, @RequestParam("id") Integer id, BindingResult result){
		if (result.hasErrors()) {
			return "edit-category";
		}
		categoryService.update(category);
		return "redirect:/admin/categories.html?update=true";
	}
}
