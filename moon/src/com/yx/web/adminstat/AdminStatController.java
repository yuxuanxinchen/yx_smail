package com.yx.web.adminstat;

import java.util.List;
import java.util.Map;

import org.apache.struts2.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.AdminStat;
import com.yx.entity.YParams;
import com.yx.service.adminstat.IAdminStatService;
import com.yx.service.adminstat.IStatService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.adminstat.AdminStatController.java]  
 * @ClassName:    [AdminStatController]   
 * @Description:  日记管理web  
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:51:37]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/admin/adminstat")
public class AdminStatController {
	
	@Autowired
	private IAdminStatService adminstatService;
	
	@Autowired
	private IStatService statService;
	
	/**
	 * @Title: list 
	 * @Description: TODO 
	 * @param params
	 * @return  
	 * @return ModelAndView 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:04:05]  
	 * @throws  
	 */
	@RequestMapping("/list")
	public ModelAndView Chartlist(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("year",statService.getContentYear());
		modelAndView.setViewName("adminstat/list");
		return modelAndView;
	}
	
	/**
	 * @Title: template 
	 * @Description: 模板页面
	 * @param params
	 * @return  
	 * @return ModelAndView 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:03:56]  
	 * @throws  
	 */
	@RequestMapping("/template")
	public ModelAndView template(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		List<AdminStat> adminstats = adminstatService.findAdminStats(params);
		int count = adminstatService.count(params);
		modelAndView.setViewName("adminstat/template");
		modelAndView.addObject("datas",adminstats);
		modelAndView.addObject("itemCount",count);
		return modelAndView;
	}
	
	/**
	 * @Title: userList 
	 * @Description: 用户统计
	 * @param yParams
	 * @return
	 * @throws JSONException  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:58:19]  
	 * @throws  
	 */
	@RequestMapping(value="/userList")
	public String userList(YParams yParams) throws JSONException{
		return "adminstat/userList";
	}
	
	/**
	 * @Title: contentList 
	 * @Description:内容统计
	 * @param yParams
	 * @return
	 * @throws JSONException  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:58:27]  
	 * @throws  
	 */
	@RequestMapping(value="/contentList")
	public String contentList(YParams yParams) throws JSONException{
		return "adminstat/contentList";
	}
	
	/**
	 * @Title: groupContents 
	 * @Description: 根据月份查询 
	 * @param yParams
	 * @return  
	 * @return List<Map<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:18:53]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping(value="/groupcontent",method=RequestMethod.POST)
	public List<Map<String, Object>> groupContents(YParams yParams){
		yParams.setMonth(yParams.getMonth());
		yParams.setOrder(yParams.getOrder());
		yParams.setPageNo(0);
		yParams.setPageSize(30);
		List<Map<String, Object>> lists = adminstatService.groupContents(yParams);
		return lists;
	}
	
	/**
	 * @Title: groupContents 
	 * @Description: 根据月份查询 
	 * @param yParams
	 * @return  
	 * @return List<Map<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:18:53]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping(value="/groupUsers",method=RequestMethod.POST)
	public List<Map<String, Object>> groupUsers(YParams yParams){
		yParams.setOrder(" create_time desc ");
		yParams.setDate(yParams.getDate());
		List<Map<String, Object>> lists = adminstatService.groupUsers(yParams);
		return lists;
	}
}
