package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.SearchCriteria;

public interface Review_regiService {
	
	public void regist(Review_regiVO vo) throws Exception;

	public Review_regiVO read(Integer REVIEW_NUM) throws Exception;
	
	public void modify(Review_regiVO rno) throws Exception;

	public void remove(Integer rno) throws Exception;

	public List<Review_regiVO> listAll() throws Exception;

	public List<Review_regiVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<Review_regiVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public int viewHits(int rno) throws Exception;
}