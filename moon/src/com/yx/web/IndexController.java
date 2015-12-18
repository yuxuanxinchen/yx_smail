package com.yx.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class IndexController {
	
	/**
	 * @Title: login 
	 * @Description: 跳转登录页面
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:57:43]  
	 * @throws  
	 */
	@RequestMapping(value="/index")
	public String userLogin(){
		return "index";
	}

}
