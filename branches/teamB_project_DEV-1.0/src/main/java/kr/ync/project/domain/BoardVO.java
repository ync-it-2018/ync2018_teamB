package kr.ync.project.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {
    private Integer bno;

    private String title;

    private String content;

    private String writer;

    private Date regdate;

    private int viewcnt;

    public Integer getBno() {
		return bno;
	}
	public void setBno(Integer Bno) {
		bno = Bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String Title) {
		title = Title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String Content) {
		content = Content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String Writer) {
		writer = Writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date Regdate) {
		regdate = Regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int Viewcnt) {
		viewcnt = Viewcnt;
	}
}