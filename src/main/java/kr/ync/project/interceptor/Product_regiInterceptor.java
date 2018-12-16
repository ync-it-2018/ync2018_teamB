package kr.ync.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Product_regiInterceptor extends HandlerInterceptorAdapter {

	private static final String Product_regi = "product";

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object product_regiVO = modelMap.get("product_regiVO");
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (product_regiVO != null) {

			log.info("★★★★★★★★★★★★★★★★★★★new write success");
			session.setAttribute(Product_regi, product_regiVO);
			
			response.sendRedirect("/");

		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(Product_regi) != null) {
			log.info("clear Product_regi data before");
			session.removeAttribute(Product_regi);
		}

		return true;
	}
}
