package com.chinasofti.dota2.service;

import java.util.ArrayList;

import com.chinasofti.dota2.dao.ImgDao;

public class ImgService {
	 public ArrayList<String> getdatu(int id){
		 return new ImgDao().getdatu(id);
	 }
	 
	 public ArrayList<String> getxiaotu(int id){
		 return new ImgDao().getxiaotu(id);
	 }
	 public ArrayList<String> getzhanshi(int id){
		 return new ImgDao().getzhanshi(id);
	 }
}

