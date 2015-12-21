package com.yx.web.adminstat;

import java.util.List;
import java.util.Map;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.YParams;
import com.yx.service.adminstat.IStatService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.adminstat.StatController.java]  
 * @ClassName:    [StatController]   
 * @Description:  统计  
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午11:36:45]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/admin/stat")
public class StatController {

	@Autowired
	private IStatService statService;
	
	/**
	 * @Title: list 
	 * @Description:列表查询
	 * @param yParams
	 * @return
	 * @throws JSONException  
	 * @return List<Map<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午11:39:25]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping(value="/list",method=RequestMethod.POST)
	public List<Map<String, Object>> list(YParams yParams) throws JSONException{
		List<Map<String, Object>> lists = statService.groupContent(yParams);
		return lists;
	}
	
	
	
     
	
}
