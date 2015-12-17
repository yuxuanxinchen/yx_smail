package com.tian.dao;

import java.util.*;

import com.tian.entity.Admins;

public interface AdminDao {
	/**
	 * 查询管理员账号
	 * @return
	 */
	public Admins getAllAdminInfo(String name,String pwd);
}
