package com.yx.web.adminuser;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.AdminUser;
import com.yx.entity.YParams;
import com.yx.service.adminuser.IAdminUserService;
import com.yx.utils.TmStringUtils;

/**
 * 日记管理web
 * AdminUserController
 * 创建人:柯柯
 * 时间：2015年12月14日 21:21:17
 * @version 1.0.0
 * 
 */
@Controller
@RequestMapping("/admin/adminuser")
public class AdminUserController {
	
	@Autowired
	private IAdminUserService adminuserService;
	
	/*列表查询*/
	@RequestMapping("/list")
	public String list(YParams params){
		return "adminuser/list";
	}
	
	/*模板页面*/
	@RequestMapping("/template")
	public ModelAndView template(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		params.setIsDelete(0);
		params.setOrder(" create_time ");
		List<AdminUser> adminusers = adminuserService.findAdminUsers(params);
		int count = adminuserService.count(params);
		modelAndView.setViewName("adminuser/template");
		modelAndView.addObject("datas",adminusers);
		modelAndView.addObject("itemCount",count);
		return modelAndView;
	}
	
	
	@ResponseBody
	@RequestMapping(method=RequestMethod.POST,value="/delete")
	public String delete(YParams params){
		try {
			adminuserService.delete(params);
			return "SUCCESS";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@RequestMapping("add")
	public String add(){
		return "adminuser/add";
	}
	
	@ResponseBody
	@RequestMapping(value="addUser",method=RequestMethod.POST)
	public String addUser(AdminUser adminUser){
		 adminUser.setPassword(TmStringUtils.md5Base64(adminUser.getPassword()));
		adminuserService.add(adminUser);
		return "SUCCESS";
	}
	
	@ResponseBody
	@RequestMapping(value="sdelete",method=RequestMethod.POST)
	public String sdelete(YParams yParams){
		adminuserService.sdelete(yParams.getId());
		return "SUCCESS";
	}
	
}
