package com.yx.web.role;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.AdminUser;
import com.yx.entity.Role;
import com.yx.entity.YParams;
import com.yx.service.role.IRoleService;
import com.yx.utils.SysConstant;
import com.yx.utils.TmStringUtils;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.role.RoleController.java]  
 * @ClassName:    [RoleController]   
 * @Description:  [一句话描述该类的功能]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:56:59]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/admin/role")
public class RoleController {
	
	@Autowired
	private IRoleService roleService;
	
	
	/*列表查询*/
	@RequestMapping("/list")
	public String list(YParams params){
		return "role/list";
	}
	
	@RequestMapping("/user")
	public ModelAndView user(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		params.setIsDelete(0);
		params.setRoleId(params.getRoleId());
		params.setPageSize(30);
		List<HashMap<String, Object>> adminUsers = roleService.findFilterUsers(params);
		int totalCount = roleService.countFilterUsers(params);
		modelAndView.addObject("datas", adminUsers);
		modelAndView.addObject("count", totalCount);
		modelAndView.setViewName("role/user");
		return modelAndView;
	}
	
	@RequestMapping("/permission/{rid}")
	public ModelAndView permission(@PathVariable("rid")Integer roleId,YParams params){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("role/permission");
		return modelAndView;
	}
	
	/*模板页面*/
	@RequestMapping("/template")
	public ModelAndView template(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<Role> roles = roleService.findRoles(params);
		int count = roleService.count(params);
		modelAndView.setViewName("role/template");
		modelAndView.addObject("datas",roles);
		modelAndView.addObject("itemCount",count);
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="/saveUserRole",method=RequestMethod.POST)
	public String saveUserRole(HttpServletRequest request){
		//获取所有的分配的用户
		String userstring = request.getParameter("users");
		//角色id
		String rid = request.getParameter("rid");
		if(TmStringUtils.isNotEmpty(userstring) && TmStringUtils.isNotEmpty(rid)){
			//分配角色给用户
			String[] users = userstring.split(",");
			for (String string : users) {
				roleService.saveRoleUser(Integer.parseInt(string), Integer.parseInt(rid));
			}
			return "SUCCESS";
		}else{
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/saveRolePermission",method=RequestMethod.POST)
	public String saveRolePermission(HttpServletRequest request){
		//获取所有的权限
		String userstring = request.getParameter("permissions");
		//获取分配的角色
		String roleId = request.getParameter("rid");
		//如果权限有，角色不为空
		if(TmStringUtils.isNotEmpty(userstring) && TmStringUtils.isNotEmpty(roleId)){
			Integer rid = Integer.parseInt(roleId);
			//删除角色对应的权限
			roleService.deleteRolePermission(rid);
			//重新分配
			String[] users = userstring.split(",");
			for (String string : users) {
				roleService.saveRolePermission(rid,Integer.parseInt(string));
			}
			return "success";
		}else{
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/findRolePermission",method=RequestMethod.POST)
	public List findRolePermission(Integer roleId){
		return roleService.findRolePermission(roleId);
	}
	
	@RequestMapping("add")
	public String add(){
		return "role/add";
	}
	
	@ResponseBody
	@RequestMapping(value="/addRole",method=RequestMethod.POST)
	public String add(Role role,HttpServletRequest request){
		AdminUser us = (AdminUser) request.getSession().getAttribute(SysConstant.SESSION_USER);
		role.setUserId(us.getId());
		roleService.insert(role);
		return "SUCCESS";
	}
	
	@ResponseBody
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(YParams yParams){
		 roleService.sdelete(yParams.getId());
		 return "SUCCESS";
	}
	
	
}
