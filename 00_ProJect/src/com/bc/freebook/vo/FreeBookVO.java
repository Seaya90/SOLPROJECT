package com.bc.freebook.vo;

public class FreeBookVO {
	private String idx, name, subject, content, pwd, regdate;
	
	public FreeBookVO() {
		super();
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
		return "GuestbookVO [idx=" + idx + ", name=" + name + ", subject=" + subject + ", "
				+ "content=" + content + ", pwd=" + pwd + ", regdate=" + regdate + "]";
	}
	
	
	
	
}
