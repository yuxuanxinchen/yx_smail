package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.ScheduleDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.Schedule;
import com.yuxuan.service.ScheduleService;

public class ScheduleServiceImpl implements ScheduleService{

	private ScheduleDao scheduleDao;
	
	
	@Override
	public void saveShedule(Schedule schedule) throws Exception {
		scheduleDao.save(schedule);
		
	}

	@Override
	public void deleteSchedule(Integer id) throws Exception {
		if(id!=null && id!=0){
			scheduleDao.delete(scheduleDao.findById(id));
		}
	}

	@Override
	public List queryScheduleAll() throws Exception {
		return scheduleDao.findAll();
	}

	@Override
	public void updataSchedule(Schedule schedule) throws Exception {
		if(schedule!=null){
			scheduleDao.attachDirty(schedule);
		}
	}

	@Override
	public Schedule queryScheduleById(Integer id) throws Exception {
		 if(id!=null && id!=0){
			 return scheduleDao.findById(id);
		 }
		return null;
	}

	public ScheduleDao getScheduleDao() {
		return scheduleDao;
	}

	public void setScheduleDao(ScheduleDao scheduleDao) {
		this.scheduleDao = scheduleDao;
	}

	@Override
	public PageResult querySchedulePage(Page page) throws Exception {
		page = PageUtils.createPage(page, scheduleDao.findAll().size());
		PageResult result = new PageResult();
		result.setList(scheduleDao.findAll(page));
		result.setPage(page);
		return result;
	}

	
	
	
}
