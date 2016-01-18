package com.ksd.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [ksd-project] 
 * @Package:      [com.ksd.action.IndexController.java]  
 * @ClassName:    [IndexController]   
 * @Description:  测试
 * @Author:       [yuxuan]   
 * @CreateDate:   [2016年1月18日 上午11:43:54]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2016年1月18日 上午11:43:54]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
public class IndexController {

	/**
	 * @Title: index 
	 * @Description: 首页
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2016年1月18日 上午11:44:05]  
	 * @throws  
	 */
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
}
