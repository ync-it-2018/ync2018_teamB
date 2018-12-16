package kr.ync.project.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {

	private int totalCount; //11
	private int startPage; //1
	private int endPage; //
	private boolean prev; 
	private boolean next;

	private int displayPageNum = 10; //10

	private Criteria cri;
	// 페이지 값 설정
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	// 전체수 설정
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;

		calcData();
	}
	// 페이지 값 계산
	private void calcData() {

		endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);

		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));

		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}

		prev = startPage == 1 ? false : true;

		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;

	}
	// 페이지 값 불러오기
	public int getTotalCount() {
		return totalCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	//이전 페이지값
	public boolean isPrev() {
		return prev;
	}
	//다음 페이지값
	public boolean isNext() {
		return next;
	}
	//화면에 보여지는 페이지번호
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	// 기준값 불러오기
	public Criteria getCri() {
		return cri;
	}
	// url에 해당 페이지 번호처리
	public String makeQuery(int page) {

		UriComponents uriComponents =
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.build();

		return uriComponents.toUriString();
	}
	// url에 해당 검색어 처리
	public String makeSearch(int page) {

		UriComponents uriComponents =
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.queryParam("searchType", ((SearchCriteria) cri).getSearchType())
				.queryParam("keyword", ((SearchCriteria) cri).getKeyword())
				.build();

		return uriComponents.toUriString();
	} 
}
