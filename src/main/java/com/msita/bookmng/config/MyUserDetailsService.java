package com.msita.bookmng.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.msita.bookmng.dao.UserDAO;
import com.msita.bookmng.model.User;


@Service("userDetailsService")
public class MyUserDetailsService implements UserDetailsService{
	
	@Autowired
    private UserDAO userDAO;
	
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userDAO.getUserByUsername(username);
        
		UserBuilder builder = null;
        if (user!=null) {
            builder = org.springframework.security.core.userdetails.User.withUsername(username);
            builder.disabled(false);
            builder.password(user.getPassword());
            builder.authorities("ROLE_" + user.getRole());
        } else {
            throw new UsernameNotFoundException("User not found.");
        }
        return builder.build();
	}
}
