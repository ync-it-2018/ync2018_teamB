package kr.ync.project.persistence;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserDAO {
	public UserVO login (LoginDTO dto) throws Exception;
}
