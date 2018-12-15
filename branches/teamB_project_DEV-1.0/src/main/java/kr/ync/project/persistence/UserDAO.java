package kr.ync.project.persistence;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;/*로그인 기능*/

	public void keepLogin(String USER_ID, String sessionId, Date next);/*로그인 기능 유지 세션 정보 필요*/

	public UserVO checkUserWithSessionKey(String value);/*세션키 검사기능*/
	
	public void insertMember(UserVO vo);/*회원가입기능*/
	
	public List<String> readMember() throws Exception;/*회원 정보를 읽는 기능*/

	public List<UserVO> listAll() throws Exception;/*회원 정보를 userVO로 받아옴*/
	
	
	
	//페이지
	public List<UserVO> UserlistPage(int page) throws Exception;
	  
	public List<UserVO> UserlistCriteria(Criteria cri) throws Exception;

	public int UsercountPaging(Criteria cri) throws Exception;

	
	
	public void userdelete(Integer USER_NUM) throws Exception;
	
	public int findMember(String id) throws Exception;
	
	public int userRegist(UserVO vo) throws Exception;
	
}
