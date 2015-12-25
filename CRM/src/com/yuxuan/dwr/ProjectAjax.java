package com.yuxuan.dwr;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.ProjectManager;
import com.yuxuan.service.CustomerInfoService;
import com.yuxuan.service.ProjectService;
import com.yuxuan.service.ScheduleService;
import com.yuxuan.service.UserService;
import com.yuxuan.utils.StringUtils;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dwr.ProjectAjax.java]  
 * @ClassName:    [ProjectAjax]   
 * @Description:  项目
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:42:20]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class ProjectAjax {

	
	private ProjectService projectService;
	private UserService userService;
	private CustomerInfoService customerInfoService;
	private ScheduleService scheduleService;
	
	
	/**
	 * @Title: saveProjectManager 
	 * @Description: 保存项目 
	 * @param map
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:42:10]  
	 * @throws  
	 */
	public String saveProjectManager(Map map,HttpSession session){
		try {
		String projectName = map.get("projectName").toString();
		String customerId = map.get("customerId").toString();
		String scheduleId = map.get("scheduleId").toString();
		String projectComplete = map.get("projectComplete").toString();
		String projectRate = map.get("projectRate").toString();
		String projectState = map.get("projectState").toString();
		String projectDescription = map.get("projectDescription").toString();
		String projectVerify = map.get("projectVerify").toString();
		String projectSummarize = map.get("projectSummarize").toString();
		if(StringUtils.isNotEmpty(projectName) &&
				StringUtils.isNotEmpty(customerId) &&
				StringUtils.isNotEmpty(scheduleId) &&
				StringUtils.isNotEmpty(projectComplete) &&
				StringUtils.isNotEmpty(projectRate) &&
				StringUtils.isNotEmpty(projectState) &&
				StringUtils.isNotEmpty(projectDescription) &&
				StringUtils.isNotEmpty(projectVerify) &&
				StringUtils.isNotEmpty(projectSummarize)){
			
			ProjectManager pm = new ProjectManager();
			pm.setProjectCreateTime(new Date());
			pm.setProjectDescription(projectDescription);
			pm.setProjectRate(projectRate);
			pm.setProjectName(projectName);
			pm.setProjectStatus(projectState);
			pm.setProjectSummarize(projectSummarize);
			pm.setProjectBusiness(projectComplete);
			pm.setProjectVerify(projectVerify);
			String loginUser = session.getAttribute("userName").toString();
			pm.setUser(userService.queryUserByLoginName(loginUser));
			pm.setCustomerInfo(customerInfoService.queryCustomerInfoById(Integer.valueOf(customerId)));
			pm.setSchedule(scheduleService.queryScheduleById(Integer.valueOf(scheduleId)));
			projectService.saveProject(pm);
			return "SUCCESS";
			
		}else{
			return "FAIL";
		}
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	/**
	 * @Title: updataVerify 
	 * @Description: 更新状态
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:20:10]  
	 * @throws  
	 */
	public String updataVerify(Integer id){
		try {
		if(id!=null){
			ProjectManager pManager = projectService.queryProjectManagerById(id);
				pManager.setProjectVerify("2");
				projectService.updataProject(pManager);
				return "SUCCESS";
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}

	/**
	 * @Title: updataSummarize 
	 * @Description:更新总结
	 * @param id
	 * @param summarize
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:02:46]  
	 * @throws  
	 */
	public String updataSummarize(Integer id,String summarize){
		try {
			if(id!=null){
				ProjectManager pManager = projectService.queryProjectManagerById(id);
					pManager.setProjectSummarize(summarize);
					projectService.updataProject(pManager);
					return "SUCCESS";
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "FAIL";
	}

	/**
	 * @Title: updataBusiness 
	 * @Description: 更新交易状态
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:40:22]  
	 * @throws  
	 */
	public String updataBusiness(Integer id){
		try {
			if(id!=null){
				ProjectManager pManager = projectService.queryProjectManagerById(id);
					pManager.setProjectBusiness("1");
					projectService.updataProject(pManager);
					return "SUCCESS";
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "FAIL";
	}
	
	public ProjectService getProjectService() {
		return projectService;
	}
	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}
	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}
	public ScheduleService getScheduleService() {
		return scheduleService;
	}
	public void setScheduleService(ScheduleService scheduleService) {
		this.scheduleService = scheduleService;
	}
	
}
