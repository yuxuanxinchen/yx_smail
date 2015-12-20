package com.yx.web.adminstat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.AdminStat;
import com.yx.entity.YParams;
import com.yx.service.adminstat.IAdminStatService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.adminstat.AdminStatController.java]  
 * @ClassName:    [AdminStatController]   
 * @Description:  日记管理web  
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:51:37]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/admin/adminstat")
public class AdminStatController {
	
	@Autowired
	private IAdminStatService adminstatService;
	
	/*列表查询*/
	@RequestMapping("/list")
	public String list(YParams params){
		return "adminstat/list";
	}
	
	/*模板页面*/
	@RequestMapping("/template")
	public ModelAndView template(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<AdminStat> adminstats = adminstatService.findAdminStats(params);
		int count = adminstatService.count(params);
		modelAndView.setViewName("adminstat/template");
		modelAndView.addObject("datas",adminstats);
		modelAndView.addObject("itemCount",count);
		return modelAndView;
	}
}
