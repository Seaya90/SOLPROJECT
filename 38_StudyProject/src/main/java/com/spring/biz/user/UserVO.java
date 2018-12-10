package com.spring.biz.user;

import java.sql.Date;

/*CREATE TABLE MEMBER (
    IDX NUMBER PRIMARY KEY,
    ID VARCHAR2(20) NOT NULL,
    PWD VARCHAR2(20) NOT NULL,
    NAME VARCHAR(10) NOT NULL,
    GENDER VARCHAR(4),
    PHONE VARCHAR2(30),
    ADDRESS VARCHAR2(100),
    REGDATE DATE);
CREATE SEQUENCE MEMBER_SEQ
    NOCACHE;
*/

public class UserVO {
	private int idx;
	private String id;
	private String pwd;
	private String name;
	private String gender;
	private String phone;
	private String address;
	private Date regdate;
	private int member_seq;
	
	public UserVO(int idx, String id, String pwd, String name, String gender, String phone, String address,
			Date regdate, int member_seq) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.regdate = regdate;
		this.member_seq = member_seq;
	}

	public UserVO() {
		
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}

	@Override
	public String toString() {
		return "UserVO [idx=" + idx + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender
				+ ", phone=" + phone + ", address=" + address + ", regdate=" + regdate + ", member_seq=" + member_seq
				+ "]";
	}
	
	
}
 