package kr.ync.project.persistence;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String USER_ID, String sessionId, Date next);

	public UserVO checkUserWithSessionKey(String value);
	
	public void insertMember(UserVO vo);
	
	public List<String> readMember() throws Exception;

	public List<UserVO> listAll() throws Exception;
	
	
	
	//페이지
	public List<UserVO> UserlistPage(int page) throws Exception;
	  
	public List<UserVO> UserlistCriteria(Criteria cri) throws Exception;

	public int UsercountPaging(Criteria cri) throws Exception;

	
	
	public void userdelete(Integer USER_NUM) throws Exception;
	
	public int findMember(String id) throws Exception;
	
	public int userRegist(UserVO vo) throws Exception;
	
}
