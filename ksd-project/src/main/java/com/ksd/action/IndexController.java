package com.ksd.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ksd.entity.Persion;
/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [ksd-project] 
 * @Package:      [com.ksd.action.IndexController.java]  
 * @ClassName:    [IndexController]   
 * @Description:  测试
 * @Author:       [yuxuan]   
 * @CreateDate:   [2016年1月18日 下午1:34:08]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2016年1月18日 下午1:34:08]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
public class IndexController {

	/**
	 * @Title: index 
	 * @Description: TODO 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2016年1月18日 下午1:34:21]  
	 * @throws  
	 */
	@RequestMapping("index")
	public ModelAndView index(){
		ModelAndView md = new ModelAndView();
		List<String> list = new ArrayList<String>();
		list.add("张三");
		list.add("李四");
		list.add("001");
		list.add("002");
		md.addObject("lis", list);
		md.addObject("user","我们好像在哪儿见过");
		
		Persion p = new Persion();
		p.setName("王晓晓");
		p.setAge(25);
		p.setAddress("甘肃省 兰州市");
		p.setDate(new Date());
		
		md.addObject("per", p);
		md.setViewName("index");
		return md;
		
		
		
	}
	
	
	public String Rep(String str){
		return str;
	}
	
	
	
}
