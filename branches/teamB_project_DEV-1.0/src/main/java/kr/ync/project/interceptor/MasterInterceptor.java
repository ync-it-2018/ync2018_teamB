package kr.ync.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;

/*회원관리 인터셉터*/
@Slf4j
public class MasterInterceptor extends HandlerInterceptorAdapter {

	private static final String Master = "Master";

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object UserVO = modelMap.get("UserVO");
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (UserVO != null) {
			/*post관련 작업시 데이터가 제대로 넘어왔을경우*/
			log.info("★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★");
			session.setAttribute(Master, UserVO);

			response.sendRedirect("/admin/master");
			
		}
	}

	/*삭제관련 기능수행*/
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(Master) != null) {
			log.info("clear master data before");
			session.removeAttribute(Master);
		}

		return true;
	}
}
