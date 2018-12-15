package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;

/*자유게시판 서비스*/
public interface BoardService {

	public void regist(BoardVO vo) throws Exception;/*글쓰기 기능*/

	public BoardVO read(Integer free_board_num) throws Exception;/*조회기능*/

	public void modify(BoardVO board) throws Exception;/*수정기능*/

	public void remove(Integer free_board_num) throws Exception;/*삭제기능*/

	public List<BoardVO> listAll() throws Exception;/*리스트 방식으로 목록을 불러옴*/

	/*페이징-------------------------------*/
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public int viewHits(int bno) throws Exception;
}
