package com.tian.service;

import com.tian.entity.Admins;

public interface AdminService {
	/**
	 * 查询管理员账号
	 * @return
	 */
	public Admins getAllAdminInfo(String name,String pwd);
}
