package kr.ync.project.controller.admin;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.controller.HomeController;
import kr.ync.project.domain.UserVO;
import kr.ync.project.service.UserService;

/*최고권한자 관리 컨트롤러*/
@Controller
public class masterController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/*UserService의 정보를 service로 불러옴*/
	@Autowired
	private UserService service;

	/*master페이지를 불러올때 user정보를 불러와 masterlist라는 이름으로 저장후 리턴해줌*/
	@GetMapping(value = "/master")
	public String master(Model model) throws Exception {

		logger.info("show all List...............");
		model.addAttribute("masterlist", service.listAll());

		return "admin/master";
	}
	
	/*삭제 컨트롤러*/
	@PostMapping(value = "/master")
	public String delete_user(@RequestParam("USER_NUM") int USER_NUM, RedirectAttributes rttr) throws Exception {
		service.userdelete(USER_NUM);
		rttr.addFlashAttribute("msg", "Success");

		// 목록 페이지로 이동
		return "redirect:/master_user_remove";
//		return "admin/master_user_remove";
	}
	

	@PostMapping(value = "/admin")
	public void deleteMember(UserVO vo, HttpSession session, Model model) throws Exception {

		// service.userdelete(vo);

		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.
		if (vo == null) {
			return;
		}

		model.addAttribute("UserVO", vo);

	}

}