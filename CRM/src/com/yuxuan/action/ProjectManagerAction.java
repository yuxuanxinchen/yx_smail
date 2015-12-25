package com.yuxuan.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Servlet;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.ProjectManager;
import com.yuxuan.service.ProjectService;
import com.yuxuan.vo.CustomerProject;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.ProjectManagerAction.java]  
 * @ClassName:    [ProjectManagerAction]   
 * @Description:  [一句话描述该类的功能]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:28:08]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class ProjectManagerAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private ProjectService projectService;
	private Integer currentPage;

	@Override
	public String execute() throws Exception {
		
		Page page = new Page();
		page.setEveryPage(10);
		if(currentPage==null){
			page.setCurrentPage(1);
		}else{
			page.setCurrentPage(currentPage);
		}
		
		PageResult result = projectService.queryAllVerify(page);
		List<ProjectManager> pm = result.getList();
		List<CustomerProject> cpm = new ArrayList<CustomerProject>();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (ProjectManager projectManagerAction : pm) {
			CustomerProject cm = new CustomerProject();
			cm.setsDate(simpleDateFormat.format(projectManagerAction.getProjectCreateTime()));
		    BeanUtils.copyProperties(projectManagerAction, cm);
			cpm.add(cm);
		}
		ServletActionContext.getRequest().setAttribute("pm", cpm);
		ServletActionContext.getRequest().setAttribute("page", result.getPage());
		
		return SUCCESS;
	}
	
	/**
	 * @Title: queryProjectProcess 
	 * @Description: 项目进度
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:07:51]  
	 * @throws  
	 */
	public String queryProjectProcess(){
		try {
		Page page = new Page();
		page.setEveryPage(10);
		if(currentPage==null){
			page.setCurrentPage(1);
		}else{
			page.setCurrentPage(currentPage);
		}
		PageResult result = projectService.queryAllProcess(page);
		List<ProjectManager> pm = result.getList();
		List<CustomerProject> cpm = new ArrayList<CustomerProject>();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (ProjectManager projectManagerAction : pm) {
			CustomerProject cm = new CustomerProject();
			cm.setsDate(simpleDateFormat.format(projectManagerAction.getProjectCreateTime()));
		    BeanUtils.copyProperties(projectManagerAction, cm);
			cpm.add(cm);
		}
		ServletActionContext.getRequest().setAttribute("pm", cpm);
		ServletActionContext.getRequest().setAttribute("page", result.getPage());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
      		
	}
	
	/**
	 * @Title: querySummarize 
	 * @Description: 总结 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:38:32]  
	 * @throws  
	 */
	public String querySummarize(){
		try {
			Page page = new Page();
			page.setEveryPage(5);
			if(currentPage==null){
				page.setCurrentPage(1);
			}else{
				page.setCurrentPage(currentPage);
			}
			PageResult result = projectService.queryAllSummarize(page);
			List<ProjectManager> pm = result.getList();
			List<CustomerProject> cpm = new ArrayList<CustomerProject>();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (ProjectManager projectManagerAction : pm) {
				CustomerProject cm = new CustomerProject();
				cm.setsDate(simpleDateFormat.format(projectManagerAction.getProjectCreateTime()));
			    BeanUtils.copyProperties(projectManagerAction, cm);
				cpm.add(cm);
			}
			ServletActionContext.getRequest().setAttribute("pm", cpm);
			ServletActionContext.getRequest().setAttribute("page", result.getPage());
			} catch (Exception e) {
				e.printStackTrace();
			}
			return SUCCESS;
		
	}
	
	/**
	 * @Title: queryBusiness 
	 * @Description: 交易
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:19:46]  
	 * @throws  
	 */
	public String queryBusiness(){
		try {
			Page page = new Page();
			page.setEveryPage(5);
			if(currentPage==null){
				page.setCurrentPage(1);
			}else{
				page.setCurrentPage(currentPage);
			}
			PageResult result = projectService.queryAllBusiness(page);
			List<ProjectManager> pm = result.getList();
			List<CustomerProject> cpm = new ArrayList<CustomerProject>();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (ProjectManager projectManagerAction : pm) {
				CustomerProject cm = new CustomerProject();
				cm.setsDate(simpleDateFormat.format(projectManagerAction.getProjectCreateTime()));
			    BeanUtils.copyProperties(projectManagerAction, cm);
				cpm.add(cm);
			}
			ServletActionContext.getRequest().setAttribute("pm", cpm);
			ServletActionContext.getRequest().setAttribute("page", result.getPage());
			} catch (Exception e) {
				e.printStackTrace();
			}
			return SUCCESS;
		
		
	}
	
	
	/**
	 * @Title: projectBegin 
	 * @Description: 项目立项 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:24:23]  
	 * @throws  
	 */
	public String projectBegin(){
		
		return SUCCESS;
	}
	
	
	
	public ProjectService getProjectService() {
		return projectService;
	}

	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	

}
