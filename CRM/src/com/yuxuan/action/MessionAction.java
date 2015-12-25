package com.yuxuan.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.MessionInfo;
import com.yuxuan.service.ContactsService;
import com.yuxuan.service.CustomerInfoService;
import com.yuxuan.service.MessionService;
import com.yuxuan.service.UserService;
import com.yuxuan.vo.CustomerMession;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.MessionAction.java]  
 * @ClassName:    [MessionAction]   
 * @Description:  任务
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午11:11:15]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class MessionAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private CustomerInfoService customerInfoService;
	private ContactsService contactsService;
	private MessionService messionService;
	private UserService userService;
	private Integer currentPage;
	private Integer upId;
	
	
	@Override
	public String execute() {
		try {
			Page page = new Page();
			page.setEveryPage(10);
			if(currentPage==null){
				page.setCurrentPage(1);
			}else{
				page.setCurrentPage(currentPage);
			}
			List<CustomerMession> cms = new ArrayList<CustomerMession>();
			PageResult result = messionService.queryMessionPage(page);
			List<MessionInfo> mes = result.getList();
			for (int i = 0; i < mes.size(); i++) {
				  CustomerMession cm = new CustomerMession();
				  cm.setsDate(mes.get(i).getMissionCompleteDate().toLocaleString().substring(0,10));
				  BeanUtils.copyProperties(mes.get(i), cm);
				  cms.add(cm);
			}
			
			
			
			ServletActionContext.getRequest().setAttribute("mession",cms);
			ServletActionContext.getRequest().setAttribute("page", result.getPage());
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	/**
	 * @Title: updataMession 
	 * @Description: 更新
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:32:25]  
	 * @throws  
	 */
	public String updataMession(){
		
		try {
			ServletActionContext.getRequest().setAttribute("upmsinfo", messionService.queryMessionById(upId));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
	
	
	
	
	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}
	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}
	public ContactsService getContactsService() {
		return contactsService;
	}
	public void setContactsService(ContactsService contactsService) {
		this.contactsService = contactsService;
	}
	public MessionService getMessionService() {
		return messionService;
	}
	public void setMessionService(MessionService messionService) {
		this.messionService = messionService;
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

	public Integer getUpId() {
		return upId;
	}

	public void setUpId(Integer upId) {
		this.upId = upId;
	}
	
	
	

}
