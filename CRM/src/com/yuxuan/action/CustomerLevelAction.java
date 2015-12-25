package com.yuxuan.action;

import java.util.List;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.service.CustomerLevelService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.CustomerLevelAction.java]  
 * @ClassName:    [CustomerLevelAction]   
 * @Description: 客户级别信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:35:47]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class CustomerLevelAction extends ActionSupport {
	private CustomerLevelService customerLevelService;
	private static final long serialVersionUID = 1L;

	public String execute() throws Exception {
		List allcus = this.customerLevelService.getAllDataLevels();
		ServletActionContext.getRequest().setAttribute("allcus", allcus);
		return "success";
	}

	public void setCustomerLevelService(
			CustomerLevelService customerLevelService) {
		this.customerLevelService = customerLevelService;
	}
}