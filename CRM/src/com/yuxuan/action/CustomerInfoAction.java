package com.yuxuan.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.service.CustomerInfoService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.CustomerInfoAction.java]  
 * @ClassName:    [CustomerInfoAction]   
 * @Description:  客户信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:35:36]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class CustomerInfoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private CustomerInfoService customerInfoService;

	public String execute() throws Exception {
		ServletActionContext.getRequest().setAttribute("allxz",
				this.customerInfoService.getAllKhxz());
		ServletActionContext.getRequest().setAttribute("alllx",
				this.customerInfoService.getAllCustomerType());
		ServletActionContext.getRequest().setAttribute("allly",
				this.customerInfoService.getAllKhly());
		ServletActionContext.getRequest().setAttribute("allkhyh",
				this.customerInfoService.getAllKhyh());
		ServletActionContext.getRequest().setAttribute("alljb",
				this.customerInfoService.getAllKhjb());
		return "success";
	}

	
	public String chartP(){
		return SUCCESS;
	}
	
	public CustomerInfoService getCustomerInfoService() {
		return this.customerInfoService;
	}

	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}
}