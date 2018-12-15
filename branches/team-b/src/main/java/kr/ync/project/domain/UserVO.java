package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*유저 정보 vo*/
@Getter
@Setter
@ToString
public class UserVO {

	private String USER_ID;/*id*/
	private String USER_PW;/*비밀번호*/
	private String USER_EMAIL;/*이메일*/
	private int USER_GRADE;/*유저등급*/
	private int USER_NUM;/*유저번호*/
	private int upoint;/*포인트*/
}
