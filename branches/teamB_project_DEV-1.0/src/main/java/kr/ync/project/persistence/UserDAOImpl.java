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

/*유저 dao상세기능*/
@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession session;

	/*UserMapper에 접근하기 위한 기본주소값*/
	private static String namespace = "kr.ync.project.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);/*맵퍼의 로그인 기능수행*/
	}

	@Override
	public void keepLogin(String USER_ID, String sessionId, Date next) {

		/*세션 추가를 위한 맵 생성*/
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("USER_ID", USER_ID);/*유저 아이디 저장*/
		paramMap.put("sessionId", sessionId);/*세션 아이디저장*/
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);/*맵퍼의 로그인 유지기능 수행*/

	}

	@Override
	public UserVO checkUserWithSessionKey(String value) {
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);/*세션키 확인*/
	}

	@Override
	public void insertMember(UserVO vo){
		// TODO Auto-generated method stub
		session.insert(namespace+".insertMember", vo);/*회원가입 기능수행*/
	}

	public List<String> readMember() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".readMember");/*멤버의 정보를 읽음*/
	}

	@Override
	public List<UserVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");/*모든 멤버의 정보를 받아와 리스트 방식으로 저장*/
		
	}
	
	
	
	@Override
	public void userdelete(Integer USER_NUM) throws Exception {
		session.delete(namespace + ".deleteMember", USER_NUM);/*유저 삭제 기능*/
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

	@Override
	public int findMember(String id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".userCheck",id);
	}

	@Override
	public int userRegist(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.insert(namespace+".userRegist",vo);
	}
	
}
