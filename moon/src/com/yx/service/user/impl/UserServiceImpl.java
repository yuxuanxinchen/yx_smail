package com.yx.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.user.IUserMapper;
import com.yx.entity.User;
import com.yx.entity.YParamx;
import com.yx.service.user.IUserService;

@Service
public class UserServiceImpl implements IUserService{

	@Autowired
	private IUserMapper userMapper;
	
	@Override
	public User getLogin(YParamx yparams) {
		try {
			return userMapper.getLogin(yparams);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
