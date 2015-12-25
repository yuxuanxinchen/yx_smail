package com.yuxuan.dwr;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.service.MenuInfoService;
import com.yuxuan.service.RoleInfoService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dwr.MenuInfoAjax.java]  
 * @ClassName:    [MenuInfoAjax]   
 * @Description:  菜单信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午9:55:25]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class MenuInfoAjax{
	
	private MenuInfoService menuInfoService;
	private RoleInfoService roleInfoService;

	public MenuInfoService getMenuInfoService() {
		return menuInfoService;
	}

	public void setMenuInfoService(MenuInfoService menuInfoService) {
		this.menuInfoService = menuInfoService;
	}
	
	
	public String saveMenuInfo(Integer[] mds){
		 
		return "SUCCESS";
	}
	
	

}
