package com.chinasofti.dota2.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.chinasofti.dota2.conn.ConnLink;

public class UserDao {

	private Connection conn = ConnLink.conn;
	
	public boolean login(String userName,String pwd) {
		String select = "select * from user where userName = ? and pwd = ?";
		
		try {
			PreparedStatement ps = conn.prepareStatement(select);
			ps.setString(1, userName);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public String getName(String userName,String pwd) {
		String select = "select * from user where userName = ? and pwd = ?";
		String name = "";
		try {
			PreparedStatement ps = conn.prepareStatement(select);
			ps.setString(1, userName);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				name = rs.getString(3);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}
	
	public boolean register(String username,String password,String truename,String idnumber,String mobile){
		String sql = "insert into user(username,pwd,name,id,phone) values(?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, truename);
			ps.setString(4, idnumber);
			ps.setString(5, mobile);
			ps.executeUpdate();	
			if(ps.executeUpdate()>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) throws SQLException {
		UserDao userDao = new UserDao();
		System.out.println(userDao.login("136797719@qq.com", "123"));
		System.out.println(userDao.getName("136797719@qq.com", "123"));
	}
}
