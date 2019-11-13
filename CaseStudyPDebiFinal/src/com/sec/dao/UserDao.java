package com.sec.dao;

import java.util.List;

import com.sec.model.User;

public interface UserDao {

	public List<User> getAllUsers();
	public User getUserByUsername(String username);
	public boolean saveUser(User user);
	public boolean deleteUserById(Long id);
	
	
	
}
