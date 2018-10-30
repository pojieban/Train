package com.train.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.train.bean.User;

import com.train.dao.UserDao;
//创建Service
@Service
public class UserServiceImpl implements UserService {
   //自动注入
	@Autowired
	private UserDao dao;
	
	@Override
	public List<User> findUser() {
		// TODO Auto-generated method stub
		return dao.selectUser();
	}
	

}
