package com.chinasofti.dota2.service;


import java.util.ArrayList;

import com.chinasofti.dota2.dao.ProductDao;
import com.chinasofti.dota2.entity.Product;


public class ProductService {
	// 根据classId查找商品
		public ArrayList<Product> selectAllPro(int cid) {
			return new ProductDao().findProductByclassId(cid);
		}
    //根据商品ID查找商品
		public Product getProduct(int id){
			return new ProductDao().findProductById(id);
		}
}
