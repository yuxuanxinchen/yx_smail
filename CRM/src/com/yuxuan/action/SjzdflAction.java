package com.yuxuan.action;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.service.SjzdflService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.SjzdflAction.java]  
 * @ClassName:    [SjzdflAction]   
 * @Description:  数据字典分类  
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:36:02]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class SjzdflAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private SjzdflService sjzdflService;

	public String execute() throws Exception {

		List sjzdflsall = this.sjzdflService.getAllSjzdfl();
		ServletActionContext.getRequest().setAttribute("allsjzdfl", sjzdflsall);
		return "success";
	}

	public SjzdflService getSjzdflService() {
		return this.sjzdflService;
	}

	public void setSjzdflService(SjzdflService sjzdflService) {
		this.sjzdflService = sjzdflService;
	}
}