package com.yuxuan.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JettisonMappedXmlDriver;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.service.CustomerInfoService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.CustomerInfoAllAction.java]  
 * @ClassName:    [CustomerInfoAllAction]   
 * @Description:  客户信息预览
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午10:32:20]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class CustomerInfoAllAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	private CustomerInfoService customerInfoService;
	
	private Integer currentPage;
	
	private String type;
	private String key;

	@Override
	public String execute() throws Exception {
		if(type==null &&  key==null || key.equals("")){
			Page page = new Page();
			page.setEveryPage(10);
			page.setCurrentPage(currentPage);
			PageResult result= customerInfoService.findPageAll(page);
			ServletActionContext.getRequest().setAttribute("customerinfos", result.getList());
			ServletActionContext.getRequest().setAttribute("page", result.getPage());
		}else{
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
			
		}
		return SUCCESS;
	}
	
	
	
	
	public String ajaxWindow() throws Exception {
			Page page = new Page();
			page.setEveryPage(10);
			page.setCurrentPage(1);
			PageResult result= customerInfoService.findPageAll(page);
			XStream xstream ;
			xstream = new XStream(new JsonHierarchicalStreamDriver ());
			xstream.alias("customerinfo", CustomerInfo.class);
			System.out.println(xstream.toXML(result.getList()));
			ServletActionContext.getRequest().setAttribute("cos", xstream.toXML(result.getList()));
			ServletActionContext.getRequest().setAttribute("page", result.getPage());
		return SUCCESS;
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
	
}
