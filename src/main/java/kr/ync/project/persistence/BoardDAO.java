package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;

public interface BoardDAO {
	//게시판 작성
	public void create(BoardVO vo) throws Exception;
	//게시판 읽기
	public BoardVO read(Integer free_board_num) throws Exception;
	//게시판 수정
	public void update(BoardVO vo) throws Exception;
	//게시판 삭제
	public void delete(Integer bno) throws Exception;
	//게시판 리스트
	public List<BoardVO> listPage(int page) throws Exception;
	//게시판 리스트 기준
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	//게시판 페이징 카운팅
	public int countPaging(Criteria cri) throws Exception;

	//검색이 적용된 Query 결과 List
	public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
	//검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;
	//조회수 +1
	public int viewHits(int bno) throws Exception;
}
