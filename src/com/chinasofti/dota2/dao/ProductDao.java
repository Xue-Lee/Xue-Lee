package com.chinasofti.dota2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.chinasofti.dota2.conn.ConnLink;
import com.chinasofti.dota2.entity.Product;


public class ProductDao {
	Connection conn = ConnLink.conn;
	// 根据classID查询所有商品
		public ArrayList<Product> findProductByclassId(int cid) {
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
		// 根据id查找商品
		public Product findProductById(int id) {
			Product p = null;
			try {
				String query = "select * from product where id = ? ";
				PreparedStatement ps = conn.prepareStatement(query);
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					String productName = rs.getString(2);
					double productPrice = rs.getDouble(3);
					int count = rs.getInt(4);
					String productLogo = rs.getString(5);
					String productCity = rs.getString(6);
					int classId = rs.getInt(7);
					int viewCount = rs.getInt(8);
					String productDesc = rs.getString(9);
					// 构造具体的商品对象
					p = new Product(id, productName, productPrice, count, productLogo, productCity,classId, viewCount,productDesc);
				}
				// 关闭对象
				//CloseUtil.close(ps, rs);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return p;
		}
}

