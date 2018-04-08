package com.chinasofti.dota2.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chinasofti.dota2.service.UserService;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u = request.getParameter("username");
		String p = request.getParameter("password");
		String t = request.getParameter("truename");
		//t = new String(t.getBytes("iso-8859-1"),"UTF-8");
		String id =request.getParameter("idnumber");
		String mo = request.getParameter("mobile");
		System.out.println(t);
		// （1）获取用户输入的验证码：check_number
		String check_number = request.getParameter("check_number");
		// （2）从Session中获取生成的验证码
		HttpSession session = request.getSession();
		String session_number = (String) session.getAttribute(ValidateServlet.CHECK_CODE_KEY);
		// (3) 1 - 2 结果进行equalsIgnorCase比较
		if (check_number.equalsIgnoreCase(session_number)) {
			// (4)相等，才去做用户名和密码的验证
			// 调用业务逻辑方法
			UserService ban = new UserService();
			boolean query = ban.register(u,p,t,id,mo);
			System.out.println(query);
			if (query) {
				request.setAttribute("truename", t);
				request.getRequestDispatcher("/loginsuccess.jsp").forward(
						request, response);
			} else {
				request.setAttribute("mag", "注册失败");
				request.getRequestDispatcher("/register.jsp").forward(
						request, response);
			}
		}
		// (5)不相等，login.jsp转发，msg:验证码错误
		else {
			request.setAttribute("mag", "验证码错误");
			request.getRequestDispatcher("/register.jsp").forward(request,
					response);
		}
	}

}
