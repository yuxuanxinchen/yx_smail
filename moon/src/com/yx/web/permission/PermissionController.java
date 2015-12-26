package com.yx.web.permission;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.ehcache.search.aggregator.Count;

import org.apache.catalina.authenticator.SavedRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.AdminUser;
import com.yx.entity.Permission;
import com.yx.entity.YParams;
import com.yx.entity.vo.CustomerPermission;
import com.yx.service.permission.IPermissionService;
import com.yx.utils.SysConstant;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.permission.PermissionController.java]  
 * @ClassName:    [PermissionController]   
 * @Description:  权限管理web
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午12:30:22]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/admin/permission")
public class PermissionController {
	
	@Autowired
	private IPermissionService permissionService;
	
	/*列表查询*/
	@RequestMapping("/list")
	public ModelAndView list(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("permission/list");
		return modelAndView;
	}
	
	
	/*列表查询*/
	@ResponseBody
	@RequestMapping("/root")
	public HashMap<String, Object> root(YParams params){
		return permissionService.findPermissions(params);
	}
	
	
	@RequestMapping(value="/add")
	public String add(){
		return "permission/add";
	}
	
	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(Permission permission,HttpServletRequest request){
		AdminUser adminUser = (AdminUser) request.getSession().getAttribute(SysConstant.SESSION_USER);
		permission.setUserId(adminUser.getId());
		permissionService.insert(permission);
		return "SUCCESS";
	}
	
	
	@ResponseBody
	@RequestMapping("parents")
	public List<Permission> findParents(){
		return permissionService.findparents();
	}
	
	@ResponseBody
	@RequestMapping("/count")
	public Integer count(){
		return permissionService.count(new YParams());
	}
	
	@ResponseBody
	@RequestMapping(value="/template")
	public List<CustomerPermission> findListPermission(YParams yParams){
		yParams.setOrder(" createTime  ");
		List<CustomerPermission> lists = permissionService.findListPermissions(yParams);
		return lists;
	}
	
	
	@RequestMapping(value="delete",method=RequestMethod.POST)
	public String delete(YParams yParams){
		permissionService.delete(yParams);
		return "SUCCESS";
	}
	
	
}
