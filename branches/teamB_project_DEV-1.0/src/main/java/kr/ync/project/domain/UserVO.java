package kr.ync.project.domain;

public class UserVO {
	private String uid;
	private String upw;
	private String uemail;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	@Override
	public String toString() {
		return "UserVO [uid=" + uid + ", upw=" + upw + ", uemail=" + uemail + "]";
	}
	
}
