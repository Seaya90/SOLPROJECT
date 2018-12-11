package com.spring.view.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpOutputMessage;

import com.spring.biz.user.UserVO;
import com.spring.biz.user.impl.UserDAO;

//@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet{
	private static final long seralVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
			process(request, response);
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		process(request, response);
	}
	

	private void process(HttpServletRequest request, HttpServletResponse response) 
		throws IOException{
	System.out.println(">>>> *.do에 대한 요청 처리");
	
		//클라이언트의 요청 path정보 추출
	String uri = request.getRequestURI();
	System.out.println("uri: " + uri); //uri : /BoardWeb/login.do
	
	String path = uri.substring(uri.lastIndexOf("/"));
	System.out.println("path: " + path);
	
		//클라이언트의 요청 path에 대한 처리
	if (path.equals("/login.do")) {
		
		//사용자가 입력한 데이타(정보) 추출
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		
		//DB연동처리
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPwd(pwd);
		
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);
		
		//3. 화면 네비게이션(화면이동)
		if (user != null) { //사용자가 존재하는 경우
			response.sendRedirect("home.do");
		} else { //사용자가 없는 경우
			response.sendRedirect("login.jsp");
		}
	} else if (path.equals("/login_proc.do")) {
		//사용자가 입력한 데이타 추출
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//DB연동 처리(ID,PASSWORD 유무 확인)
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPwd(pwd);
		System.out.println("VO: " + vo);
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);
		
		System.out.println("user : " + user);
		//화면 네비게이션(화면이동)
		if (user != null) {
			//로그인 성공
			response.sendRedirect("home.jsp");
		} else {
			//로그인 실패
			response.sendRedirect("login.jsp");
		}
	
	} else if (path.equals("/logout.do")) {
		System.out.println(">>> 로그아웃 요청 처리");
		//1. 브라우저와 연결된 세션 객체를 종료(초기화)
		HttpSession session = request.getSession();
		session.invalidate();

		//2. 화면 네비게이션(로그인 페이지)
		response.sendRedirect("login.jsp");
		
	} else if (path.equals("/member.do")) {
		System.out.println(">>> 회원가입 요청처리");
		
		//1. 전달 받은 데이타 추출
		request.setCharacterEncoding("UTF-8"); //한글처리
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String member_seq = request.getParameter("member_seq");
		//2. DB 연동 처리(데이타 입력)
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setName(name);
		vo.setGender(gender);
		vo.setPhone(phone);
		vo.setAddress(address);
		vo.setMember_seq(Integer.parseInt(member_seq));
		
//		
//		BoardDAO boardDAO = new BoardDAO();	
//		boardDAO.insertBoard(vo);
//		
//		//3. 화면 네비게이션(목록페이지로 이동)
//		response.sendRedirect("getBoardList.do");
//	} else if (path.equals("/updateBoard.do")) {
//		System.out.println(">>> 글 수정 요청 처리");
//		//1. 전달 받은 값 추출
//		request.setCharacterEncoding("UTF-8");
//		String title = request.getParameter("title");
//		String writer = request.getParameter("writer");
//		String content = request.getParameter("content");
//		String seq = request.getParameter("seq");
//		
//		//2. 업무처리-DB 연동 처리(수정) 
//		BoardVO vo = new BoardVO();
//		vo.setTitle(title);
//		vo.setWriter(writer);
//		vo.setContent(content);
//		vo.setSeq(Integer.parseInt(seq));
//		
//		BoardDAO boardDAO = new BoardDAO();
//		boardDAO.updateBoard(vo);
//		
//		//3. 화면 네비게이션 처리(목록 페이지로)
//		response.sendRedirect("getBoardList.do");
//	} else if (path.equals("/deleteBoard.do")) {
//		System.out.println(">>> 글 삭제 요청 처리");
//		//1. 전달받은 값 추출
//		String seq = request.getParameter("seq");
//		
//		//2. 업무처리-DB연동작업(삭제)
//		BoardVO vo = new BoardVO();
//		vo.setSeq(Integer.parseInt(seq));
//		
//		BoardDAO boardDAO = new BoardDAO();
//		boardDAO.deleteBoard(vo);
//		
//		//3. 화면 네비게이션 처리(목록)
//		response.sendRedirect("getBoardList.do");
//	} else if (path.equals("/getBoard.do")) {
//		System.out.println(">>> 글 상세 조회 요청 처리");
//		//1. 전달 받은 값 추출
//		String seq = request.getParameter("seq");
//		
//		//2. DB 연동처리(하나의 글 조회)
//		BoardVO vo = new BoardVO();
//		vo.setSeq(Integer.parseInt(seq));
//		
//		BoardDAO boardDAO = new BoardDAO();
//		BoardVO board = boardDAO.getBoard(vo);
//		
//		//3. 화면 네비게이션(상세페이지로 이동)
//		//3-1. 상세페이지에서 사용할 데이타 전달
//		request.getSession().setAttribute("board", board);
//		
//		//3-2. 상세페이지로 이동
//		response.sendRedirect("getBoard.jsp");
//	} else if (path.equals("/getBoardList.do")) {
//		System.out.println(">>> 글 목록 조회 요청 처리");
//		
//		//1. 전달받은 값 추출
//		//2. DB연동처리
//		BoardVO vo = new BoardVO();
//
//		BoardDAO boardDAO = new BoardDAO();
//		List<BoardVO> boardList = boardDAO.getBoardList(vo);
//		
//		//3. 화면네비게이션 목록화면으로 이동
//		//3-1. 목록 화면에서 사용할 수 있도록 세션에 저장
//		HttpSession session = request.getSession();
//		session.setAttribute("boardList", boardList);
//		
//		//3-2. 목록화면으로 이동
//		response.sendRedirect("getBoardList.jsp");
	} 
}

}
