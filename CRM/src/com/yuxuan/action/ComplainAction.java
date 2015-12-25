package com.yuxuan.action;

import java.util.List;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.crypto.provider.RSACipher;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.CustomerComplainInfo;
import com.yuxuan.po.Sjzdfl;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.ComplainService;
import com.yuxuan.service.SjzdflService;
import com.yuxuan.service.SjzdxxService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.ComplainAction.java]  
 * @ClassName:    [ComplainAction]   
 * @Description: 客户
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午5:38:38]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class ComplainAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
     
	private SjzdxxService sjzdxxService;
	private SjzdflService sjzdflService;
	private ComplainService complainService;
	private Integer currentPage;
	private Integer updateId;
	
	@Override
	public String execute() throws Exception {
		dateDirectory();
		return SUCCESS;
	}

	private void dateDirectory() throws Exception {
		List<Sjzdfl> sjzdfls = sjzdflService.getAllSjzdfl();
		for (Sjzdfl sjzdfl : sjzdfls) {
			if(sjzdfl.getSjzdflId()==5){
				List<Sjzdxx> sjzdxxs = sjzdxxService.getAllSjzdxxByType(sjzdfl);
				ServletActionContext.getRequest().setAttribute("sjzdm", sjzdxxs);
			}
			if(sjzdfl.getSjzdflId()==6){
				List<Sjzdxx> sjzdxxs = sjzdxxService.getAllSjzdxxByType(sjzdfl);
				ServletActionContext.getRequest().setAttribute("sjzdc", sjzdxxs);
			}
		}
	}

	/**
	 * @Title: showComplain 
	 * @Description: 显示详细
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:40:55]  
	 * @throws  
	 */
	public String showComplain() {
		try {
			Page page = new Page();
			if (currentPage == null) {
				page.setCurrentPage(1);
			} else {
				page.setCurrentPage(currentPage);
			}

			PageResult result = complainService.findAll(page);
			ServletActionContext.getRequest().setAttribute("complain",
					result.getList());
			ServletActionContext.getRequest().setAttribute("page",
					result.getPage());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * @Title: updataComplain 
	 * @Description: 更新回显信息
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:44:06]  
	 * @throws  
	 */
	public String updataComplain(){
		try {
			dateDirectory();
			CustomerComplainInfo cInfo = complainService.queryComplainInfoById(updateId);
			ServletActionContext.getRequest().setAttribute("cInfo",cInfo);
		} catch (Exception e) {
				e.printStackTrace();
		}
		
		return SUCCESS;
	}
	
	
	public SjzdxxService getSjzdxxService() {
		return sjzdxxService;
	}
	public void setSjzdxxService(SjzdxxService sjzdxxService) {
		this.sjzdxxService = sjzdxxService;
	}
	public SjzdflService getSjzdflService() {
		return sjzdflService;
	}
	public void setSjzdflService(SjzdflService sjzdflService) {
		this.sjzdflService = sjzdflService;
	}
	public ComplainService getComplainService() {
		return complainService;
	}
	public void setComplainService(ComplainService complainService) {
		this.complainService = complainService;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getUpdateId() {
		return updateId;
	}
	public void setUpdateId(Integer updateId) {
		this.updateId = updateId;
	}
	
	
}
