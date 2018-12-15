package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.InsertDTO;
import kr.ync.project.dto.LoginDTO;

/*회원 관련 서비스*/
public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception;/*로그인기능*/

	public void keepLogin(String USER_ID, String sessionId, Date next) throws Exception;/*로그인 유지기능*/

	public UserVO checkLoginBefore(String value);/*로그인 여부 체크*/
	
	public List<String> readMember() throws Exception;/*멤버 목록 읽기*/

	public List<UserVO> listAll() throws Exception;/*유저 목록 읽기*/

	/*페이징--------------------------------------------------*/
	public List<UserVO> userlistCriteria(Criteria cri) throws Exception;

	public int userlistCountCriteria(Criteria cri) throws Exception;

	public void userdelete(Integer USER_NUM) throws Exception;
	
	public int findMember(String id) throws Exception;
	
	public int userRegist(UserVO vo) throws Exception;
}
