package com.bc.model.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Command 페이지
public interface Command {
	public String exec(HttpServletRequest request, 
			HttpServletResponse response);

	String exec(HttpServletRequest request, HttpServletResponse response, Object freelist);


}
