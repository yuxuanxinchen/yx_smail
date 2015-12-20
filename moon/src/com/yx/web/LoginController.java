package com.yx.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yx.core.BaseController;

import static com.yx.utils.SysConstant.*;

import com.yx.entity.AdminUser;
import com.yx.entity.YParams;
import com.yx.service.user.IUserService;
import com.yx.utils.TmStringUtils;
/**
 * 
 * Simple to Introduction
 * 
 * @ProjectName: [moon]
 * @Package: [com.yx.web.LoginController.java]
 * @ClassName: [LoginController]
 * @Description: 登录
 * @Author: [yuxuan]
 * @CreateDate: [2014-下午7:44:02]
 * @UpdateUser: [yuxuan]
 * @UpdateRemark: [说明本次修改内容]
 * @Version: [v1.0]
 */
@Controller
public class LoginController extends BaseController {

	@Autowired
	private IUserService userService;

	/**
	 * @Title: logined 
	 * @Description:用户登录
	 * @param yParamx
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:54:17]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping(value="/logined",method = RequestMethod.POST)
	public String logined(YParams yParams) throws Exception {
		if (yParams != null) {
			if (TmStringUtils.isNotEmpty(yParams.getUsername())
					&& TmStringUtils.isNotEmpty(yParams.getPassword())) {
				yParams.setAccount(yParams.getUsername());
				yParams.setPassword(TmStringUtils.md5Base64(yParams
						.getPassword()));
			 AdminUser adminUser = userService.getLogin(yParams);
				if (adminUser != null) {
					if(adminUser.getForbiden()==0){
						return "forbiden";
					}else{
						session.setAttribute(SESSION_USER, adminUser);
						session.setAttribute(SESSION_USER_USERNAME,
								adminUser.getUsername());
						//日志监控
						request.getServletContext().setAttribute(USER_LOG, adminUser);
						request.getServletContext().setAttribute(REQUEST_LOG, request);
					}
					return "SUCCESS";
				} else {
					return "fail";
				}
			} else {
				return "null";
			}
		} else {
			return "error";
		}
	}
	
	/**
	 * @Title: userIndex 
	 * @Description: 跳转首页 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:05:12]  
	 * @throws  
	 */
	@RequestMapping("userlogin")
	public String userIndex(){
		return "login";
	}
	
	/**
	 * @Title: logout 
	 * @Description:注销 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:05:01]  
	 * @throws  
	 */
	@RequestMapping("/logout")
	public String logout(){
		session.invalidate();
		return "redirect:/userlogin";
	}
	
	
}
