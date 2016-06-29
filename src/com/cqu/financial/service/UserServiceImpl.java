package com.cqu.financial.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqu.financial.entity.User;
import com.cqu.financial.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	UserMapper userMapper;

	@Override
	public User checkUser(String userName, String Pass) {
		User user = userMapper.getUserByName(userName);
		if (user != null && user.getUserPass().equals(Pass)) {
			return user;
		}
		return null;
	}

	@Override
	public boolean addUser(User user) {
		return userMapper.addUser(user);
	}

	@Override
	public boolean isExistUserName(String userName) {
		if (userMapper.getUserByName(userName) == null)
			return false;
		return true;
	}

}
