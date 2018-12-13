package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.SearchCriteria;

public abstract interface Review_regiDAO
{
	public void create(Review_regiVO vo) throws Exception;

	public Review_regiVO read(Integer rno) throws Exception;

	public void update(Review_regiVO vo) throws Exception;

	public void delete(Integer rno) throws Exception;

	public List<Review_regiVO> listAll() throws Exception;

	public List<Review_regiVO> listPage(int page) throws Exception;
  
	public List<Review_regiVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<Review_regiVO> listSearch(SearchCriteria cri)throws Exception;
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;

}