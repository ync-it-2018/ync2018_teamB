package kr.ync.project;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/webapp/WEB-INF/Spring/**/root-context.xml"})
public class BoardDAOTest {

	@Inject
	private BoardDAO dao;
	
	@Test
	public void testInsertBoard() throws Exception {
		BoardVO vo = new BoardVO();
		
		
		vo.setTitle("제목1");
		vo.setContent("내용1");
		vo.setWriter("작성자1");
		
		dao.create(vo);
	}
	
	
}
