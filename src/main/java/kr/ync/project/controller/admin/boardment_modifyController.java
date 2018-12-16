package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

/*어드민의 자유게시판 수정페이지로 이동하는 컨트롤러*/
@Controller
public class boardment_modifyController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/boardment_modify", method = RequestMethod.GET)
	public String buystat(Locale locale, Model model) {

		logger.info("teamB log buystat 페이지", locale);

		return "admin/boardment_modify";
	}
	
}