package com.yuxuan.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;
import com.yuxuan.service.RoleInfoService;
import com.yuxuan.service.RoleRelationService;

public class UpdataRoleInfoAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	private RoleInfoService roleInfoService;
	private RoleRelationService roleRelationService;
	private Integer roleId;
	
	@Override
	public String execute() throws Exception {
		
		RoleInfo roleInfo = roleInfoService.queryRoleInfoById(roleId);
		List<RoleRelation> relations = roleRelationService.findRelationsById(roleInfo);
		ServletActionContext.getRequest().setAttribute("roleInfo", roleInfo);
		ServletActionContext.getRequest().setAttribute("relations", relations);
		return SUCCESS;

	}

	public RoleInfoService getRoleInfoService() {
		return roleInfoService;
	}

	public void setRoleInfoService(RoleInfoService roleInfoService) {
		this.roleInfoService = roleInfoService;
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
	

}
