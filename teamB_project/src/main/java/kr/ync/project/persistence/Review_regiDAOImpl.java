package kr.ync.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.SearchCriteria;

@Repository
public class Review_regiDAOImpl implements Review_regiDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.Review_regiMapper";

	@Override
	public void create(Review_regiVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public Review_regiVO read(Integer rno) throws Exception {
		return session.selectOne(namespace + ".read", rno);
	}

	@Override
	public void update(Review_regiVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer rno) throws Exception {
		session.delete(namespace + ".delete", rno);
	}

	@Override
	public List<Review_regiVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

//		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<Review_regiVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<Review_regiVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int viewHits(int vo) throws Exception {
		return session.update(namespace + ".updateHits", vo);
		
	}


	
}


