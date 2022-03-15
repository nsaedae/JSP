package kr.co.board2.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.board2.controller.CommonService;
import kr.co.board2.dao.ArticleDao;
import kr.co.board2.vo.ArticleVo;

public class WriteService implements CommonService {

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		if(req.getMethod().equals("GET")) {
			return "/write.jsp";
		}else {
			
			String title   = req.getParameter("title");
			String content = req.getParameter("content");
			String fname   = req.getParameter("fname");
			String uid     = req.getParameter("uid");
			String regip   = req.getRemoteAddr();
			
			ArticleVo vo = new ArticleVo();
			vo.setTitle(title);
			vo.setContent(content);
			vo.setFile(fname == null ? 0 : 1);
			vo.setUid(uid);
			vo.setRegip(regip);
			
			ArticleDao.getInstance().insertArticle(vo);
			
			return "redirect:/Board2/list.do";
		}
		
		
	}

}
