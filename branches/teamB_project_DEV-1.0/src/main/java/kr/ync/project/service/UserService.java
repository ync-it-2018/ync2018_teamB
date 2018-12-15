package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.InsertDTO;
import kr.ync.project.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String USER_ID, String sessionId, Date next) throws Exception;

	public UserVO checkLoginBefore(String value);
	
	public List<String> readMember() throws Exception;

	public List<UserVO> listAll() throws Exception;
	
	public List<UserVO> userlistCriteria(Criteria cri) throws Exception;

	public int userlistCountCriteria(Criteria cri) throws Exception;

	public void userdelete(Integer USER_NUM) throws Exception;
	
	public int findMember(String id) throws Exception;
	
	public int userRegist(UserVO vo) throws Exception;
}
