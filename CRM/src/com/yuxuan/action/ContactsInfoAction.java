package com.yuxuan.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.ContactsInfo;
import com.yuxuan.service.ContactsService;

public class ContactsInfoAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private ContactsService contactsService;
	private Integer currentPage;
	private String key;
	private String type;

	@Override
	public String execute() throws Exception {
		List<ContactsInfo> contactsInfos = contactsService.queryAllContacts();
		ServletActionContext.getRequest().setAttribute("contacts", contactsInfos);
		return SUCCESS;
	}
	
	/**
	 * @throws Exception 
	 * @Title: queryPage 
	 * @Description: 分页返回
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:19:16]  
	 * @throws  
	 */
	public String queryPage() throws Exception{
		Page page = new Page();
		page.setEveryPage(10);
		page.setCurrentPage(currentPage);
		PageResult result = contactsService.queryContactsPage(page);
		ServletActionContext.getRequest().setAttribute("contacts", result.getList());
		ServletActionContext.getRequest().setAttribute("page", result.getPage());
		return SUCCESS;
	}
	
	/**
	 * @Title: conditionQuery 
	 * @Description: 搜索查询
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:32:16]  
	 * @throws  
	 */
	public String conditionQuery() throws Exception{
		Page page = new Page();
		page.setEveryPage(10);
		page.setCurrentPage(currentPage);
		PageResult result = contactsService.queryConditionContactsPage(type, key, page);
		ServletActionContext.getRequest().setAttribute("contacts", result.getList());
		ServletActionContext.getRequest().setAttribute("page", result.getPage());
		ServletActionContext.getRequest().setAttribute("key", key);
		ServletActionContext.getRequest().setAttribute(type, "selected");
		return SUCCESS;
	}
	
	
	public ContactsService getContactsService() {
		return contactsService;
	}
	public void setContactsService(ContactsService contactsService) {
		this.contactsService = contactsService;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
