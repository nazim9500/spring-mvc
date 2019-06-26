package com.boraji.tutorial.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boraji.tutorial.springboot.model.Login;
import com.boraji.tutorial.springboot.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService myLoginservice;
	
	@GetMapping("/login")
	public String login( Model model) {
		model.addAttribute("data", new Login());
		
		return "Login";
	}

	@PostMapping(value = "/login", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE, 
	        produces = {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public String loginpost(@RequestBody Login logindata, Model model) {
		
		System.out.println(logindata.getId() + "   jjjkjjjjjjjjjj");
		
		String responce = myLoginservice.saveData(logindata);
		model.addAttribute("message", responce);
		return "Login";
	}

}
