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


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);
	}

	@Override
	public void keepLogin(String USER_ID, String sessionId, Date next) throws Exception {

		dao.keepLogin(USER_ID, sessionId, next);
	}

	@Override
	public UserVO checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);
	}

	@Override
	public List<String> readMember() throws Exception {
		// TODO Auto-generated method stub
		return dao.readMember();
	}

	@Override
	public List<UserVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

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

	
	
}
