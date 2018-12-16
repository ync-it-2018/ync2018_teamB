package kr.ync.project.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*자유게시판 dto*/
@Getter
@Setter
@ToString
public class BoardDTO {
	
	 private Integer free_board_num;/*번호*/

	 private String free_board_title;/*제목*/

	 private String free_board_cont;/*내용*/

	 private String free_board_writer;/*작성자*/

	 private Date free_board_date;/*작성일*/

	 private int free_board_hits;/*조회수*/
	    
	 private String user_id;/*작성자id*/
}
