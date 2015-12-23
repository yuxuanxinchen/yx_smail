package com.yx.web.permission;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yx.entity.YParams;
import com.yx.service.permission.IPermissionService;

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
	public String list(YParams params){
		return "permission/list";
	}
	
	
	/*列表查询*/
	@ResponseBody
	@RequestMapping("/root")
	public HashMap<String, Object> root(YParams params){
		return permissionService.findPermissions(params);
	}
}
