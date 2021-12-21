package com.partprime.springjsp.comment;

import java.util.Date;

public class CommentVo {
	private String memberid;
	private Date regdate;
	private String relscope; 	// 공개범위
	private String subject; 	// 진찰과목
	private String comment; 	// 내용
	private String img;

	@Override
	public String toString() {
		return "CommentVo [memberid=" + memberid + ", regdate=" + regdate + ", relscope=" + relscope + ", subject="
				+ subject + ", comment=" + comment + ", img=" + img + "]";
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getRelscope() {
		return relscope;
	}

	public void setRelscope(String relscope) {
		this.relscope = relscope;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
