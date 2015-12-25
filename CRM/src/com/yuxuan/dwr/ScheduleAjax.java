package com.yuxuan.dwr;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.po.Schedule;
import com.yuxuan.po.User;
import com.yuxuan.service.MessionService;
import com.yuxuan.service.ScheduleService;
import com.yuxuan.service.UserService;
import com.yuxuan.utils.StringUtils;
import com.yuxuan.vo.CustomerSchedule;

public class ScheduleAjax {

	private ScheduleService scheduleService;
	private UserService userService;
	private MessionService messionService;

	public ScheduleService getScheduleService() {
		return scheduleService;
	}

	public void setScheduleService(ScheduleService scheduleService) {
		this.scheduleService = scheduleService;
	}
	
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	

	public MessionService getMessionService() {
		return messionService;
	}

	public void setMessionService(MessionService messionService) {
		this.messionService = messionService;
	}

	/**
	 * @Title: saveSchedule 
	 * @Description: 保存
	 * @param map
	 * @param session
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:21:53]  
	 * @throws  
	 */
	public String saveSchedule(Map map,HttpSession session){
		try {
		String shecduleName = map.get("shecduleName").toString();
		String MissionName = map.get("MissionName").toString();
		String missionId = map.get("missionId").toString();
		String resultTime = map.get("resultTime").toString();
		String shceduleDescription = map.get("shceduleDescription").toString();
		String schedulePriority = map.get("schedulePriority").toString();
		String loginUser = null;
		if(StringUtils.isNotEmpty(shecduleName) &&
				StringUtils.isNotEmpty(MissionName) &&
				StringUtils.isNotEmpty(missionId) &&
				StringUtils.isNotEmpty(resultTime) &&
				StringUtils.isNotEmpty(shceduleDescription) &&
				StringUtils.isNotEmpty(schedulePriority)){
			Schedule schedule = new Schedule();
			schedule.setScheduleCreateTime(new Date());
			schedule.setScheduleName(shecduleName);
			schedule.setScheduleDescription(shceduleDescription);
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = simpleDateFormat.parse(resultTime);
			schedule.setScheduleResultDate(date);
			
			loginUser = session.getAttribute("userName").toString();
			schedule.setUser(userService.queryUserByLoginName(loginUser));
			schedule.setScheduleStatus(schedulePriority);
			schedule.setMession(messionService.queryMessionById(Integer.valueOf(missionId)));
			scheduleService.saveShedule(schedule);
			return "SUCCESS";
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println();
		return "FAIL";
	}
	
	/**
	 * @Title: updataScheduel 
	 * @Description: 更新
	 * @param map
	 * @param session
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:37:05]  
	 * @throws  
	 */
	public String updataScheduel(Map map,HttpSession session){
		try {
			String shecduleName = map.get("shecduleName").toString();
			String MissionName = map.get("MissionName").toString();
			String missionId = map.get("missionId").toString();
			String resultTime = map.get("resultTime").toString();
			String shceduleDescription = map.get("shceduleDescription").toString();
			String schedulePriority = map.get("schedulePriority").toString();
			String scheduleId = map.get("scheduleId").toString();
			String loginUser = null;
			if(StringUtils.isNotEmpty(shecduleName) &&
					StringUtils.isNotEmpty(MissionName) &&
					StringUtils.isNotEmpty(missionId) &&
					StringUtils.isNotEmpty(resultTime) &&
					StringUtils.isNotEmpty(shceduleDescription) &&
					StringUtils.isNotEmpty(schedulePriority)&&
					StringUtils.isNotEmpty(scheduleId) ){
				Schedule schedule = new Schedule();
				schedule.setScheduleCreateTime(new Date());
				schedule.setScheduleName(shecduleName);
				schedule.setScheduleDescription(shceduleDescription);
				schedule.setScheduleId(Integer.valueOf(scheduleId));
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
				Date date = simpleDateFormat.parse(resultTime);
				schedule.setScheduleResultDate(date);
				
				loginUser = session.getAttribute("userName").toString();
				schedule.setUser(userService.queryUserByLoginName(loginUser));
				schedule.setScheduleStatus(schedulePriority);
				schedule.setMession(messionService.queryMessionById(Integer.valueOf(missionId)));
				scheduleService.updataSchedule(schedule);
				return "SUCCESS";
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "FAIL";
		
	}
	
	/**
	 * @Title: deleteSchedule 
	 * @Description: 删除单条记录
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:43:11]  
	 * @throws  
	 */
	public String deleteSchedule(Integer id){
		try {
			if(id!=null && id!=0){
				scheduleService.deleteSchedule(id);
				return "SUCCESS";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	/**
	 * @Title: deleteScheduleBatch 
	 * @Description:批量删除 
	 * @param ids
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:57:24]  
	 * @throws  
	 */
	public String deleteScheduleBatch(Integer[] ids){
		if(ids.length > 0){
			try {
				for (Integer integer : ids) {
					scheduleService.deleteSchedule(integer);
				}
				return "SUCCESS";
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return "FAIL";
	}
	
	
	/**
	 * @Title: showWindow 
	 * @Description: 详细信息
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:22:30]  
	 * @throws  
	 */
	public String showWindow(Integer id){
		try {
			if(id!=null && id!=0){
			Schedule schedule =	scheduleService.queryScheduleById(id);
			CustomerSchedule csdle = new CustomerSchedule();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			csdle.setBeginTime(simpleDateFormat.format(schedule.getScheduleCreateTime()));
			csdle.setResultTime(simpleDateFormat.format(schedule.getScheduleResultDate()));
			BeanUtils.copyProperties(schedule, csdle);
			XStream xstream ;
			xstream = new XStream(new JsonHierarchicalStreamDriver ());
			xstream.alias("schel", CustomerSchedule.class);
			System.out.println(xstream.toXML(csdle));
			return xstream.toXML(csdle);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return "FAIL";
	}
	
	
	public String showWindowAll(){
		try {
		List<Schedule> schedules = scheduleService.queryScheduleAll();
		XStream xstream ;
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("schel", Schedule.class);
		System.out.println(xstream.toXML(schedules));
		return xstream.toXML(schedules);	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "FAIL";
	}
	
	
	
}
