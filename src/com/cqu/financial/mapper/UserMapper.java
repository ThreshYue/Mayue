package com.cqu.financial.mapper;

import java.util.List;

import com.cqu.financial.entity.User;

public interface UserMapper {
	public User getUserByName(String userName);
	public boolean addUser(User user);
}
