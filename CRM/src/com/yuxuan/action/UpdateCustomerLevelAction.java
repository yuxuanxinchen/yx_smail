package com.yuxuan.action;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.DataLevel;
import com.yuxuan.service.CustomerLevelService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.UpdateCustomerLevelAction.java]  
 * @ClassName:    [UpdateCustomerLevelAction]   
 * @Description:  更新级别
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:36:38]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class UpdateCustomerLevelAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private CustomerLevelService customerLevelService;
	private Integer[] levelId;
	private Double[] levelYwl;
	private String[] levelMc;

	public String execute() throws Exception {
		DataLevel dataLevel = null;
		for (int i = 0; i < this.levelId.length; i++) {
			dataLevel = new DataLevel();
			dataLevel.setLevelId(this.levelId[i]);
			dataLevel.setLevelMc(this.levelMc[i]);
			dataLevel.setLevelYwl(this.levelYwl[i]);
			this.customerLevelService.updateCumstomerInfo(dataLevel);
		}
		return "success";
	}

	public void setCustomerLevelService(
			CustomerLevelService customerLevelService) {
		this.customerLevelService = customerLevelService;
	}

	public Integer[] getLevelId() {
		return this.levelId;
	}

	public void setLevelId(Integer[] levelId) {
		this.levelId = levelId;
	}

	public Double[] getLevelYwl() {
		return this.levelYwl;
	}

	public void setLevelYwl(Double[] levelYwl) {
		this.levelYwl = levelYwl;
	}

	public String[] getLevelMc() {
		return this.levelMc;
	}

	public void setLevelMc(String[] levelMc) {
		this.levelMc = levelMc;
	}
}