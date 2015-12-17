package com.tian.service.impl;

import com.tian.dao.AdminDao;
import com.tian.entity.Admins;
import com.tian.factory.DBFactory;
import com.tian.service.AdminService;

public class AdminServiceImpl implements AdminService{

	AdminDao aDao = DBFactory.createDBFactory().getAdminDao();
	public Admins getAllAdminInfo(String name, String pwd) {
		// TODO Auto-generated method stub
		return aDao.getAllAdminInfo(name, pwd);
	}
	
}
