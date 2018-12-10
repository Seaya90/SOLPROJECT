package com.spring.biz.user;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {
	
	public static void main(String[] args) {
		//스프링 컨테이너 기동
		AbstractApplicationContext container 
			= new GenericXmlApplicationContext("applicationContext.xml");
		System.out.println("=========== 스프링컨테이너 기동 후 ============");
		
		
		//객체 사용, 컨테이너로 부터 UserServiceImpl 객체 가져오기 (Lookup)
		UserService userService 
			= (UserService)container.getBean("userService");
		
		//사용자 조회
		UserVO vo = new UserVO();
		vo.setId("user");
		vo.setPwd("0000");
		
		UserVO user = userService.getUser(vo);
		if(user != null) {
			System.out.println("[로그인 성공]"
			 	+ user.getName() + "님 환영합니다.");
		} else {
			System.out.println("[로그인 실패]"
					+ "존재하지 않는 사용자입니다.");
		}
		
		container.close();
		
	}

}
