package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;
import kr.ync.project.service.BoardService;

@Controller
public class categorymentController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/categoryment", method = RequestMethod.GET)
	public String categoryment(Locale locale, Model model) {

		logger.info("teamB log categoryment 페이지", locale);

		logger.info("show all List...............");
		//model.addAttribute("list", service.listAll());
		return "admin/categoryment";
	}
	
}