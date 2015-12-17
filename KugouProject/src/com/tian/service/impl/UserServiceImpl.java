package com.tian.service.impl;

import java.util.List;

import com.tian.dao.UserDao;
import com.tian.entity.Users;
import com.tian.factory.DBFactory;
import com.tian.service.UserService;

public class UserServiceImpl implements UserService{
	
	private UserDao uDao = DBFactory.createDBFactory().getUserDAo();
	
	public List<Users> getAllUserInfo() {
		// TODO Auto-generated method stub
		return uDao.getAllUserInfo();
	}

	public boolean getAllUserInfoById(String name) {
		// TODO Auto-generated method stub
		if(uDao.getAllUserInfoById(name) != null){
			return true;
		}
		return false; 
	}

	public boolean updateUserInfo(Users u) {
		// TODO Auto-generated method stub
		return uDao.updateUserInfo(u);
	}

	public Users getAllUserInfoByName(String name, String pwd) {
		// TODO Auto-generated method stub
		return uDao.getAllUserInfoByName(name, pwd);
	}

	public boolean insertUserInfo(Users u) {
		// TODO Auto-generated method stub
		return uDao.insertUserInfo(u);
	}
}
