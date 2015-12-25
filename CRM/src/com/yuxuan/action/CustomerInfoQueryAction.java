package com.yuxuan.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.service.CustomerInfoService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.CustomerInfoQueryAction.java]  
 * @ClassName:    [CustomerInfoQueryAction]   
 * @Description:  搜索
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午5:36:56]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class CustomerInfoQueryAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	private String type;
	private String key;
	private Integer currentPage;
	
	
	private CustomerInfoService customerInfoService;
	
	@Override
	public String execute() throws Exception {
	    Page page  = new Page();
	    page.setEveryPage(10);
	    if(currentPage==null){
	    	page.setCurrentPage(1);
	    }else{
	    	page.setCurrentPage(currentPage);
	    }
	    PageResult result = customerInfoService.findByPropertyPage(type,key,page);
		ServletActionContext.getRequest().setAttribute("customerinfos", result.getList());
		ServletActionContext.getRequest().setAttribute("page", result.getPage());
		ServletActionContext.getRequest().setAttribute("key", key);
		ServletActionContext.getRequest().setAttribute(type, "selected");
		return SUCCESS;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}
	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	
}
