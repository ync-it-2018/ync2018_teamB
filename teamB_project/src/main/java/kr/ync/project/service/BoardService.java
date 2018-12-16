package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;


public interface BoardService {
	//게시글 작성
	public void regist(BoardVO vo) throws Exception;
	//게시글 읽기
	public BoardVO read(Integer free_board_num) throws Exception;
	//게시글 수정
	public void modify(BoardVO board) throws Exception;
	//게시글 삭제
	public void remove(Integer free_board_num) throws Exception;
	//게시글 리스트 기준
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	//리스트 기준 카운트
	public int listCountCriteria(Criteria cri) throws Exception;
	//검색이 적용된 Query 결과 List
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	//검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri) throws Exception;
	//조회수 +1
	public int viewHits(int bno) throws Exception;
}
