package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

/*이벤트 관리 페이지 이동 컨트롤러*/
@Controller
public class eventmentController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/eventment", method = RequestMethod.GET)
	public String eventment(Locale locale, Model model) {

		logger.info("teamB log eventment 페이지", locale);

		return "admin/eventment";
	}
	
}