package kr.ync.project.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.PageMaker;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.service.BoardService;

/* 자유게시판의 기능을 수행하는 컨트롤러*/
@Controller
@RequestMapping("/front")/* 기본 주소값 */
public class boardController {

	private static final Logger logger = LoggerFactory.getLogger(boardController.class);

	/* BoardService의 정보를 불러옴*/
	@Autowired
	private BoardService service;

	/* 자유게시판에 들어갔을때 리스트형식으로 값을 전달해줌*/
	@GetMapping(value = "/freeboard")
	public void BoardGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString()); // SearchCriteria 객체의 값
		//페이징, 검색기능 위한 해당 메소드 호출
		model.addAttribute("list", service.listSearchCriteria(cri));
		// 페이징 값 설정 하기위해 사용
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//전체 카운트를 매기기 위해 사용
		pageMaker.setTotalCount(service.listSearchCount(cri));
		//해당 모델에 페이지 값을 넘기기 위해 사용;
		model.addAttribute("pageMaker", pageMaker);
	}
	
	/*자유게시판 상세보기 컨트롤러*/
	@GetMapping(value = "/freeboard_view")
	public String read(@RequestParam("free_board_num") int free_board_num,Model model) throws Exception {
		
		// 조회수증가 service
		service.viewHits(free_board_num);
		
		logger.info("show free board view...............");
		/* 게시물의 번호를 바탕으로 컬럼의 값을 읽어와서 리턴해줌*/
		model.addAttribute(service.read(free_board_num));
		
		return "front/freeboard_view";
		
	}

	/* 자유게시판 게시글을 작성하는 컨트롤러*/
	@PostMapping(value = "/boardwritefail")
	public void BoardPOST(BoardVO vo, HttpSession session, Model model) throws Exception {
		
		/* vo로 받아온 값을 service의 regist로 넘겨줍니다*/
		service.regist(vo);
		
		// BoardVO가 null 이란 말은 DB에서 해당 board에 대한 data가 없다는 말이다.  
		if (vo == null) {
			/* 작성 실패시 boardwritefail로 넘어감*/
			return;
		}

		model.addAttribute("BoardVO", vo);

	}
	
	/* 자유게시판 삭제 컨트롤러*/
	@PostMapping(value = "/freeboard_remove")
	public String remove(@RequestParam("free_board_num") int free_board_num, 
			RedirectAttributes rttr) throws Exception {
		/* 받아온 free_board_num정보를 service의 remove로 보내줌*/
		service.remove(free_board_num);
		
		/*삭제성공시 성공메시지를 띄워줌 */
		rttr.addFlashAttribute("msg", "Success");
		
		/* 삭제완료후 자유게시판 화면으로 다시 되돌아감 */
		return "redirect:/front/freeboard";

	}
	/* 자유게시판 수정화면 컨트롤러*/
	@GetMapping(value = "/freeboard_modify")
	public void modifyGET(int free_board_num, Model model) throws Exception {
		logger.info("show modifyGET...............");
		/* 자유게시판에서 수정할 파일의 정보를 불러오기위해 service의 read에free_board_num값을 보내줌*/
		model.addAttribute(service.read(free_board_num));
				
	}
	/*자유게시판 수정 컨트롤러*/
	@PostMapping(value = "/freeboard_modify")
	public String modifyPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		
		logger.info("mod POST...............");
		/*수정화면에서 받은 정보를 service의 modify에 보내줌*/
		service.modify(board);
		/*수정 성공시 Success메시지를 띄워줌*/
		rttr.addFlashAttribute("msg", "Success");
		/*수정 성공시 자유게시판 화면으로 되돌아감*/
		return "redirect:/front/freeboard";

	}
}
