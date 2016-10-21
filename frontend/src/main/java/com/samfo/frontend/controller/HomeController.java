package com.samfo.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String gotohome()
	{
		return "index";
	}
	
	@RequestMapping("/validate")
	public String validate(@RequestParam("userID")String userID,@RequestParam("password") String pwd,Model model)
	{
		if(userID.equals("niit") && pwd.equals("niit"))
		{
			model.addAttribute("SuccessMessage","Login Successful");
		}
		else
		{
			model.addAttribute("ErrorMessage","Invalid Credentials");
		}
		return "index";
	}
	
	@RequestMapping("/login")
	public String login( Model model)
	{
	model.addAttribute("userClickedLogin","true");	
	return "index";
	}
	
	@RequestMapping("/register")
	public String register( Model model)
	{
		model.addAttribute("userClickedRegister","true");
		return "index";
	}

}
