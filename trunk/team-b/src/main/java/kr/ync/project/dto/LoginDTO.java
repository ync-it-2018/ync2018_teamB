package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*로그인 dto*/
@Getter
@Setter
@ToString
public class LoginDTO {
	
	private String USER_ID;/*id*/
	private String USER_PW;/*비밀번호*/
	private boolean useCookie;/*쿠키정보*/

}
