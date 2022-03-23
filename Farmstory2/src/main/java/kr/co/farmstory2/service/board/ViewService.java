package kr.co.farmstory2.service.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.farmstory2.dao.ArticleDao;
import kr.co.farmstory2.vo.ArticleVo;
import kr.co.farmstory2.vo.UserVo;
import kr.co.farmstory2.controller.CommonService;

public class ViewService implements CommonService {

	@Override
	public String businessProc(HttpServletRequest req, HttpServletResponse resp) {
		
		// 로그인 여부 확인
		HttpSession sess = req.getSession();
		UserVo userVo = (UserVo) sess.getAttribute("sessUser");
		
		if(userVo == null) {
			return "redirect:/Farmstory2/user/login.do?success=103";
		}else {
			String cate = req.getParameter("cate");
			String type = req.getParameter("type");
			String no   = req.getParameter("no");
			
			ArticleDao dao = ArticleDao.getInstance();
			
			ArticleVo article = dao.selectArticle(no);
			List<ArticleVo> comments = dao.selectComments(no);
			
			req.setAttribute("article", article);
			req.setAttribute("comments", comments);
			req.setAttribute("cate", cate);
			req.setAttribute("type", type);
			
			return "/board/view.jsp";
		}
	}
}
