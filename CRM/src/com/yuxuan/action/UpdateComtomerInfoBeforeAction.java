package com.yuxuan.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.service.CustomerInfoService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.UpdateComtomerInfoBeforeAction.java]  
 * @ClassName:    [UpdateComtomerInfoBeforeAction]   
 * @Description:  更新前执行  用来获得用户的详细信息 ,通过客户ID   获得数据字典，并保存在request范围，用于在更新页面下拉列表中显示出来
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午2:00:17]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class UpdateComtomerInfoBeforeAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;

	private Integer customerId;
	
	private CustomerInfoService customerInfoService;

	@Override
	public String execute() throws Exception {
		CustomerInfo customerInfo = customerInfoService.findByCustomerInfoDatils(customerId);
		
		//客户性质
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
		ServletActionContext.getRequest().setAttribute("custom",customerInfo);

		return SUCCESS;
	}
	
	
	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}

	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}
	
	
	
	
}
