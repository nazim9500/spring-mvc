package com.boraji.tutorial.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boraji.tutorial.springboot.model.Login;
import com.boraji.tutorial.springboot.repository.LoginRepo;

@Service
public class LoginService {

	@Autowired
	 LoginRepo myloginrepo;
	
	public String saveData(Login logindata) {
		myloginrepo.save(logindata);
		
		return "success";
	}

	
	
}
