package com.yuxuan.service.impl;

import java.util.List;
import java.util.Set;

import org.junit.runner.Result;
import org.springframework.dao.support.DaoSupport;

import com.yuxuan.dao.UserDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;
import com.yuxuan.po.User;
import com.yuxuan.service.UserService;

public class UserServiceImpl implements UserService{
	
	private UserDao userDao;
	
	@Override
	public List<User> queryUserAll() {
		return userDao.findAll();
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User queryByUserName(String userName) throws Exception {
		User suer = (User) userDao.findByProperty("userName", userName);
		return suer;
	}

	@Override
	public void saveUser(User user) throws Exception {
		userDao.save(user);
		
	}

	@Override
	public User queryUserById(Integer id) throws Exception {
		return userDao.findById(id);
		
	}

	@Override
	public Boolean isUserName(String userName) throws Exception {
		List<User> users = userDao.findByUserName(userName);
		if(users!=null && users.size()>0){
			return true;
		}
		return false;
	}

	@Override
	public PageResult queryUserAllPage(Page page) throws Exception {
		page  = PageUtils.createPage(page,userDao.findAll().size());
		PageResult result = new PageResult();
		result.setPage(page);
		result.setList(userDao.findAllPage(page));
		return result;
	}

	@Override
	public void updataUser(User user) throws Exception {
		userDao.attachDirty(user);
	}

	@Override
	public void deleteUser(Integer id) throws Exception {
		User user = userDao.findById(id);
		if(user!=null){
			userDao.delete(user);
		}
		
	}

	@Override
	public Boolean loginverify(String userName, String passWord)
			throws Exception {
		List<User> users = userDao.findByProperty("userAdminName", userName);
		 if(users!=null && users.size()>0){
			 if(users.get(0).getUserAdminName().equals(userName) && users.get(0).getUserPassword().equals(passWord)){
				 return true;
			 }
			 return false;
		 }
		return false;
	}

	@Override
	public User queryUserByLoginName(String loginName) throws Exception {
		List<User> user = userDao.findByProperty("userAdminName", loginName);
		if(user!=null || user.size()>0){
			return user.get(0);
		}
		return null;
	}

	
}
