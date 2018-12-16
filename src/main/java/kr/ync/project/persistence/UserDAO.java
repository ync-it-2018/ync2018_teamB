package kr.ync.project.persistence;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserDAO {
	//로그인
	public UserVO login(LoginDTO dto) throws Exception;
	//로그인 유지
	public void keepLogin(String USER_ID, String sessionId, Date next);
	//세션키 값 체크
	public UserVO checkUserWithSessionKey(String value);
	//멤버 정보 보기
	public List<String> readMember() throws Exception;
	//멤버 전체 리스트 보기
	public List<UserVO> listAll() throws Exception;
	//리스트 페이지
	public List<UserVO> UserlistPage(int page) throws Exception;
	//리스트 기준 페이지  
	public List<UserVO> UserlistCriteria(Criteria cri) throws Exception;
	//리스트 카운트 매기기
	public int UsercountPaging(Criteria cri) throws Exception;

	
	//회원탈퇴
	public void userdelete(Integer USER_NUM) throws Exception;
	//회원 찾기
	public int findMember(String id) throws Exception;
	//회원 가입
	public int userRegist(UserVO vo) throws Exception;
	
}
