/*
* @FixMethodOrder 옵션
* MethodSorters.DEFAULT
*  - 기본값 -> 순서를 보장하지 않는다.
*  MethodSorters.JVM
*  - JVM이 반환하는 순서이나, 이 순서는 실행마다 다를 수 있다.
*  MethodSorters.NAME_ASCENDING
*  - 각 메소드의 이름 순으로 정렬
*/
package kr.ync.project;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.persistence.BoardDAO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
@FixMethodOrder(MethodSorters.NAME_ASCENDING) // junit test metho의 순서를 지정해준다.
public class BoardDAOTest {

	@Autowired
	private BoardDAO dao;
	
	/*@Test
	public void t1_testCreate() throws Exception {
	
		BoardVO board = new BoardVO();
		board.setTitle("새로운 글을 넣습니다. ");
		board.setContent("새로운 글을 넣습니다. ");
		board.setWriter("user00");
		dao.create(board);
	}
	*/
	@Test
	public void t2_testRead() throws Exception {
	
		log.info(dao.read(100112).toString());
	}
	/*
	@Test
	public void t3_testUpdate() throws Exception {
	
		BoardVO board = new BoardVO();
	    board.setBno(5);
	    board.setTitle("수정된 글입니다.");
	    board.setContent("수정 테스트 ");
	    board.setWriter("수정 테스트");
	    dao.update(board);
	}
	
	@Test
	public void t4_testDelete() throws Exception {
	
		dao.delete(5);
	}
	
	@Test
	public void testListPage() throws Exception {
	
		int page = 3;
	
		List<BoardVO> list = dao.listPage(page);
	
		for (BoardVO boardVO : list) {
			log.info(boardVO.getBno() + ":" + boardVO.getTitle());
		}
	}
	
	@Test
	public void testListCriteria() throws Exception {
	
		Criteria cri = new Criteria();
		cri.setPage(2);
	    cri.setPerPageNum(20);
	
	    List<BoardVO> list = dao.listCriteria(cri);
	
	    for (BoardVO boardVO : list) {
	    	log.info(boardVO.getBno() + ":" + boardVO.getTitle());
	    }
	}
	
	@Test
	public void testURI() throws Exception {
	
		UriComponents uriComponents =
				UriComponentsBuilder.newInstance()
				.path("/board/read")
	    		.queryParam("bno", 12)
	    		.queryParam("perPageNum", 20)
	    		.build();
	
		log.info("/board/read?bno=12&perPageNum=20");
		log.info(uriComponents.toString());
	}
	
	@Test
	public void testURI2() throws Exception {
	
		UriComponents uriComponents =
				UriComponentsBuilder.newInstance()
	    		.path("/{module}/{page}")
	    		.queryParam("bno", 12)
	    		.queryParam("perPageNum", 20)
	    		.build()
	    		.expand("board", "read")
	    		.encode();
	
		log.info("/board/read?bno=12&perPageNum=20");
		log.info(uriComponents.toString());
	}
	*/
}
