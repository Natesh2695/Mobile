package com.smafo.smafofrontend.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	
	
	@RequestMapping("login")
	public String login(Model model)
	{
	model.addAttribute("name", "NIIT LTD");
		return "Login";
	}
	@RequestMapping("registration")
	public String register()
	{
		return "Registration";
	}

}