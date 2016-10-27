package com.smafo.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OpenController {
	
	@RequestMapping("/")
	public String gotohome()
	{
		return "index";
	}
	@RequestMapping("/validate")
	
	public String validate(@RequestParam("userID") String id, @RequestParam("password") String pwd,Model model)
	{
		if (id.equals("niit") && pwd.equals("niit"))
		{
			model.addAttribute("successmessage", "you sucessfully logged in");
			return "index";
			
		}
		else
		{
			model.addAttribute("errormessage", "Invalid credentials");
			return "index";
	}
	}
	
	@RequestMapping("/Login")
	public String login(Model model)
	{
		model.addAttribute("Login", "true");
		return "index";
	}
	@RequestMapping("/Register")
	public String register(Model model)
	{
		model.addAttribute("Register", "true");
		return "index";
	}
	@RequestMapping("/register")
	public String Register(Model model)
	{
		model.addAttribute("Reg", "Registered Successfully");
		return "login";
	}


}
