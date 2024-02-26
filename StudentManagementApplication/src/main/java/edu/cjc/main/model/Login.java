package edu.cjc.main.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "adminCredentials")
public class Login {
	
	@Id
	private String userId;
	
	private String username;
	
	private String password;
	
	
	public Login() {
		
	}
	
	

	public Login(String userId, String username, String password) {
		
		this.userId = userId;
		this.username = username;
		this.password = password;
	}

	

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
