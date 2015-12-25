package com.yuxuan.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.MenuInfo;
import com.yuxuan.service.MenuInfoService;

public class MenuInfoAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private MenuInfoService menuInfoService;
	
	/**
	 * 
	 * Title: execute
	 * Description:  默认进入的方法  获取所有的菜单信息
	 * @return
	 * @throws Exception 
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
	 List<MenuInfo>	menuInfos = menuInfoService.queryAll();
	 ServletActionContext.getRequest().setAttribute("menuInfos", menuInfos);	
		return SUCCESS;
	}

	
	public MenuInfoService getMenuInfoService() {
		return menuInfoService;
	}
	public void setMenuInfoService(MenuInfoService menuInfoService) {
		this.menuInfoService = menuInfoService;
	}
	

}
