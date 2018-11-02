package com.bc.model.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.freebook.vo.FreeBookVO;

public class DeleteCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String chk = request.getParameter("delete_chk");
		String idx = request.getParameter("idx");
		String path = null;
		if (chk == null) {
			path = "delete.jsp";
		} else {
			//전달받은 idx값과 일치하는 데이타 DB에 삭제처리
			DAO.delete(idx);
			
			path = "MyCon?type=list";
		}
		
		return path;
	}

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response, Object freelist) {
		// TODO Auto-generated method stub
		return null;
	}

}
