package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.RoleRelation;

public interface RoleRelationDao {

	public abstract void save(RoleRelation transientInstance);

	public abstract void delete(RoleRelation persistentInstance);

	public abstract RoleRelation findById(java.lang.Integer id);

	public abstract List findByExample(RoleRelation instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByRoleRelactionAccess(Object roleRelactionAccess);

	public abstract List findAll();

	public abstract RoleRelation merge(RoleRelation detachedInstance);

	public abstract void attachDirty(RoleRelation instance);

	public abstract void attachClean(RoleRelation instance);
	
	public List findByPropertyPage(String propertyName, Object value,Page page);

}