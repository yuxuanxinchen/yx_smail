package com.tian.service;

import com.tian.entity.Admins;

public interface AdminService {
	/**
	 * ��ѯ����Ա�˺�
	 * @return
	 */
	public Admins getAllAdminInfo(String name,String pwd);
}
