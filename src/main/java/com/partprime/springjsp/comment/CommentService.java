package com.partprime.springjsp.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.partprime.springjsp.comment.mapper.CommentMapper;

@Service
public class CommentService {
	
	@Autowired
	private CommentMapper commentmapper;
	
	public List<CommentVo> selectComment(CommentVo commentvo) throws Exception{
		
		return commentmapper.selectComment(commentvo); 
	}
}
