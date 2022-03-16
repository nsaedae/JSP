package kr.co.board2.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.board2.controller.CommonService;
import kr.co.board2.dao.ArticleDao;
import kr.co.board2.db.DBConfig;
import kr.co.board2.vo.ArticleVo;

public class ViewService implements CommonService {

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		String no = req.getParameter("no");
		ArticleVo article = ArticleDao.getInstance().selectArticle(no);
		
		req.setAttribute("article", article);
		
		return "/view.jsp";
	}

}
