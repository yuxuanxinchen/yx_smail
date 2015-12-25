package com.yuxuan.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Result;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;
import com.yuxuan.service.RoleInfoService;
import com.yuxuan.service.RoleRelationService;
import com.yuxuan.vo.CustomRoleInfo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.RoleInfoAction.java]  
 * @ClassName:    [RoleInfoAction]   
 * @Description:  角色service
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午5:59:43]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class RoleInfoAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;

	private RoleInfoService roleInfoService;
	private RoleRelationService roleRelationService;
	private Integer currentPage;
	private Integer roleId;
	private String key;
	private String type;
	
	
	
	@Override
	public String execute() throws Exception {
		Page page = new Page();
		page.setEveryPage(10);
		if(currentPage==null || currentPage==0){
			currentPage=1;
		}
		page.setCurrentPage(currentPage);
		PageResult result = roleInfoService.getRoleInfoAllPage(page);
		ServletActionContext.getRequest().setAttribute("roleInfos",result.getList());
		ServletActionContext.getRequest().setAttribute("page",result.getPage());
		return SUCCESS;
	}

	/**
	 * @Title: findRoleInfoAll 
	 * @Description: 获取查询的信息
	 * @param roleId
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:28:49]  
	 * @throws  
	 */
	public String findRoleInfoDetail(Integer roleId) throws Exception{
		RoleInfo roleInfo = roleInfoService.queryRoleInfoById(roleId);
		List<RoleRelation> relations = roleRelationService.findRelationsById(roleInfo);
		ServletActionContext.getRequest().setAttribute("roleInfo", roleInfo);
		ServletActionContext.getRequest().setAttribute("relations", relations);
		return SUCCESS;
	}
	
	
	public String UpdateBefore() throws Exception{
		RoleInfo roleInfo = roleInfoService.queryRoleInfoById(roleId);
		List<RoleRelation> relations = roleRelationService.findRelationsById(roleInfo);
		ServletActionContext.getRequest().setAttribute("roleInfo", roleInfo);
		ServletActionContext.getRequest().setAttribute("relations", relations);
		return SUCCESS;
	}
	
	
	
	
	public String search() {
		try {
			
		
	System.out.println(key);
	Page page  = new Page();
    page.setEveryPage(10);
    if(currentPage==null){
    	page.setCurrentPage(1);
    }else{
    	page.setCurrentPage(currentPage);
    }
    PageResult result = roleInfoService.queryConditionRolePage(type,key,page);
	ServletActionContext.getRequest().setAttribute("roleInfos", result.getList());
	ServletActionContext.getRequest().setAttribute("page", result.getPage());
	ServletActionContext.getRequest().setAttribute("key", key);
	ServletActionContext.getRequest().setAttribute(type, "selected");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	public RoleInfoService getRoleInfoService() {
		return roleInfoService;
	}
	public void setRoleInfoService(RoleInfoService roleInfoService) {
		this.roleInfoService = roleInfoService;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public RoleRelationService getRoleRelationService() {
		return roleRelationService;
	}
	public void setRoleRelationService(RoleRelationService roleRelationService) {
		this.roleRelationService = roleRelationService;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
