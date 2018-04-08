package com.chinasofti.dota2.service;

import java.util.ArrayList;

import com.chinasofti.dota2.dao.DetailsDao;
import com.chinasofti.dota2.entity.Product;

public class DetailsService {
		// 根据classId查找商品
		public ArrayList<Product> selectAllPro(int cid) {
			return new DetailsDao().findProductById(cid);
		}
		//根据chassId查找className
		public String getClassifyName(int cid) {
			return new DetailsDao().getClassifyName(cid);
		}
		public ArrayList<Product> getAllProduct(){
			return new DetailsDao().getAllProduct();
		}
		
}
