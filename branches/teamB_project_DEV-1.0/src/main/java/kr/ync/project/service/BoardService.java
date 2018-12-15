package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;


public interface BoardService {

	public void regist(BoardVO vo) throws Exception;

	public BoardVO read(Integer free_board_num) throws Exception;

	public void modify(BoardVO board) throws Exception;

	public void remove(Integer free_board_num) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public int viewHits(int bno) throws Exception;
}
