package com.partprime.springjsp.comment;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommentController {
	private static final Logger logger = LoggerFactory.getLogger(CommentController.class);
	
	@Autowired
	private CommentService commentservice;
	
	@GetMapping("/show")
	public String show(CommentVo commentvo, Model model) throws Exception{
		logger.info("commemt controller 접근성공!");
		model.addAttribute("model", commentservice.selectComment(commentvo));
		return "user/index";
	}

}
