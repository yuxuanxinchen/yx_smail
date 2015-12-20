package com.yx.web.content;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.dao.content.IContentMapper;
import com.yx.entity.Content;
import com.yx.entity.YParams;
import com.yx.service.content.IContentService;

@Controller
@RequestMapping("/admin/content")
public class ContentController {

	@Autowired
	private IContentService contentService;
	
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
		return "content/list";
	}
	
	
	@RequestMapping("/template")
	public ModelAndView template(YParams yParams){
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
	
	
}
