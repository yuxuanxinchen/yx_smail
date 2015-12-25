package com.yx.web.content;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.Content;
import com.yx.entity.YParams;
import com.yx.service.content.IContentService;
import com.yx.service.permission.IPermissionService;

@Controller
@RequestMapping("/admin/content")
public class ContentController {

	@Autowired
	private IContentService contentService;
	
	@Autowired
	private IPermissionService permissionServcie;
	
	/**
	 * @Title: list 
	 * @Description:类容页面
	 * @param yParams
	 * @return  
	 * @return ModelAndView 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:07:39]  
	 * @throws  
	 */
	@RequestMapping("/list")
	public String list(YParams yParams){
		List<HashMap<String, Object>> maps = permissionServcie.findUserPermission(5);
//		String url = "/admin/content/list";
//		boolean mark = false;
//		for (HashMap<String, Object> hashMap : maps) {
//			 if(String.valueOf(hashMap.get("url")).equalsIgnoreCase(url)){
//				 mark = true;
//				 break;
//			 }
//		}
//		return mark==true?"content/list":"nopermission";
		return "content/list";
	}
	
	
	@RequestMapping("/template")
	public ModelAndView template(YParams yParams){
		yParams.setIsDelete(0);
		List<Content> contents = contentService.findContents(yParams);
		int count = contentService.countContents(yParams);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("datas", contents);
		modelAndView.addObject("itemcount", count);
		modelAndView.setViewName("template/list");
		return modelAndView;
	}
	
	/**
	 * @Title: update 
	 * @Description: 更新状态
	 * @param content
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:46:24]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping(value = "/update",method=RequestMethod.POST)
	public String update(Content content){
		contentService.update(content);
		return "SUCCESS";
	}
	
	/**
	 * @Title: update 
	 * @Description: 删除状态
	 * @param content
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:46:24]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping(value = "/delete",method=RequestMethod.POST)
	public String delete(YParams yParams){
		contentService.delete(yParams);
		return "SUCCESS";
	}
	
	
	
	
}
