package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.User;

public interface UserDao {

	public abstract void save(User transientInstance);

	public abstract void delete(User persistentInstance);

	public abstract User findById(java.lang.Integer id);

	public abstract List findByExample(User instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByUserName(Object userName);

	public abstract List findByUserAdminName(Object userAdminName);

	public abstract List findByUserPassword(Object userPassword);

	public abstract List findByUserPhone(Object userPhone);

	public abstract List findByUserEmail(Object userEmail);

	public abstract List findByUserParentId(Object userParentId);

	public abstract List findAll();

	public abstract User merge(User detachedInstance);

	public abstract void attachDirty(User instance);

	public abstract void attachClean(User instance);
	
	public List findAllPage(Page page) ;

}