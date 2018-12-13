package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserDTO {
	private int USER_NUM;
	private String USER_ID;
	private String USER_PW;
	private String USER_GRADE;
	private String USER_EMAIL;

}
