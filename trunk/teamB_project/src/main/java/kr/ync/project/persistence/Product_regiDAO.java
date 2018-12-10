package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.SearchCriteria;

public abstract interface Product_regiDAO
{
	public void create(Product_regiVO vo) throws Exception;

	public Product_regiVO read(Integer pno) throws Exception;

	public void update(Product_regiVO vo) throws Exception;

	public void delete(Integer pno) throws Exception;

	public List<Product_regiVO> listAll() throws Exception;

	public List<Product_regiVO> listPage(int page) throws Exception;
  
	public List<Product_regiVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<Product_regiVO> listSearch(SearchCriteria cri)throws Exception;
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;

}