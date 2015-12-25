package com.yuxuan.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.Sjzdfl;
import com.yuxuan.service.SjzdflService;
import com.yuxuan.service.SjzdxxService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.SjzdxxAction.java]  
 * @ClassName:    [SjzdxxAction]   
 * @Description:  数据字典信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:36:18]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class SjzdxxAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Integer sjzdflId;
	private SjzdflService sjzdflService;
	private SjzdxxService sjzdxxService;

	public String execute() throws Exception {
		Sjzdfl sjzdfl = this.sjzdflService.findSjzdflById(this.sjzdflId);
		ServletActionContext.getRequest().setAttribute("sjzdflxx", sjzdfl);
		List allSjzdxxs = this.sjzdxxService.getAllSjzdxxByType(sjzdfl);
		ServletActionContext.getRequest().setAttribute("allSjzdxx", allSjzdxxs);
		return "success";
	}

	public Integer getSjzdflId() {
		return this.sjzdflId;
	}

	public void setSjzdflId(Integer sjzdflId) {
		this.sjzdflId = sjzdflId;
	}

	public SjzdflService getSjzdflService() {
		return this.sjzdflService;
	}

	public void setSjzdflService(SjzdflService sjzdflService) {
		this.sjzdflService = sjzdflService;
	}

	public SjzdxxService getSjzdxxService() {
		return this.sjzdxxService;
	}

	public void setSjzdxxService(SjzdxxService sjzdxxService) {
		this.sjzdxxService = sjzdxxService;
	}
}