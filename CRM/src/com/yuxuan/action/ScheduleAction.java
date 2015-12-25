package com.yuxuan.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.Schedule;
import com.yuxuan.service.ScheduleService;
import com.yuxuan.vo.CustomerSchedule;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.ScheduleAction.java]  
 * @ClassName:    [ScheduleAction]   
 * @Description:  日程
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午10:43:44]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class ScheduleAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private ScheduleService scheduleService;
	private Integer upId;
	private Integer currentPage;

	public ScheduleService getScheduleService() {
		return scheduleService;
	}
	public void setScheduleService(ScheduleService scheduleService) {
		this.scheduleService = scheduleService;
	}
	public Integer getUpId() {
		return upId;
	}

	public void setUpId(Integer upId) {
		this.upId = upId;
	}

	@Override
	public String execute() throws Exception {
		
		List<CustomerSchedule> cSchedules   = new ArrayList<CustomerSchedule>();
		Page page = new Page();
		if(currentPage==null){
			page.setCurrentPage(1);
		}else{
			page.setCurrentPage(currentPage);
		}
		PageResult result  = scheduleService.querySchedulePage(page);
		List<Schedule> schedules = result.getList();
		for (Schedule sch : schedules) {
			CustomerSchedule csdle = new CustomerSchedule();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			csdle.setBeginTime(simpleDateFormat.format(sch.getScheduleCreateTime()));
			csdle.setResultTime(simpleDateFormat.format(sch.getScheduleResultDate()));
			BeanUtils.copyProperties(sch, csdle);
			cSchedules.add(csdle);
		}
		ServletActionContext.getRequest().setAttribute("page", result.getPage());
		ServletActionContext.getRequest().setAttribute("schedule", cSchedules);
		return SUCCESS;
	}
	
	/**
	 * @Title: updataScheduleDetail 
	 * @Description:数据回显
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:45:49]  
	 * @throws  
	 */
	public String updataScheduleDetail(){
		try {
			Schedule schedule = scheduleService.queryScheduleById(upId) ;
		    ServletActionContext.getRequest().setAttribute("sdel", schedule);
		    return "SUCCESS";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
		
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	

}
