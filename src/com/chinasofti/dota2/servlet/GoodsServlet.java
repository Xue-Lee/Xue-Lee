package com.chinasofti.dota2.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasofti.dota2.entity.Product;
import com.chinasofti.dota2.service.ImgService;
import com.chinasofti.dota2.service.ProductService;


public class GoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("productId"));
		//扔3个集合，一个product对象过去
		//大图集合
		ArrayList<String> datu = new ImgService().getdatu(id);
		//小图集合
		ArrayList<String> xiaotu = new ImgService().getxiaotu(id);
		//展示图集合
		ArrayList<String> zhanshi = new ImgService().getzhanshi(id);
		//根据ID获取product对象
		Product pro = new ProductService().getProduct(id);
		System.out.println("大图集合是:"+datu);
		System.out.println("小图集合是"+xiaotu);
		System.out.println("展示图集合是"+zhanshi);
		System.out.println("获取对象是:"+pro);
		request.setAttribute("datu", datu);
		request.setAttribute("xiaotu", xiaotu);
		request.setAttribute("zhanshi", zhanshi);
		request.setAttribute("pro", pro);
		request.getRequestDispatcher("goods.jsp").forward(request, response);
	}

}
