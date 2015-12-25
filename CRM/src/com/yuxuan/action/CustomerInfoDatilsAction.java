package com.yuxuan.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.service.CustomerInfoService;

public class CustomerInfoDatilsAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	
	private CustomerInfoService customerInfoService;
	
	private Integer customerInfoId;
	
	@Override
	public String execute() throws Exception {
		CustomerInfo customerInfo = customerInfoService.findByCustomerInfoDatils(customerInfoId);
		ServletActionContext.getRequest().setAttribute("customerInfo", customerInfo);
		return SUCCESS;
	}

	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}

	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}

	public Integer getCustomerInfoId() {
		return customerInfoId;
	}
	public void setCustomerInfoId(Integer customerInfoId) {
		this.customerInfoId = customerInfoId;
	}

}
