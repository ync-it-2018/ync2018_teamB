package kr.ync.project.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.service.BoardService;
@Controller
@RequestMapping("/front")
public class boardController {

	private static final Logger logger = LoggerFactory.getLogger(boardController.class);

	@Autowired
	private BoardService service;

	@GetMapping(value = "/freeboard")
	public String BoardGET(Model model) throws Exception {
		logger.info("show all List...............");
		model.addAttribute("list", service.listAll());
		
		return "front/freeboard";
	}
	
	@GetMapping(value = "/freeboard_view")
	public String read(@RequestParam("free_board_num") int free_board_num,Model model) throws Exception {
		logger.info("show free board view...............");
		model.addAttribute(service.read(free_board_num));
		
		return "front/freeboard_view";
		
	}


	@PostMapping(value = "/boardwritefail")
	public void BoardPOST(BoardVO vo, HttpSession session, Model model) throws Exception {

		service.regist(vo);
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (vo == null) {
			return;
		}

		model.addAttribute("BoardVO", vo);

	}
	
	@PostMapping(value = "/freeboard_remove")
	public String remove(@RequestParam("free_board_num") int free_board_num, 
			RedirectAttributes rttr) throws Exception {

		service.remove(free_board_num);
		
		rttr.addFlashAttribute("msg", "Success");
		
		return "redirect:/front/freeboard";

	}
	
	@GetMapping(value = "/freeboard_modify")
	public void modifyGET(int free_board_num, Model model) throws Exception {
		logger.info("show modifyGET...............");
		model.addAttribute(service.read(free_board_num));
				
	}
	
	@PostMapping(value = "/freeboard_modify")
	public String modifyPOST(BoardVO board, RedirectAttributes rttr) throws Exception {

		logger.info("mod POST...............");
		service.modify(board);
	
		rttr.addFlashAttribute("msg", "Success");
		
		return "redirect:/front/freeboard";

	}

	
	

	/*@PostMapping(value = "/loginPost")
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {

		UserVO vo = service.login(dto);

		if (vo == null) {
			return;
		}

		model.addAttribute("userVO", vo);

		if (dto.isUseCookie()) {

			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getUids(), session.getId(), sessionLimit);
		}

	}*/

//	@GetMapping(value = "/logout")
//	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
//			throws Exception {
//
//		logger.info("logout.................................1");
//
//		Object obj = session.getAttribute("login");
//
//		if (obj != null) {
//			UserVO vo = (UserVO) obj;
//			logger.info("logout.................................2");
//			session.removeAttribute("login");
//			session.invalidate();
//
//			logger.info("logout.................................3");
//			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
//
//			if (loginCookie != null) {
//				logger.info("logout.................................4");
//				loginCookie.setPath("/");
//				loginCookie.setMaxAge(0);
//				response.addCookie(loginCookie);
//				service.keepLogin(vo.getUids(), session.getId(), new Date());
//				logger.info("logout success................");
//			}
//		}
//		response.sendRedirect("/sboard/list");
//	}
}
