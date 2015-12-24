package com.yx.service.adminuser.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.adminuser.IAdminUserMapper;
import com.yx.entity.AdminUser;
import com.yx.entity.YParams;
import com.yx.service.adminuser.IAdminUserService;

@Service
public class AdminUserServiceImpl implements IAdminUserService{

	@Autowired
	private IAdminUserMapper adminUserMapper;
	
	@Override
	public List<AdminUser> findAdminUsers(YParams params) {
		return adminUserMapper.findAdminUsers(params);
	}

	@Override
	public int count(YParams params) {
		return adminUserMapper.count(params);
	}

	@Override
	public AdminUser get(Integer id) {
		return adminUserMapper.get(id);
	}

	@Override
	public int save(AdminUser adminuser) {
		// TODO Auto-generated method stub
		return adminUserMapper.save(adminuser);
	}

	@Override
	public int update(AdminUser adminuser) {
		// TODO Auto-generated method stub
		return adminUserMapper.update(adminuser);
	}

	@Override
	public int delete(YParams params) {
		// TODO Auto-generated method stub
		return adminUserMapper.delete(params);
	}

	@Override
	public void add(AdminUser adminUser) {
		adminUserMapper.add(adminUser);
		
	}

	@Override
	public void sdelete(Integer id) {
		adminUserMapper.sdelete(id);
		
	}

}
