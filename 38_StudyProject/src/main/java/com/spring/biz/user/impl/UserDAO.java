package com.spring.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.spring.biz.common.JDBCUtil;
import com.spring.biz.user.UserVO;

@Repository("userDAO")
public class UserDAO {
	//JDBC관련 변수
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	
	
	//sql 명령어
	private final String MEMBER_GET
		= "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ?";
	
	//CRUD 기능 메소드, 회원정보 조회
	public UserVO getUser(UserVO vo) {
		System.out.println("=========>JDBC로 getUser()기능 처리");
		UserVO user = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(MEMBER_GET);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPwd());
			rs = stmt.executeQuery();
			
			if (rs.next()) {
				user = new UserVO();
				user.setId(rs.getString("ID"));
				user.setPwd(rs.getString("PWD"));
				user.setName(rs.getString("NAME"));
				user.setAddress(rs.getString("ADDRESS"));
			} 
			
		} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JDBCUtil.close(rs, stmt, conn);
			}
			return user;
		}
		
}


