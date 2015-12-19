package com.yx.service.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.user.IUserMapper;
import com.yx.entity.AdminUser;
import com.yx.entity.YParams;
import com.yx.service.user.IUserService;

@Service
public class UserServiceImpl implements IUserService{

	@Autowired
	private IUserMapper userMapper;
	
	@Override
	public AdminUser getLogin(YParams yparams) {
		try {
			return userMapper.getLogin(yparams);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int saveBatch(List<AdminUser> adminUsers) {
		return userMapper.saveBatch(adminUsers);
	}

	@Override
	public int batchUpdate(List<AdminUser> adminUsers) {
		return userMapper.batchUpdate(adminUsers);
	}

}
