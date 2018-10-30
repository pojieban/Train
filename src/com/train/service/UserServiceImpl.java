package com.train.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.train.bean.User;

import com.train.dao.UserDao;
//����Service
@Service
public class UserServiceImpl implements UserService {
   //�Զ�ע��
	@Autowired
	private UserDao dao;
	
	@Override
	public List<User> findUser() {
		// TODO Auto-generated method stub
		return dao.selectUser();
	}
	

}
