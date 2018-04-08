package com.chinasofti.dota2.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.dota2.entity.User;

@Controller
public class CookieController {
	@RequestMapping("cookieLogin")
	public void cookieLogin(HttpServletRequest request,HttpServletResponse response,User user,String checkBox) {
		Cookie cookie_userName = new Cookie("cookie_userName",user.getName());
		Cookie cookie_pwd = new Cookie("cookie_pwd",user.getPwd());
		if(checkBox != null) {
			//设置cookie三天记忆
			cookie_userName.setMaxAge(60*60*24*3);
			cookie_pwd.setMaxAge(60*60*24*3);
		}else {
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				String cookie_name = cookie.getName();
				if(cookie_name.equals("cookie_userName") || cookie_name.equals("cookie_pwd")) {
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
	}
}