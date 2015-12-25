package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.CustomerComplainInfo;

public interface CustomerComplainInfoDao {

	public abstract void save(CustomerComplainInfo transientInstance);

	public abstract void delete(CustomerComplainInfo persistentInstance);

	public abstract CustomerComplainInfo findById(java.lang.Integer id);

	public abstract List findByExample(CustomerComplainInfo instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByComplainPersion(Object complainPersion);

	public abstract List findByComplainTheme(Object complainTheme);

	public abstract List findByComplainText(Object complainText);

	public abstract List findByComplainManage(Object complainManage);

	public abstract List findByComplainRemarks(Object complainRemarks);

	public abstract List findAll();

	public abstract CustomerComplainInfo merge(
			CustomerComplainInfo detachedInstance);

	public abstract void attachDirty(CustomerComplainInfo instance);

	public abstract void attachClean(CustomerComplainInfo instance);

	public List findAll(Page page);
}