package com.bc.model.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.freebook.vo.FreeBookVO;
import com.bc.model.dao.DAO;

public class OneCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//전달받은 idx값 추출
		String idx = request.getParameter("idx");
		
		FreeBookVO vo = DAO.selectOne(idx);
		request.getSession().setAttribute("freebookVO", vo);
		
		
		return "onelist.jsp";
	}

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response, Object freelist) {
		// TODO Auto-generated method stub
		return null;
	}

}
