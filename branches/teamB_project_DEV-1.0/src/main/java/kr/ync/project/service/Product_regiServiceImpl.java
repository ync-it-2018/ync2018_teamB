package kr.ync.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.persistence.Product_regiDAO;

@Service("Product_regiService")
public class Product_regiServiceImpl implements Product_regiService
{
	@Autowired
	private Product_regiDAO dao;

	@Override
	public void regist(Product_regiVO vo) throws Exception {
		dao.create(vo);
	}
	

	@Override
	public Product_regiVO read(Integer PRO_NUM) throws Exception {
		return dao.read(PRO_NUM);
		
	}

	@Override
	public void modify(Product_regiVO product) throws Exception {
		dao.update(product);
	}

	@Override
	public void remove(Integer pno) throws Exception {
		dao.delete(pno);
	}

	@Override
	public List<Product_regiVO> listAll() throws Exception {
		return dao.listAll();
		
	}

	@Override
	public List<Product_regiVO> listCriteria(Criteria cri) throws Exception {
		
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		
		return dao.countPaging(cri);
	}

	@Override
	public List<Product_regiVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.listSearchCount(cri);
	}

}