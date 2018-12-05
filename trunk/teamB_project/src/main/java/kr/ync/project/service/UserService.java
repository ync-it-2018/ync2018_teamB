package kr.ync.project.service;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserService {
	public UserVO login(LoginDTO dto) throws Exception;

}
