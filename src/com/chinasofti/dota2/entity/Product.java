package com.chinasofti.dota2.entity;

public class Product {
	private int id;
	private String productName;
	private double productPrice;
	private int count;
	private String productLogo;
	private String productCity;
	private int classId;
	private int viewCount;
	private String productDesc;
	public Product() {
		super();
	}
	public Product(int id, String productName, double productPrice, int count,
			String productLogo, String productCity, int classId, int viewCount,
			String productDesc) {
		super();
		this.id = id;
		this.productName = productName;
		this.productPrice = productPrice;
		this.count = count;
		this.productLogo = productLogo;
		this.productCity = productCity;
		this.classId = classId;
		this.viewCount = viewCount;
		this.productDesc = productDesc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getProductLogo() {
		return productLogo;
	}
	public void setProductLogo(String productLogo) {
		this.productLogo = productLogo;
	}
	public String getProductCity() {
		return productCity;
	}
	public void setProductCity(String productCity) {
		this.productCity = productCity;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	@Override
	public String toString() {
		return "product [id=" + id + ", productName=" + productName
				+ ", productPrice=" + productPrice + ", count=" + count
				+ ", productLogo=" + productLogo + ", productCity="
				+ productCity + ", classId=" + classId + ", viewCount="
				+ viewCount + ", productDesc=" + productDesc + "]";
	}
}