package kr.ync.project.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.ync.project.domain.UserVO;
import kr.ync.project.service.UserService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private UserService service;
	
	private void saveDest(HttpServletRequest req) {

		String uri = req.getRequestURI();

		String query = req.getQueryString();

		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}

		if (req.getMethod().equals("GET")) {
			log.info("dest: " + (uri + query));
			req.getSession().setAttribute("dest", uri + query);
		}
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		log.info("★★★★★★★★★★★★★★데이터 들어오냐!!기모띠★★★★★★★★★★★★★★★★★★★");

		if (session.getAttribute("login") == null) {

			log.info("current user is not logined");

			saveDest(request);
/*			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {

				UserVO userVO = service.checkLoginBefore(loginCookie.getValue());

				logger.info("USERVO: " + userVO);

				if (userVO != null) {
					session.setAttribute("login", userVO);
					return true;
				}

			}
*/
			response.sendRedirect("/login");
			return false;
		}
		return true;
	}


}

// if(session.getAttribute("login") == null){
//
// logger.info("current user is not logined");
// response.sendRedirect("/user/login");
// return false;
// }
