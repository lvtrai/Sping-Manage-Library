package com.msita.bookmng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.msita.bookmng.model.User;
import com.msita.bookmng.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
	public String hello(Model model) {
		return "homepage";
	}

	@RequestMapping(value = "/login")
    public String login() {
        return "login";
    }
	
	@RequestMapping(value = "/403")
    public String accessDenied() {
        return "403";
    }
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String createUser(Model model) {
		model.addAttribute("user",new User());
		return "createUser";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String createBookAction(@ModelAttribute("user") User user) {
		userService.createUser(user);
		return "redirect:logout";
	}
	
	
}