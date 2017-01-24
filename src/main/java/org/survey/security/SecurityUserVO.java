package org.survey.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.survey.domain.UserVO;

public class SecurityUserVO implements UserDetails {

	private UserVO vo;
	private SurveyRole role;

	private boolean accountNonExpired = true;
	private boolean accountNonLocked = true;
	private boolean credentialsNonExpired = true;
	private boolean enabled = true;
	
	private List<GrantedAuthority> authorities;

	public SecurityUserVO(UserVO vo) {

		this.vo = vo;

		this.role = new SurveyRole("ROLE_" + vo.getRole());
		authorities = new ArrayList<GrantedAuthority>();
		authorities.add(this.role);
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		
		return authorities;
	}

	@Override
	public String getPassword() {

		return vo.getEmail();
	}

	@Override
	public String getUsername() {

		return vo.getMembername();
	}

	@Override
	public boolean isAccountNonExpired() {
		return this.accountNonExpired;
	}

	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		return this.accountNonLocked;
	}

	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return this.credentialsNonExpired;
	}

	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "SecurityUserVO [vo=" + vo + ", role=" + role + "]";
	}

}