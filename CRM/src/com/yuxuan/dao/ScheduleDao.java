package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.Schedule;

public interface ScheduleDao {

	public abstract void save(Schedule transientInstance);

	public abstract void delete(Schedule persistentInstance);

	public abstract Schedule findById(java.lang.Integer id);

	public abstract List findByExample(Schedule instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByScheduleName(Object scheduleName);

	public abstract List findByScheduleStatus(Object scheduleStatus);

	public abstract List findByScheduleDescription(Object scheduleDescription);

	public abstract List findByRemarks1(Object remarks1);

	public abstract List findByRemarks2(Object remarks2);

	public abstract List findByRemarks3(Object remarks3);

	public abstract List findAll();

	public abstract Schedule merge(Schedule detachedInstance);

	public abstract void attachDirty(Schedule instance);

	public abstract void attachClean(Schedule instance);
	
	public List findAll(Page page);

}