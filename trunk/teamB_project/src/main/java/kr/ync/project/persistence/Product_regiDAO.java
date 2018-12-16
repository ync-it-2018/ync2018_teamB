package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.SearchCriteria;

public abstract interface Product_regiDAO
{	//제품 등록
	public void create(Product_regiVO vo) throws Exception;
	//제품 보기
	public Product_regiVO read(Integer pno) throws Exception;
	//제품 수정 ( 구현 X )
	public void update(Product_regiVO vo) throws Exception;
	//제품 삭제 ( 구현 X )
	public void delete(Integer pno) throws Exception;
	//리스트 페이지
	public List<Product_regiVO> listPage(int page) throws Exception;
	//리스트 기준
	public List<Product_regiVO> listCriteria(Criteria cri) throws Exception;
	//페이징 매기기
	public int countPaging(Criteria cri) throws Exception;
   
	//검색이 적용된 Query 결과 리스트
	public List<Product_regiVO> listSearch(SearchCriteria cri)throws Exception;
	//검색이 적용된 Query 결과 카운트
	public int listSearchCount(SearchCriteria cri)throws Exception;
	//조회수 +1
	public int viewHits(int pno) throws Exception;
	//조회수 TOP 3
	public List<Product_regiVO> top3() throws Exception;
}