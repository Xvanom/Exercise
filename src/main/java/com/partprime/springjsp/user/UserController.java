package com.partprime.springjsp.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	// Join
	@GetMapping("/user/")
	protected ModelAndView index() {
		ModelAndView mav = new ModelAndView("user/index");
		return mav;
	}
	
	// Join
	@GetMapping("/join")
	protected ModelAndView join(
			@RequestParam("password") String password
			) {
		ModelAndView mav = new ModelAndView("user/join");
		
		BCryptPasswordEncoder BCrypt = new BCryptPasswordEncoder();
		password = BCrypt.encode(password);
		
		mav.addObject("password", password);
		return mav;
	}

}
