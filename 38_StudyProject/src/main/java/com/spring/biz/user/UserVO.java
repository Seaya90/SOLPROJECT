package com.spring.biz.user;

import java.sql.Date;

/*
	CREATE TABLE LOGIN (
	"IDX" NUMBER, 
	"ID" VARCHAR2(100 BYTE), 
	"PWD" VARCHAR2(100 BYTE), 
	"REGDATE" DATE, 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	 PRIMARY KEY ("IDX")
	 * */
public class UserVO {
	private int idx;
	private String id;
	private String pwd;
	private Date regdate;
	private String user_name;
	private String gender;
	
public UserVO(int idx, String id, String pwd, Date regdate, String user_name, String gender) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.regdate = regdate;
		this.user_name = user_name;
		this.gender = gender;
	}

public int getIdx() {
	return idx;
}

public void setIdx(int idx) {
	this.idx = idx;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPwd() {
	return pwd;
}

public void setPwd(String pwd) {
	this.pwd = pwd;
}

public Date getRegdate() {
	return regdate;
}

public void setRegdate(Date regdate) {
	this.regdate = regdate;
}

public String getUser_name() {
	return user_name;
}

public void setUser_name(String user_name) {
	this.user_name = user_name;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

@Override
public String toString() {
	return "UserVO [idx=" + idx + ", id=" + id + ", pwd=" + pwd + ", regdate=" + regdate + ", user_name=" + user_name
			+ ", gender=" + gender + "]";
}

}

