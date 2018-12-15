package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;

/*자유게시판 dao*/
public interface BoardDAO {

	public void create(BoardVO vo) throws Exception;/*작성기능*/

	public BoardVO read(Integer free_board_num) throws Exception;/*데이터 읽기 기능*/

	public void update(BoardVO vo) throws Exception;/*데이터 수정기능*/

	public void delete(Integer bno) throws Exception;/*데이터 삭제기능*/

	
	public List<BoardVO> listAll() throws Exception;/*리스트에 모든데이터를 저장*/

	public List<BoardVO> listPage(int page) throws Exception;/*페이징 기능을위한 리스트*/
  
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;/*페이징 기능을위한 리스트*/

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;/*검색 리스트*/
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;/*검색횟수리스트*/

	public int viewHits(int bno) throws Exception;/*조회수 기능*/
}
