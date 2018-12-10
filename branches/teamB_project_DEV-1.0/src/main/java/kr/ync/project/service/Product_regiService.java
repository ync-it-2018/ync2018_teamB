package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.SearchCriteria;

public interface Product_regiService {
	
	public void regist(Product_regiVO vo) throws Exception;

	public Product_regiVO read(Integer PRO_NUM) throws Exception;

	public void modify(Product_regiVO product) throws Exception;

	public void remove(Integer pno) throws Exception;

	public List<Product_regiVO> listAll() throws Exception;

	public List<Product_regiVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<Product_regiVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
}