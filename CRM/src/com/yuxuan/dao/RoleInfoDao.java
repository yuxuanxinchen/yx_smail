package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.RoleInfo;

public interface RoleInfoDao {

	public abstract void save(RoleInfo transientInstance);

	public abstract void delete(RoleInfo persistentInstance);

	public abstract RoleInfo findById(java.lang.Integer id);

	public abstract List findByExample(RoleInfo instance);

	public abstract List findByProperty(String propertyName, Object value);

	public List findByRoleName(Object roleName);

	public abstract List findAll();

	public abstract RoleInfo merge(RoleInfo detachedInstance);

	public abstract void attachDirty(RoleInfo instance);

	public abstract void attachClean(RoleInfo instance);
	
	public List findAllPage(Page page) ;

	public List findByPropertyPage(String propertyName, Object value,Page page);
}