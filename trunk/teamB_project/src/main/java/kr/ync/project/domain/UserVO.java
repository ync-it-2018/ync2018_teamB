package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {

	private String USER_ID;
	private String USER_PW;
	private String USER_EMAIL;
	private int upoint;
}
