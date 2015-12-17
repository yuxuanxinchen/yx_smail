package com.tian.service.impl;

import java.util.List;

import com.tian.dao.ImgDao;
import com.tian.entity.Img;
import com.tian.factory.DBFactory;
import com.tian.service.ImgService;

public class ImgServiceImpl implements ImgService{
	
	ImgDao imgDao = DBFactory.createDBFactory().getImgDao();
	public List<Img> getImgInfo() {
		// TODO Auto-generated method stub
		return imgDao.getImgInfo();
	}
}
