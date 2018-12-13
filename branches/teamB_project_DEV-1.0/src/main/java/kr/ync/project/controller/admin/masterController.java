package kr.ync.project.controller.admin;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.controller.HomeController;
import kr.ync.project.domain.UserVO;
import kr.ync.project.service.UserService;

@Controller
public class masterController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private UserService service;

	@GetMapping(value = "/master")
	public String master(Model model) throws Exception {

		logger.info("show all List...............");
		model.addAttribute("masterlist", service.listAll());

		return "admin/master";
	}
	
	@PostMapping(value = "/admin")
	public void deleteMember(UserVO vo, HttpSession session, Model model) throws Exception {
		
		//service.userdelete(vo);
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (vo == null) {
			return;
		}

		model.addAttribute("UserVO", vo);

	}
	
	/*@GetMapping(value = "/freeboard")
	public String BoardGET(Model model) throws Exception {
		
		
		return "front/freeboard";
	}*/
	
	
}