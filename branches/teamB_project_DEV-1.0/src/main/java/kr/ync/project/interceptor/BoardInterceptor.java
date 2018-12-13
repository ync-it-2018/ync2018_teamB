package kr.ync.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class BoardInterceptor extends HandlerInterceptorAdapter {

	private static final String BOARD = "Board";

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object BoardVO = modelMap.get("BoardVO");
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (BoardVO != null) {

			log.info("★★★★★★★★★★★★★★★★★★★new write success");
			session.setAttribute(BOARD, BoardVO);

			response.sendRedirect("/front/freeboard");
			
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(BOARD) != null) {
			log.info("clear Board data before");
			session.removeAttribute(BOARD);
		}

		return true;
	}
}
