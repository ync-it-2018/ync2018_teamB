package kr.ync.project.service;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.InsertDTO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.persistence.UserDAO;

/*회원 관련 서비스 상세기능*/
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);/*로그인 기능*/
	}

	@Override
	public void keepLogin(String USER_ID, String sessionId, Date next) throws Exception {

		dao.keepLogin(USER_ID, sessionId, next);/*로그인 유지기능*/
	}

	@Override
	public UserVO checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);/*로그인 여부 체크*/
	}

	@Override
	public List<String> readMember() throws Exception {
		// TODO Auto-generated method stub
		return dao.readMember();/*멤버 정보를 읽어옴*/
	}

	@Override
	public List<UserVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();/*유저 정보를 읽어옴*/
	}

	/*페이징-----------------------------------------------------*/
	@Override
	public List<UserVO> userlistCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub

		return dao.UserlistCriteria(cri);
	}

	@Override
	public int userlistCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.UsercountPaging(cri);
	}

	@Override
	public void userdelete(Integer USER_NUM) throws Exception {
		dao.userdelete(USER_NUM);
		
	}

	@Override
	public int findMember(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findMember(id);
	}

	@Override
	public int userRegist(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.userRegist(vo);
	}

	
	
}
