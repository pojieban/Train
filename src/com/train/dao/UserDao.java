package com.train.dao;

import java.util.List;

import com.train.bean.User;

public interface UserDao {

	List<User> selectUser();
}
