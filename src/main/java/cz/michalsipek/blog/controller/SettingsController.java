package cz.michalsipek.blog.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cz.michalsipek.blog.entity.Archive;
import cz.michalsipek.blog.service.ArchiveService;
import cz.michalsipek.blog.service.RoleService;

/**
 * The SettingsController class accepts input and converts it to commands for the
 * model - Archive, Role and views related to them.
 * 
 * @author Sipek Michal
 * @version 1.0
 * @since 2014-11-05
 */
@Controller
public class SettingsController {
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private ArchiveService archiveService;
	
	@ModelAttribute("archive")
	public Archive construct(){
		return new Archive();
	} 
	
	/**
	 * Method displays settings page
	 * */
	@RequestMapping("/admin/settings")
	public String settings(Model model){
		model.addAttribute("roles", roleService.findAll());
		model.addAttribute("archives", archiveService.findAll());
		return "settings";
	}
	
	/**
	 * Method for saving item of archive
	 * */
	@RequestMapping(value="/admin/settings", method = RequestMethod.POST)
	public String saveArchive(@Valid @ModelAttribute("archive")Archive archive, @ModelAttribute("location")String location, Model model, BindingResult result){
		
		if (result.hasErrors()) {
			return settings(model);
		}
		archive.setLocation("/archive?date=" + location + "&page=0");
		archiveService.save(archive);
		return "redirect:/admin/settings.html?success=true";
	}
	
	/**
	 * Method for removing item of archive
	 * */
	@RequestMapping(value="/admin/settings/removeArchive/{id}", method = RequestMethod.GET)
	public String removeArchive(@PathVariable Integer id){
		archiveService.remove(archiveService.findById(id));
		return "redirect:/admin/settings.html?removeArchive=true";
	}
	
}
