package com.smafo.backend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class LoginCredentials {
	@Id
String Username;
	@Column
String password;
	@Column
boolean enabled=true;
	@Column
String role="ROLE_USER";
	
public  LoginCredentials (){
	
}

public String getUsername() {
	return Username;
}

public void setUsername(String username) {
	Username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public boolean isEnabled() {
	return enabled;
}

public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}
}
