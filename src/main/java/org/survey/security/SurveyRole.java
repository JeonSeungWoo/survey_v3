package org.survey.security;

import org.springframework.security.core.GrantedAuthority;

public class SurveyRole implements GrantedAuthority {

	private String roleName;
	
	public SurveyRole(String role){
			this.roleName = role;
	}
	
	@Override
	public String getAuthority() {
		
		return roleName;
	}

	@Override
	public String toString() {
		return "SurveyRole [roleName=" + roleName + "]";
	}
	
	
	
}
