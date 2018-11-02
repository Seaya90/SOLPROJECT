package com.bc.model.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.freebook.vo.FreeBookVO;
import com.bc.model.dao.DAO;

public class ListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<FreeBookVO>list = DAO.getList();
		request.setAttribute("attr_list", list);
		return "list.jsp";
	}

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response, Object freelist) {
		// TODO Auto-generated method stub
		return null;
	}

}
