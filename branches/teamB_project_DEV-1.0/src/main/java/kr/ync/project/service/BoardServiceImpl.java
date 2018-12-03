//package kr.ync.project.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
//import kr.ync.project.persistence.BoardDAO;
//
//@Service
//public class BoardServiceImpl implements BoardService {
//
//	@Autowired
//	private BoardDAO dao;
//
//	@Override
//	public void regist(BoardVO board) throws Exception {
////		dao.create(board);
//	}
//
//	@Override
//	public BoardVO read(Integer bno) throws Exception {
////		return dao.read(bno);
//		return null;
//	}
//
//	@Override
//	public void modify(BoardVO board) throws Exception {
////		dao.update(board);
//	}
//
//	@Override
//	public void remove(Integer bno) throws Exception {
////		dao.delete(bno);
//	}
//
//	@Override
//	public List<BoardVO> listAll() throws Exception {
////		return dao.listAll();
//		return null;
//	}
//
//	@Override
//	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//		return null;
////		return dao.listCriteria(cri);
//	}
//
//	@Override
//	public int listCountCriteria(Criteria cri) throws Exception {
//		return 0;
////		return dao.countPaging(cri);
//	}
//
//	@Override
//	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
//		return null;
////		return dao.listSearch(cri);
//	}
//
//	@Override
//	public int listSearchCount(SearchCriteria cri) throws Exception {
//		return 0;
////		return dao.listSearchCount(cri);
//	}
//
//}
