package cz.michalsipek.blog.controller;


import java.beans.PropertyEditorSupport;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import cz.michalsipek.blog.entity.Role;
import cz.michalsipek.blog.entity.User;
import cz.michalsipek.blog.service.ArticleService;
import cz.michalsipek.blog.service.RoleService;
import cz.michalsipek.blog.service.UserService;

/**
 * The UserController class accepts input and converts it to commands for the
 * model - User and views related to user.
 * 
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-10-13
 */
@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	ArticleService articleService;
	
	@Autowired
	RoleService roleService;

	@ModelAttribute("user")
	public User construct() {
		return new User();
	}

	/**
	 * Method displays all users (users.jsp)
	 * */
	@RequestMapping("/admin/users")
	public String users(Model model) {
		model.addAttribute("users", userService.findAll());
		model.addAttribute("roles", roleService.findAll());
		return "users";
	}

	/**
	 * Method for display user's detail (user-detail.jsp)
	 * */
	@RequestMapping("/admin/users/{id}")
	public String userDetail(Model model, @PathVariable Integer id) {
		model.addAttribute("users", userService.findAll());
		model.addAttribute("user", userService.findById(id));
		return "user-detail";
	}

	/**
	 * Method for saving user
	 * */
	@RequestMapping(value = "admin/users", method = RequestMethod.POST)
	public String saveUser(Model model,@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return users(model);
		}
		userService.save(user);
		return "redirect:/admin/users.html?success=true";
	}

	/**
	 * Method for removing user
	 * */
	@RequestMapping(value = "admin/users/remove/{id}", method = RequestMethod.GET)
	public String removeUser(@PathVariable Integer id) {
		userService.remove(userService.findById(id));
		return "redirect:/admin/users.html?remove=true";
	}

	/**
	 * Method for display edit-user.jsp page
	 * */
	@RequestMapping("/admin/users/edit/{id}")
	public String editUser(Model model, @PathVariable Integer id) {
		model.addAttribute("user", userService.findById(id));
		model.addAttribute("roles", roleService.findAll());
		return "edit-user";
	}

	/**
	 * Method for saving the modified user
	 * */
	@RequestMapping(value = "admin/users/edit/{id}", method = RequestMethod.POST)
	public String doEditUser(Model model, @Valid @ModelAttribute("edit-user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return users(model);
		}
		userService.update(user);
		return "redirect:/admin/users.html?update=true";
	}
	
	/**
	 * Binder for resolving type mismatch and bind exceptions in POST
	 * */
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    binder.registerCustomEditor(Role.class, "roles", new PropertyEditorSupport() {
	    @Override
	    public void setAsText(String text) {
	        Role r = roleService.findById(Integer.parseInt(text));
	        setValue(r);
	    }
	    });
	}

}
