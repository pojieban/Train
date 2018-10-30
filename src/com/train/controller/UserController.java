package com.train.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.train.bean.User;
import com.train.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping("user.do")
	public ModelAndView userList() {
		
		System.out.println("gx");
		
		List<User> list=service.findUser();
		
		System.out.println(list);
		return null;
	}

}
