package com.yuxuan.action;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.SjzdflService;
import com.yuxuan.service.SjzdxxService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.UpdateSjzdxxAction.java]  
 * @ClassName:    [UpdateSjzdxxAction]   
 * @Description: 更新数据字典信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:37:09]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class UpdateSjzdxxAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private SjzdflService sjzdflService;
	private SjzdxxService sjzdxxService;
	private Integer[] sjzdxxIds;
	private Integer[] sjzdflIds;
	private String[] isOk;
	private String[] sjzdflMcs;

	public String execute() throws Exception {
		Sjzdxx sjzdxx = null;
		for (int i = 0; i < this.sjzdxxIds.length; i++) {
			sjzdxx = new Sjzdxx();
			sjzdxx.setSjzdxxMc(this.sjzdflMcs[i]);
			sjzdxx.setSjzdfl(this.sjzdflService
					.findSjzdflById(this.sjzdflIds[0]));
			sjzdxx.setSjzdxxId(this.sjzdxxIds[i]);
			sjzdxx.setIsOk("N");
			for (String strnig : this.isOk) {
				if (strnig.equals("OK" + this.sjzdxxIds[i])) {
					sjzdxx.setIsOk("Y");
				}
			}
			this.sjzdxxService.updateSjzdxx(sjzdxx);
		}
		return "success";
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

	public Integer[] getSjzdflIds() {
		return this.sjzdflIds;
	}

	public void setSjzdflIds(Integer[] sjzdflIds) {
		this.sjzdflIds = sjzdflIds;
	}

	public String[] getSjzdflMcs() {
		return this.sjzdflMcs;
	}

	public void setSjzdflMcs(String[] sjzdflMcs) {
		this.sjzdflMcs = sjzdflMcs;
	}

	public Integer[] getSjzdxxIds() {
		return this.sjzdxxIds;
	}

	public void setSjzdxxIds(Integer[] sjzdxxIds) {
		this.sjzdxxIds = sjzdxxIds;
	}

	public static long getSerialversionuid() {
		return 1L;
	}

	public String[] getIsOk() {
		return this.isOk;
	}

	public void setIsOk(String[] isOk) {
		this.isOk = isOk;
	}
}