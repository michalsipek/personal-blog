package cz.michalsipek.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {

	@RequestMapping("/admin/dashboard")
	public String dashboard(){
		return "dashboard";
	}
}
