package kr.co.board2.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.board2.controller.CommonService;
import kr.co.board2.vo.UserVo;

public class ListService implements CommonService {

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession sess = req.getSession();
		UserVo userVo = (UserVo) sess.getAttribute("sessUser");
		
		if(userVo == null) {
			return "redirect:/Board2/user/login.do";	
		}else {
			return "/list.jsp";
		}
	}

}
