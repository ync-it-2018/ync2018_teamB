package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*회원가입 dto*/
@Getter
@Setter
@ToString
public class InsertDTO {
	
	private String USER_ID;/*id*/
	private String USER_PW;/*비밀번호*/
	private String USER_EMAIL;/*이메일*/
	private boolean useCookie;/*쿠키정보*/

}