package kr.ync.project.service;

import javax.inject.Inject;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.persistence.UserDAO;

public class UserServiceImpl implements UserService {
	@Inject
	private UserDAO dao;
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.login(dto);
	}

}
