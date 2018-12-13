package kr.ync.project.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Review_regiVO {

	private int REVIEW_NUM;	// 사용후기 번호
	private String REVIEW_TITLE; // 제목
	private String USER_ID;	//	작성자 [fk]
	private int PRO_NUM; //		제품 번호 [fk]
	private Date REVIEW_DATE; //  작성일
	private int REVIEW_GRADE;  //  평점
	private String REVIEW_CONT; // 	내용 
	private String REVIEW_IMAGE; // 이미지 번호
	private int REVIEW_HITS; // 조회수
}