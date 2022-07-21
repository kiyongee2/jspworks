package com.dao;

import java.io.Serializable;

public class AddrBook implements Serializable {

	private static final long serialVersionUID = 1000L;
	
	//필드
	private String username;
	private String tel;
	private String email;
	private String gender;
	
	//생성자
	public AddrBook() {
		
	}
	
	//getter, setter
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getTel() {
		return tel;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getGender() {
		return gender;
	}
}
