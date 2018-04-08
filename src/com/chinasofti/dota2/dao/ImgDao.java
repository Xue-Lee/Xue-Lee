package com.chinasofti.dota2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.chinasofti.dota2.conn.ConnLink;


public class ImgDao {
	Connection conn = ConnLink.conn;
	public ArrayList<String> getdatu(int id){
    	ArrayList<String> img = new ArrayList();
    	String sql = "select * from img where productId =  ?";
    	try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String string = rs.getString(2);
				img.add(string);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return img;
    }
 // 根据商品编号id找到小图集合
    public ArrayList<String> getxiaotu(int id){
    	ArrayList<String> img = new ArrayList();
    	String sql = "select * from img where productId =  ?";
    	try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String string = rs.getString(3);
				img.add(string);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return img;
    }
 // 根据商品编号id找到小图集合
    public ArrayList<String> getzhanshi(int id){
    	ArrayList<String> img = new ArrayList();
    	String sql = "select * from img where productId =  ?";
    	try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String string = rs.getString(4);
				img.add(string);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return img;
    }
}
