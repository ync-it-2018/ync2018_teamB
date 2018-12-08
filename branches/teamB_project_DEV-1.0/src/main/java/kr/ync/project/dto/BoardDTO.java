package kr.ync.project.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDTO {
	
	 private Integer free_board_num;

	 private String free_board_title;

	 private String free_board_cont;

	 private String free_board_writer;

	 private Date free_board_date;

	 private int free_board_hits;
	    
	 private String user_id;
}
