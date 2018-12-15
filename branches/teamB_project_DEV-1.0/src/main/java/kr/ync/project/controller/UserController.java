package kr.ync.project.controller;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@PostMapping(value = "/userPost")
	public void memberRegist(UserVO vo,Model model,HttpServletResponse response) throws Exception{
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		StringBuilder strbuild = new StringBuilder();
		//중복처리
		int count = service.findMember(vo.getUSER_ID());
		if(count == 0) {
			//회원가입 서비스
			int result = service.userRegist(vo);
			if(result == 1) {
				strbuild.append("<script>");
				strbuild.append("	alert('회원가입에 성공하였습니다.');");
				strbuild.append("	location.href='../login';");
				strbuild.append("</script>");
				out.println(strbuild.toString());
				out.flush();
			} else {
				strbuild.append("<script>");
				strbuild.append("	location.href='../error/sqlerror.jsp';");
				strbuild.append("</script>");
				out.print(strbuild.toString());
				out.flush();
			}
			
		} else {
			strbuild.append("<script>");
			strbuild.append("	alert('이미 존재하는 아이디입니다');");
			strbuild.append("	location.href='../login';");
			strbuild.append("</script>");
			out.println(strbuild.toString());
			out.flush();
		}
		
		
		
		
	}
	
	
	
	
}
