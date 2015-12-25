package com.yuxuan.action;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.Sjzdfl;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.SjzdflService;
import com.yuxuan.service.SjzdxxService;
import java.util.Iterator;
import java.util.List;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.UpdateSjzdflAction.java]  
 * @ClassName:    [UpdateSjzdflAction]   
 * @Description:  更新分类信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:36:56]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class UpdateSjzdflAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Integer[] sjzdflIds;
	private String[] sjzdflMcs;
	private String[] checks;
	private SjzdflService sjzdflService;
	private SjzdxxService sjzdxxService;

	public String execute() throws Exception {

		Sjzdfl sjzdfl = null;

		for (int i = 0; i < sjzdflMcs.length; i++) {
			sjzdfl = new Sjzdfl();
			sjzdfl.setSjzdflId(sjzdflIds[i]);
			sjzdfl.setSjzdflMc(sjzdflMcs[i]);
			sjzdfl.setIsOk("N");
			// 如果数据字典分类为空，数据字典信息的信息也应该清除
			if (sjzdflMcs[i].equals("")) {
				List<Sjzdxx> allSjzdxxs = this.sjzdxxService
						.getAllSjzdxxByType(sjzdfl);
				for (Sjzdxx sjzdxx : allSjzdxxs) {
					sjzdxx.setSjzdxxMc("");
					sjzdxx.setIsOk("N");
					sjzdxxService.updateSjzdxx(sjzdxx);
				}
			}

			for (String check : checks) {
				if (check.equals("OK" + (i + 1))) {
					sjzdfl.setIsOk("Y");
					break;
				}
			}
			sjzdflService.updateSjzdfl(sjzdfl);
		}
		return "success";
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

	public void setSjzdflService(SjzdflService sjzdflService) {
		this.sjzdflService = sjzdflService;
	}

	public String[] getChecks() {
		return this.checks;
	}

	public void setChecks(String[] checks) {
		this.checks = checks;
	}

	public void setSjzdxxService(SjzdxxService sjzdxxService) {
		this.sjzdxxService = sjzdxxService;
	}
}