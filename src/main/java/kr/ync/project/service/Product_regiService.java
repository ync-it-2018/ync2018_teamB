package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.SearchCriteria;

public interface Product_regiService {
	//제품 등록
	public void regist(Product_regiVO vo) throws Exception;
	//제품 읽기
	public Product_regiVO read(Integer PRO_NUM) throws Exception;
	//제품 수정 ( 구현 X )
	public void modify(Product_regiVO product) throws Exception;
	//제품 삭제	( 구현 X )
	public void remove(Integer pno) throws Exception;
	//리스트 기준
	public List<Product_regiVO> listCriteria(Criteria cri) throws Exception;
	//리스트 기준 카운트
	public int listCountCriteria(Criteria cri) throws Exception;
	//검색이 적용된 Query 결과 리스트
	public List<Product_regiVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	//검색이 적용된 Query 결과 카운트
	public int listSearchCount(SearchCriteria cri) throws Exception;
	//조회수 +1
	public int viewHits(int pno) throws Exception;
	//조회수 TOP3
	public List<Product_regiVO> top3() throws Exception;
}