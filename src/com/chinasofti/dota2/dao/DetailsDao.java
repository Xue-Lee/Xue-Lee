package com.chinasofti.dota2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.Resource;

import com.chinasofti.dota2.conn.ConnLink;
import com.chinasofti.dota2.entity.Product;

public class DetailsDao {
	private Connection conn = ConnLink.conn;
	// 根据classID查询所有商品
		public ArrayList<Product> findProductById(int cid) {
			ArrayList<Product> proList = new ArrayList<Product>();
			String select = "select * from product where classId = ? ";
			try {
				PreparedStatement ps = conn.prepareStatement(select);
				ps.setInt(1, cid);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					Product pro = new Product();
					pro.setId(rs.getInt(1));
					pro.setProductName(rs.getString(2));
					pro.setProductPrice(rs.getDouble(3));
					pro.setCount(rs.getInt(4));
					pro.setProductLogo(rs.getString(5));
					pro.setProductCity(rs.getString(6));
					pro.setViewCount(rs.getInt(8));
					pro.setProductDesc(rs.getString(9));
					proList.add(pro);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return proList;
		}
		
		//通过classId查看商品分类名称
		public String getClassifyName(int cid) {		
			String select = "select * from classify where id = ?";
			String className = "";
			try {
				PreparedStatement ps = conn.prepareStatement(select);
				ps.setInt(1, cid);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					className = rs.getString(2);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return className;	
		}
		
		//获取全部商品
		public ArrayList<Product> getAllProduct(){
			String select = "select * from product";
			ArrayList<Product> listProduct = new ArrayList<Product>();
			try {
				PreparedStatement ps = conn.prepareStatement(select);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					Product pro = new Product();
					pro.setId(rs.getInt(1));
					pro.setProductName(rs.getString(2));
					pro.setProductPrice(rs.getDouble(3));
					pro.setCount(rs.getInt(4));
					pro.setProductLogo(rs.getString(5));
					pro.setProductCity(rs.getString(6));
					pro.setViewCount(rs.getInt(8));
					pro.setProductDesc(rs.getString(9));
					listProduct.add(pro);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return listProduct;
		}
		
		
	public static void main(String[] args) {
		System.out.println(new DetailsDao().getClassifyName(1));
	}	
}