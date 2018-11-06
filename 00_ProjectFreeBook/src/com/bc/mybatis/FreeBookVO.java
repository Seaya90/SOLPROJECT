package com.bc.mybatis;

public class FreeBookVO {
	
	private String idx, name, content, subject, pwd, regdate;

	public FreeBookVO() {
		super();
	}
	
	
	public FreeBookVO(String idx, String name, String  content, String subject, String pwd, String regdate) {
		super();
		this.idx = idx;
		this.name = name;
		this.content = content;
		this.subject = subject;
		this.pwd = pwd;
		this.regdate = regdate;
		

	}
	

	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getIdx() {
		return idx;
	}


	public void setIdx(String idx) {
		this.idx = idx;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getRegdate() {
		return regdate;
	}


	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "FreeBookVO [idx=" + idx + ", name=" + name + ", subject=" + subject + ", pwd=" + pwd + ", regdate="
				+ regdate + "]";
	}
	
	
	

}
