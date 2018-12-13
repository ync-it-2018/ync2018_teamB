package kr.ync.project.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void keepLogin(String USER_ID, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("USER_ID", USER_ID);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public UserVO checkUserWithSessionKey(String value) {
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

	@Override
	public void insertMember(UserVO vo){
		// TODO Auto-generated method stub
		session.insert(namespace+".insertMember", vo);
	}

	public List<String> readMember() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".readMember");
	}

	@Override
	public List<UserVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
		
	}
	
	
	
	
	
	
	
	
	
	
	// ----------------------------- 페이지 -------------------------------
	@Override
	public List<UserVO> UserlistPage(int page) throws Exception {
		// TODO Auto-generated method stub
		if (page <= 0) {
			page = 1;
		}
		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<UserVO> UserlistCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int UsercountPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".countPaging", cri);
	}
	
}
