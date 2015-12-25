package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.po.MenuInfo;

public interface MenuInfoDao {

	public abstract void save(MenuInfo transientInstance);

	public abstract void delete(MenuInfo persistentInstance);

	public abstract MenuInfo findById(java.lang.Integer id);

	public abstract List findByExample(MenuInfo instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByMenuName(Object menuName);

	public abstract List findAll();

	public abstract MenuInfo merge(MenuInfo detachedInstance);

	public abstract void attachDirty(MenuInfo instance);

	public abstract void attachClean(MenuInfo instance);

}