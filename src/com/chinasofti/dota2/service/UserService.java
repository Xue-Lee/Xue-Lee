package com.chinasofti.dota2.service;


import com.chinasofti.dota2.dao.UserDao;


public class UserService {

	public boolean login(String userName, String pwd) {
		return new UserDao().login(userName,pwd);
	}
	public String getName(String userName, String pwd) {
		return new UserDao().getName(userName, pwd);
	}
	public boolean register(String username,String password,String truename,String idnumber,String mobile) {
		return new UserDao().register(username, password, truename, idnumber, mobile);
	}
}
