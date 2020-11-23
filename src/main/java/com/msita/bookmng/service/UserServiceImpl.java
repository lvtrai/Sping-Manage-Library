package com.msita.bookmng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msita.bookmng.dao.UserDAO;
import com.msita.bookmng.model.User;


@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	public void createUser(User user) {
		userDAO.createUser(user);
	}
}
