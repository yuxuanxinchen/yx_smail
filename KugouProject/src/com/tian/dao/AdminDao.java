package com.tian.dao;

import java.util.*;

import com.tian.entity.Admins;

public interface AdminDao {
	/**
	 * ��ѯ����Ա�˺�
	 * @return
	 */
	public Admins getAllAdminInfo(String name,String pwd);
}
