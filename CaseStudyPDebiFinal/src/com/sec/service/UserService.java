package com.sec.service;

import com.sec.dao.UserDao;
import com.sec.model.User;
import com.sec.repository.UserRepository;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.stereotype.Service;

@Service("userDetailsService")
@Transactional
public class UserService implements UserDao, UserDetailsService{

	@Autowired
	private UserRepository uRepo;
	
	public UserService() {
		
	}
	
	@Autowired
	public UserService(UserRepository repository) {
		super();
		this.uRepo = repository;
	}
	
	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		List<User> list = new ArrayList<User>();
		uRepo.findAll().forEach(e->list.add(e));
				
		return list;
	}
	
	
	@Override
	public User getUserByUsername(String un) {
		// TODO Auto-generated method stub
		
		User user = uRepo.findByUsername(un);
		return user;
	}

//	@Override
//	public User getUserById(Long id) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
		try {
			uRepo.save(user);
			return true;
		}catch(Exception ex) {
			return false;
		}
		
	}

	@Override
	public boolean deleteUserById(Long id) {
		// TODO Auto-generated method stub
		
		try {
			uRepo.deleteById(id);
			return true;
		}catch (Exception ex) {
			return false;
		}
		
	}

	
	
	//Spring Security Specific
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//From DB
		User user = uRepo.findByUsername(username);
		
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
