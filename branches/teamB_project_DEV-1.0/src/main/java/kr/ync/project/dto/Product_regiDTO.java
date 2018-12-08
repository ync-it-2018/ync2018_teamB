package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Product_regiDTO {

//	private int PRO_NUM;	//제품 번호
	private String PRO_NAME; //제품명
//	private int PRO_LOW;	//가장 낮은 가격
	private String PRO_SITE; //판매사이트
//	private String PRO_MAIN_IMAGE; // 제품 이미지
	private int PRO_PRICE;  // 제품 가격1
	private int PRO_PRICE3; // 제품 가격3
	private String PRO_EXPLAN; // 제품 설명
//	private int PRO_BUY_HITS; // 사러가기 조회수
//	private int PRO_HITS; // 제품 조회수
//	private String PRO_TAG; // 제품 태그
	
//	private int FIRST_CAT_NUM; // 대분류 번호
//	private int SECOND_CAT_NUM; // 중분류번호
//	private int THIRD_CAT_NUM; // 소분류 번호
//	private int LAST_CAT_NUM; // 세부분류 번호
//	private int PRODUCT_DETAIL_NUM;
	
//	private String PRO_BUY; // 사러가기
	private	 String PRO_URL; // 제품 URL1
	private int PRO_PRICE2; // 제품 가격2
	private	 String PRO_URL2; // 제품 URL2

	private	 String PRO_URL3; // 제품 URL3

}
