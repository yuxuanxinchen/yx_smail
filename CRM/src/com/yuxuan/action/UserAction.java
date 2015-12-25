package com.yuxuan.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.struts2.ServletActionContext;
import org.springframework.lang.UsesJava7;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.User;
import com.yuxuan.service.UserService;
import com.yuxuan.vo.CustomerUser;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.UserAction.java]  
 * @ClassName:    [UserAction]   
 * @Description:  用户action
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午8:35:22]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class UserAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
	private Integer currentPage;
	
	@Override
	public String execute()  {
		try {
			
		
		Page page = new Page();
		page.setEveryPage(10);
		if(currentPage==null){
			page.setCurrentPage(1);
		}else{
			page.setCurrentPage(currentPage);
		}
		
		PageResult result = userService.queryUserAllPage(page);
		
		List<User> users = result.getList();
		List<CustomerUser> lists = new ArrayList<CustomerUser>();
		CustomerUser customerUser = null;
		for (int i = 1; i < users.size(); i++) {
			customerUser = new CustomerUser();
			customerUser.setUserAdminName(users.get(i).getUserAdminName());
			customerUser.setUserEmail(users.get(i).getUserEmail());
			customerUser.setUserId(users.get(i).getUserId());
			customerUser.setUserName(users.get(i).getUserName());
			customerUser.setUserPassword(users.get(i).getUserPassword());
			if( null != users.get(i).getUserParentId()){
				String parName = userService.queryUserById(users.get(i).getUserParentId()).getUserName();
				customerUser.setParentName(parName);
			}else{
				customerUser.setParentName("");
			}
			
			customerUser.setUserPhone(users.get(i).getUserPhone());
			customerUser.setRoleInfo(users.get(i).getRoleInfo());
			lists.add(customerUser);
		}
		
		ServletActionContext.getRequest().setAttribute("users", lists);
		ServletActionContext.getRequest().setAttribute("page",result.getPage());
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	
	
	

}
