package com.chinasofti.dota2.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.dota2.dao.UserDao;
import com.chinasofti.dota2.entity.User;
import com.chinasofti.dota2.logic.Login;
import com.chinasofti.dota2.servlet.ValidateServlet;

@Controller
public class UserController {
	@RequestMapping("login")
	public String login(HttpServletRequest request,User user,String verificationCode) throws Exception, Exception, InstantiationException, IllegalAccessException {
		System.out.println("进入登录"); 
		InputStream ins = Resources.getResourceAsStream("mybatis-cfg.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(ins);
		SqlSession sqlSession = sf.openSession();
		UserDao userDao = sqlSession.getMapper(UserDao.class);
		User use = userDao.login(user);
		Class lg = Class.forName("Login");
		Login log = (Login) lg.newInstance();
		String validata_number = (String) request.getSession().getAttribute(ValidateServlet.CHECK_CODE_KEY);
		log.login(user, verificationCode, validata_number);
		return "";
	}
}
