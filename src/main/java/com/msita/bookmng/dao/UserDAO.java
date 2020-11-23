package com.msita.bookmng.dao;

import com.msita.bookmng.model.User;

public interface UserDAO {
	public User getUserByUsername(String username);
	public void createUser(User user);
}
