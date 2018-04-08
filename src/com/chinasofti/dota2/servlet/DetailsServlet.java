package com.chinasofti.dota2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.chinasofti.dota2.entity.Product;
import com.chinasofti.dota2.service.ProductService;

import jdk.nashorn.api.scripting.JSObject;


public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进来了游戏手办");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int cid = Integer.parseInt(request.getParameter("cid"));
		ProductService deta = new ProductService();
		ArrayList<Product> all = deta.selectAllPro(cid);
		JSONArray jsonArray = new JSONArray();
		for (Product pro : all) {
			JSONObject jsobject = new JSONObject();
			jsobject.put("id", pro.getId());
			jsobject.put("productName", pro.getProductName());
			jsobject.put("productPrice", pro.getProductPrice());
			jsobject.put("count", pro.getCount());
			jsobject.put("productLogo", pro.getProductLogo());
			jsobject.put("productCity", pro.getProductCity());
			jsobject.put("productDesc", pro.getProductDesc());
			jsonArray.add(jsobject);
		}
//		System.out.println(cid);
//		request.setAttribute("all", all);
//		request.getRequestDispatcher("details.jsp").forward(request, response);
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
		writer.flush();
		writer.close();
	}

}
