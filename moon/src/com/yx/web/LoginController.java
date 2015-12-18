package com.yx.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yx.core.BaseController;
import static com.yx.utils.SysConstant.*;
import com.yx.entity.User;
import com.yx.entity.YParamx;
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
	public String logined(YParamx yParamx) throws Exception {
		if (yParamx != null) {
			if (TmStringUtils.isNotEmpty(yParamx.getAccount())
					&& TmStringUtils.isNotEmpty(yParamx.getPassword())) {
				yParamx.setAccount(yParamx.getAccount());
				yParamx.setPassword(TmStringUtils.md5Base64(yParamx
						.getPassword()));
				User user = userService.getLogin(yParamx);
				if (user != null) {
					session.setAttribute(SESSION_USER, user);
					session.setAttribute(SESSION_USER_USERNAME,
							user.getUsername());
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
