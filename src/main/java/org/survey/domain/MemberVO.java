package org.survey.domain;

import java.util.Date;

public class MemberVO {
	
	private String membername;
	private String email;
	private Date joindate;
	
	
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
	
	@Override
	public String toString() {
		return "MemberVO [membername=" + membername + ", email=" + email + ", joindate=" + joindate + "]";
	}
	
	
	
	

}
