package kr.ync.project.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;

/*로그인 관련 인터셉터*/
@Slf4j
public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "login";

	/*로그인 POST관련 기능수행시 가로챈다*/
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO");
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (userVO != null) {
			/*로그인 성공시 출력 메시지*/
			log.info("★★★★★★★★★★★★★★★★★★★new login success");
			session.setAttribute(LOGIN, userVO);

				/*로그인에 성공했을시 로그인 정보를 세션에 저장하는 기능(이름은 쿠기이지만 세션에 저장)*/
				log.info("remember me................");
				Cookie loginCookie = new Cookie("loginCookie", session.getId());
				loginCookie.setPath("/");
				loginCookie.setMaxAge(60 * 60 * 24 * 2); // 이틀동안 브라우저 유지
				response.addCookie(loginCookie);
			
			Object dest = session.getAttribute("dest");
			/*성공후 메인화면으로 넘어감*/
			response.sendRedirect(dest != null ? (String) dest : "/");
		}
	}

	/*삭제관련 인터셉터*/
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(LOGIN) != null) {
			log.info("clear login data before");
			session.removeAttribute(LOGIN);
		}

		return true;
	}
}