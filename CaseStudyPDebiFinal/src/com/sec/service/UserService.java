package com.sec.service;

import com.sec.model.User;
import com.sec.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.stereotype.Service;

@Service("userDetailsService")
public class UserService implements UserDetailsService{

	
	@Autowired
	UserRepository userRepository;
	

	public void saveUser (User user) {
		userRepository.save(user);
	}
	
	//Spring Security Specific
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//From DB
		User user = userRepository.findByUsername(username);
		
		//To comply with Spring Sec User
		UserBuilder builder = null;
		
		if(user != null) {
			builder = org.springframework.security.core.userdetails.User.withUsername(username);
			builder.password(user.getPassword());
			builder.disabled(!user.isEnabled());
			String [] authorities = user.getAuthorities()
					.stream().map(
							a -> a.getAuthority()).toArray(String[]::new);
			
			builder.authorities(authorities);
		}else {
			throw new UsernameNotFoundException("User Not Found!");
		}
		
		return builder.build();
	}
}
