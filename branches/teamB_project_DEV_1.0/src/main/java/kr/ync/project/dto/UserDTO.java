package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*유저 dto*/
@Setter
@Getter
@ToString
public class UserDTO {
	private int USER_NUM;/*번호*/
	private String USER_ID;/*id*/
	private String USER_PW;/*비밀번호*/
	private String USER_GRADE;/*유저등급*/
	private String USER_EMAIL;/*이메일*/

}
