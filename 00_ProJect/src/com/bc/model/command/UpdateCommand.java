package com.bc.model.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.freebook.vo.FreeBookVO;
import com.bc.model.dao.DAO;

public class UpdateCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String chk = request.getParameter("update_chk");
		String idx = request.getParameter("idx");
		
		String path = null;
		if (chk == null) {
			path = "update.jsp";
		} else {
			FreeBookVO vo = new FreeBookVO();
			vo.setIdx(idx);
			vo.setName(request.getParameter("name"));
			vo.setSubject(request.getParameter("subject"));
			vo.setContent(request.getParameter("content"));
			vo.setPwd(request.getParameter("pwd"));
			
			DAO.update(vo);
			
			path = "MyCon?type=one&idx" + idx;
		}
		return path;
	}

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response, Object freelist) {
		// TODO Auto-generated method stub
		return null;
	}

}
