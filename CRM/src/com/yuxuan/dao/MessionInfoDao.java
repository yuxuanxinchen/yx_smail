package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.MessionInfo;

public interface MessionInfoDao {

	public abstract void save(MessionInfo transientInstance);

	public abstract void delete(MessionInfo persistentInstance);

	public abstract MessionInfo findById(java.lang.Integer id);

	public abstract List findByExample(MessionInfo instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByMissionSubject(Object missionSubject);

	public abstract List findByMissionPrecedence(Object missionPrecedence);

	public abstract List findByMissionDescription(Object missionDescription);

	public abstract List findAll();

	public abstract MessionInfo merge(MessionInfo detachedInstance);

	public abstract void attachDirty(MessionInfo instance);

	public abstract void attachClean(MessionInfo instance);
	
	public List findAll(Page page);

}