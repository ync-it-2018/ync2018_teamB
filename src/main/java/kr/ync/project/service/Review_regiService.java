package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.SearchCriteria;

public interface Review_regiService {
	//리뷰 게시글 작성
	public void regist(Review_regiVO vo) throws Exception;
	//리뷰 게시글 읽기
	public Review_regiVO read(Integer REVIEW_NUM) throws Exception;
	//리뷰 게시글 수정
	public void modify(Review_regiVO rno) throws Exception;
	//리뷰 게시글 삭제
	public void remove(Integer rno) throws Exception;
	//리뷰 게시글 기준 리스트
	public List<Review_regiVO> listCriteria(Criteria cri) throws Exception;
	//리뷰 게시글 리스트 기준 카운트
	public int listCountCriteria(Criteria cri) throws Exception;
	//검색이 적용된 Query 결과 리스트
	public List<Review_regiVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	//검색이 적용된 Query 결과 카운트
	public int listSearchCount(SearchCriteria cri) throws Exception;
	//조회수 +1
	public int viewHits(int rno) throws Exception;
}