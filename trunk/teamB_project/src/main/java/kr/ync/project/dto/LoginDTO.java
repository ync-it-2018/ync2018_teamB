package kr.ync.project.dto;

public class LoginDTO {
	private String uid;
	private String upw;
	private String uemail;
	@Override
	public String toString() {
		return "LoginDTO [uid=" + uid + ", upw=" + upw + ", uemail=" + uemail + "]";
	}
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
	
}
