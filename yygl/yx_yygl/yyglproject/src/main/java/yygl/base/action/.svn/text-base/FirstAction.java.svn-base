package yygl.base.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import yygl.base.pojo.po.Sysuser;
import yygl.base.service.UserService;

@Controller
public class FirstAction {

	@Autowired
	private UserService userService;
	
	
	/**
	 * @throws Exception 
	 * @Title: first 
	 * @Description:首页 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月22日 上午9:10:12]  
	 * @throws  
	 */
	@RequestMapping("/first")
	public String first(Model model) throws Exception{
	Sysuser sysuser = 	userService.findSysuserById("41");
	 model.addAttribute("sysuser", sysuser);
	return "/base/first";
	}
	
	
	/**
	 * @Title: welcome 
	 * @Description:欢迎页面 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月22日 上午11:31:00]  
	 * @throws  
	 */
	@RequestMapping("/welcome")
	public String welcome(){
		return "/base/welcome";
	}
	
}
