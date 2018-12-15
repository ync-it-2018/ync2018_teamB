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
	//로그인
	public UserVO login(LoginDTO dto) throws Exception;
	//로그인 유지
	public void keepLogin(String USER_ID, String sessionId, Date next) throws Exception;
	//이전 로그인 검사
	public UserVO checkLoginBefore(String value);
	//회원 정보 리스트
	public List<String> readMember() throws Exception;
	//회원 전체정보 리스트
	public List<UserVO> listAll() throws Exception;
	//회원 탈퇴
	public void userdelete(Integer USER_NUM) throws Exception;
	//회원 찾기
	public int findMember(String id) throws Exception;
	//회원 가입
	public int userRegist(UserVO vo) throws Exception;
}
