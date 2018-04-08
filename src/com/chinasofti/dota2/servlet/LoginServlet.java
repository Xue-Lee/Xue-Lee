package com.chinasofti.dota2.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chinasofti.dota2.service.UserService;
import com.chinasofti.dota2.servlet.ValidateServlet;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("userName");	//获取用户名
		String pwd = request.getParameter("pwd");			//获取密码
		String checkBox = request.getParameter("checkbox");	//获取复选框参数
		//System.out.println(userName+"--"+pwd+"---"+checkBox);
		String verificationCode = request.getParameter("verificationCode");	//获取输入的验证码
		HttpSession session = request.getSession();
		UserService userService = new UserService();
		System.out.println(userService.login(userName, pwd));
		if(userService.login(userName, pwd)) {       //判断用户名密码是否正确
			String validata_number = (String) session.getAttribute(ValidateServlet.CHECK_CODE_KEY); //获取图片验证码
			if(verificationCode.equalsIgnoreCase(validata_number)) {		//判断出入验证码的验证码是否正确
				Cookie cookie_userName = new Cookie("cookie_userName",userName); //cookie存储用户登录名
				Cookie cookie_pwd = new Cookie("cookie_pwd",pwd); //cookie存储登录密码
				if(checkBox != null){
					cookie_userName.setMaxAge(60*60*24*3);
					cookie_pwd.setMaxAge(60*60*24*3);
					response.addCookie(cookie_userName);
					response.addCookie(cookie_pwd);
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
				String name = userService.getName(userName, pwd);
				session.setAttribute("msg_sueccsess",name); //如果登录成功，获取用户的真实姓名
				session.setAttribute("msg", null);
				response.sendRedirect("shoppingCentre.jsp");
			}else {
				session.setAttribute("msg", "验证码错误！");
				response.sendRedirect("shoppingCentre.jsp");
			}
		}else {
			Integer count = (Integer) session.getAttribute("error_count");
			if(count == null){
				count = 1;
				session.setAttribute("error_count", count);
				session.setAttribute("msg","用户或密码错误");
				response.sendRedirect("shoppingCentre.jsp");
			}else if(count < 2){
				count++;
				session.setAttribute("error_count", count);
				session.setAttribute("msg","用户或密码错误");
				response.sendRedirect("shoppingCentre.jsp");
			}else{
				count++;
				session.setAttribute("error_count", count);
				session.setAttribute("msg","用户或密码三次输入错误!");
				response.sendRedirect("shoppingCentre.jsp");
			}
		}
		
	}

}
