package org.survey.domain;

public class UserVO {

	private String membername;
	private String email;
	private String role;

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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "UserVO [membername=" + membername + ", email=" + email + ", role=" + role + "]";
	}

}
