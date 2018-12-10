package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InsertDTO {
	
	private String USER_ID;
	private String USER_PW;
	private String USER_EMAIL;
	private boolean useCookie;

}