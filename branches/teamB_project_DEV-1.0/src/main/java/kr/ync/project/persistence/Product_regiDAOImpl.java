package kr.ync.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.SearchCriteria;

@Repository
public class Product_regiDAOImpl implements Product_regiDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.Product_regiMapper";

	@Override
	public void create(Product_regiVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public Product_regiVO read(Integer pno) throws Exception {
		return session.selectOne(namespace + ".read", pno);
	}

	@Override
	public void update(Product_regiVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer pno) throws Exception {
		session.delete(namespace + ".delete", pno);
	}

	@Override
	public List<Product_regiVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<Product_regiVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

//		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<Product_regiVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<Product_regiVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int viewHits(int pno) throws Exception {
		// TODO Auto-generated method stub
		return session.update(namespace + ".updateHits", pno);
	}

	@Override
	public List<Product_regiVO> top3() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".top3");
	}
	
}


