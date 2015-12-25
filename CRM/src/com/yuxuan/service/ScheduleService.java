package com.yuxuan.service;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.Schedule;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.ScheduleService.java]  
 * @ClassName:    [ScheduleService]   
 * @Description:  日程
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午10:34:05]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface ScheduleService {
	
	/**
	 * @Title: saveShedule 
	 * @Description: 保存
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午10:34:37]  
	 * @throws  
	 */
	public void saveShedule(Schedule schedule) throws Exception;
	
	/**
	 * @Title: deleteSchedule 
	 * @Description: 删除 
	 * @param id
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午10:35:00]  
	 * @throws  
	 */
	public void deleteSchedule(Integer id) throws Exception;
	
	/**
	 * @Title: queryScheduleAll 
	 * @Description: 获取所有 
	 * @return
	 * @throws Exception  
	 * @return List 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午10:35:23]  
	 * @throws  
	 */
	public List queryScheduleAll() throws Exception;
	
	/**
	 * @Title: updataSchedule 
	 * @Description: 更新 
	 * @param schedule
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午10:35:52]  
	 * @throws  
	 */
	public void updataSchedule(Schedule schedule) throws Exception;
	
	/**
	 * @Title: queryScheduleById 
	 * @Description: 根据ID来查询 
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return Schedule 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午10:36:26]  
	 * @throws  
	 */
	public Schedule queryScheduleById(Integer id) throws Exception;
	
	/**
	 * @Title: querySchedulePage 
	 * @Description: 分页
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return PageResult 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:09:15]  
	 * @throws  
	 */
	public PageResult querySchedulePage(Page page) throws Exception;
	
}
