package com.yuxuan.action;

import java.text.SimpleDateFormat;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.Schedule;
import com.yuxuan.service.ScheduleService;
import com.yuxuan.vo.CustomerSchedule;

public class UpdataScheduleAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private Integer upId;
	private ScheduleService scheduleService;


	public ScheduleService getScheduleService() {
		return scheduleService;
	}
	public void setScheduleService(ScheduleService scheduleService) {
		this.scheduleService = scheduleService;
	}
	
	@Override
	public String execute() throws Exception {
		try {
			Schedule schedule = scheduleService.queryScheduleById(upId) ;
			CustomerSchedule csd = new CustomerSchedule();
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			csd.setBeginTime(simpleDateFormat.format(schedule.getScheduleCreateTime()));
			csd.setResultTime(simpleDateFormat.format(schedule.getScheduleResultDate()));
		    
			BeanUtils.copyProperties(schedule, csd);
			
			ServletActionContext.getRequest().setAttribute("sdel", csd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
	public Integer getUpId() {
		return upId;
	}
	public void setUpId(Integer upId) {
		this.upId = upId;
	}

	
}
