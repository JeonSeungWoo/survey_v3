package org.survey.domain;

public class LoginVO {

	private String membername;
	private String email;

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

	@Override
	public String toString() {
		return "LoginVO [membername=" + membername + ", email=" + email + "]";
	}

}
