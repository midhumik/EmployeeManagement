package com.org.EmployeeManagement.controller;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.EmployeeManagement.entity.Manager;

@Controller
public class HomeController {

	@Autowired
	SessionFactory factory;
	
	@RequestMapping("/")
	public String displayWelcomePage() {
		return "welcome";
	}
	
	@PostMapping("/login")
	@Transactional
	public String login(@RequestParam("username")String user,@RequestParam("password")String pass) {
		Session sess= factory.getCurrentSession();
		Manager m=null;
		try {
			m=sess.get(Manager.class,user);
			if(m.getPassword().equalsIgnoreCase(pass)) {
				return "redirect:/employee/list";
			}
			else {
				return "error-page";
			}
		}
		catch(Exception e) {
			return "error-page";
		}

	}
	@RequestMapping("/goback")
	public String gotoLogin() {
		return "welcome";
	}
}
