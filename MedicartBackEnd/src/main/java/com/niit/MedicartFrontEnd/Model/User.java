package com.niit.MedicartFrontEnd.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	//see the landingpage...name="" should be same as pojo class
	private String userName;
	@Id
	private String email;
	private String password;
	private String contact;
	private String role;
	

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	
	

}
