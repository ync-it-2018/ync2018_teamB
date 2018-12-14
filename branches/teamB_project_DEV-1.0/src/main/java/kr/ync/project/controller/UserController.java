package kr.ync.project.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.UserService;

/*컨트롤러 선언과 기본 주소값*/
@Controller
@RequestMapping("/front")
public class UserController {

	private static Logger logger = LoggerFactory.getLogger(UserController.class);

	/*UserService를 service라는 이름으로 불러옴*/
	@Autowired
	private UserService service;


	@PostMapping(value = "/loginPost")
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		/*전달받은 dto값을 service의 login으로 보내서 리턴받은 값을 vo에 저장*/
		UserVO vo = service.login(dto);

		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.
		if (vo == null) { return; }/*로그인 실패시 loginPost로 감*/
		model.addAttribute("userVO", vo);

		/*로그인 유지를 위해 세션에 정보를 저장*/
		if (dto.isUseCookie()) {
			int amount = 60 * 60 * 24 * 7; // 7일동안 유지
			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));/*세션 유지기간 설정*/

			/*keepLogin을 이용하여 로그인정보 저장*/
			service.keepLogin(vo.getUSER_ID(), session.getId(), sessionLimit);
		}
	}
	
	
	
	
}
