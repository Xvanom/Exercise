package com.partprime.springjsp.user.mapper;

import java.util.List;

import com.partprime.springjsp.user.User;

public interface UserMapper {
	// Spring Login
	public User readUser(String username);
	public List<String> readAuthority(String username);
}