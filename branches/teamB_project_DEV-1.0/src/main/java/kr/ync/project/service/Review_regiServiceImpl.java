package kr.ync.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.persistence.Review_regiDAO;

@Service("Review_regiService")
public class Review_regiServiceImpl implements Review_regiService{
	@Autowired
	private Review_regiDAO dao;

	@Override
	public void regist(Review_regiVO vo) throws Exception {
		dao.create(vo);
	}
	

	@Override
	public Review_regiVO read(Integer REVIEW_NUM) throws Exception {
		return dao.read(REVIEW_NUM);
		
	}
	
	@Override
	public void modify(Review_regiVO rno) throws Exception {
		dao.update(rno);
	}

	@Override
	public void remove(Integer rno) throws Exception {
		dao.delete(rno);
	}

	@Override
	public List<Review_regiVO> listAll() throws Exception {
		return dao.listAll();
		
	}

	@Override
	public List<Review_regiVO> listCriteria(Criteria cri) throws Exception {
		
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		
		return dao.countPaging(cri);
	}

	@Override
	public List<Review_regiVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.listSearchCount(cri);
	}


	@Override
	public int viewHits(int rno) throws Exception {
		// TODO Auto-generated method stub
		return dao.viewHits(rno);
	}




}