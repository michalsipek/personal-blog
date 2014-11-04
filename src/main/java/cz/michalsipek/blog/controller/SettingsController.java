package cz.michalsipek.blog.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import cz.michalsipek.blog.service.RoleService;

@Controller
public class SettingsController {
	
	@Autowired
	private RoleService roleService;

	@RequestMapping("/admin/settings")
	public String settings(Model model){
		model.addAttribute("roles", roleService.findAll());
		return "settings";
	}
	
	
	
}
