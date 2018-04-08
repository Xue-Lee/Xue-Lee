package com.chinasofti.dota2.entity;

public class User {
	private String userName;
	private String pwd;
	private String name;
	private int id;
	private int phone;
	
	public User(String userName, String pwd, String name, int id, int phone) {
		super();
		this.userName = userName;
		this.pwd = pwd;
		this.name = name;
		this.id = id;
		this.phone = phone;
	}
	
	public User(String name) {
		super();
		this.name = name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", pwd=" + pwd + ", name=" + name + ", id=" + id + ", phone=" + phone
				+ "]";
	}
		
}
