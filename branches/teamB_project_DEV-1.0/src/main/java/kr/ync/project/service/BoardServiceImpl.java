package kr.ync.project.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.dto.BoardDTO;
import kr.ync.project.persistence.BoardDAO;

/*자유게시판 서비스 상세기능*/
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;

	@Override
	public void regist(BoardVO vo) throws Exception {
		dao.create(vo);/*글쓰기 기능*/
	}
	

	@Override
	public BoardVO read(Integer free_board_num) throws Exception {
		return dao.read(free_board_num);/*free_board_num정보를 바탕으로 데이터를 읽어옴*/
		
	}

	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);/*수정기능*/
	}

	@Override
	public void remove(Integer free_board_num) throws Exception {
		dao.delete(free_board_num);/*free_board_num정보를 가진 데이터를 지움*/
		
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();/*리스트 방식으로 데이터 목록을 불러옴*/
		
	}

	/*페이징------------------------------------------*/
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		
		return dao.countPaging(cri);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.listSearchCount(cri);
	}


	@Override
	public int viewHits(int bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.viewHits(bno);
	}

}
