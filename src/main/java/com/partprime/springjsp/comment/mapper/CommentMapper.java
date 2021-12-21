package com.partprime.springjsp.comment.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.partprime.springjsp.comment.CommentVo;

@Repository
public interface CommentMapper {
	public List<CommentVo> selectComment(CommentVo commentvo) throws Exception;
}
