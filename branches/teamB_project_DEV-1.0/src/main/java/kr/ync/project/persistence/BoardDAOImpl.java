package kr.ync.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;

/*자유게시판 dao상세기능*/
@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession session;

	/*boardMapper에 연결하기 위한 기본 주소*/
	private static String namespace = "kr.ync.project.mapper.BoardMapper";

	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace + ".create", vo);/*맵퍼의 insert기능을 수행*/
	}

	@Override
	public BoardVO read(Integer free_board_num) throws Exception {
		return session.selectOne(namespace + ".read", free_board_num);/*맵퍼의 select기능을 수행*/
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace + ".update", vo);/*맵퍼의 update기능을 수행*/
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace + ".delete", bno);/*맵퍼의 delete기능을 수행*/
	}

	
	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");/*맵퍼의 listAll기능을 수행*/
	}

	@Override
	public List<BoardVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);/*맵퍼의 10페이지 단위로 페이징기능을 수행*/
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int viewHits(int bno) throws Exception {
		// TODO Auto-generated method stub
		return session.update(namespace+".updateHits",bno);/*조회수 카운트 기능 수행*/
	}
}
