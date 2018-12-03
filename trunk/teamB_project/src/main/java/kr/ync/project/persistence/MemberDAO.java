package kr.ync.project.persistence;

import kr.ync.project.domain.MemberVO;

public interface MemberDAO {
	public String getTime();
	
	public void insertMember(MemberVO vo);
}
