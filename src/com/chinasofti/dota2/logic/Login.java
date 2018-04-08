package com.chinasofti.dota2.logic;

import com.chinasofti.dota2.entity.User;

public class Login {
	public Object login(User user,String verificationCode,String validata_number) {
		if(user != null) {
			if(verificationCode.equalsIgnoreCase(validata_number)) {
				return user;
			}else {
				return "输入验证码错误";
			}
		}else {
			return "用户名或密码错误";
		}
	}
	public static void main(String[] args) {

	}
}
