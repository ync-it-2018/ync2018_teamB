package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.SearchCriteria;

public abstract interface Review_regiDAO
{	//리뷰 게시글 작성
	public void create(Review_regiVO vo) throws Exception;
	//리뷰 게시글 읽기
	public Review_regiVO read(Integer rno) throws Exception;
	//리뷰 게시글 수정
	public void update(Review_regiVO vo) throws Exception;
	//리뷰 게시글 삭제
	public void delete(Integer rno) throws Exception;
	//리뷰 게시글 페이지 리스트
	public List<Review_regiVO> listPage(int page) throws Exception;
	//리뷰 게시글 기준 리스트
	public List<Review_regiVO> listCriteria(Criteria cri) throws Exception;
	// 페이지 카운팅
	public int countPaging(Criteria cri) throws Exception;
   
	// 검색이 적용된 Query 결과 List
	public List<Review_regiVO> listSearch(SearchCriteria cri)throws Exception;
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;
	// 리뷰 조회수+1
	public int viewHits(int vo) throws Exception;
}