package com.partprime.springjsp.user;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.partprime.springjsp.user.mapper.UserMapper;

@Service
public class UserService implements UserDetailsService {
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	UserMapper userMapper;

	//@Autowired
	private SqlSessionTemplate sqlSession;
	
	public UserService() {
		// TODO Auto-generated constructor stub
	}

	public UserService(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated constructor stub
		this.sqlSession = sqlSession;
	}
	
	@Override
	public UserDetails loadUserByUsername(String userIdx) throws UsernameNotFoundException {
		User user = userMapper.readUser(userIdx);
		if (user != null) {
			user.setAuthorities(getAuthorities(user.getUsername()));
		}
		return user;
	}

	public Collection<GrantedAuthority> getAuthorities(String userIdx) {
		List<String> string_authorities = userMapper.readAuthority(userIdx);
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (String authority : string_authorities) {
			authorities.add(new SimpleGrantedAuthority(authority));
		}
		return authorities;
	}
}
