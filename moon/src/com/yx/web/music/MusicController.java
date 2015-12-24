package com.yx.web.music;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.Content;
import com.yx.entity.Music;
import com.yx.entity.YParams;
import com.yx.service.music.IMusicService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.music.MusicController.java]  
 * @ClassName:    [MusicController]   
 * @Description:   音乐
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月24日 下午12:11:58]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月24日 下午12:11:58]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@RequestMapping("admin/music")
@Controller
public class MusicController {

	@Autowired
	private IMusicService musicService;
	
	@RequestMapping("/list")
	public String list(){
	  return "music/list";	
	}
	
	
	@RequestMapping("/template")
	public ModelAndView template(YParams yParams){
		yParams.setIsDelete(0);
		yParams.setOrder(" create_time ");
		List<Music> music = musicService.findMusics(yParams);
		int count = musicService.musicCounts();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("music", music);
		modelAndView.addObject("itemcount", count);
		modelAndView.setViewName("music/template");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="delete",method=RequestMethod.POST)
	public String delete(YParams yParams){
		musicService.delete(yParams.getId());
		return "SUCCESS";
	}
	
	@ResponseBody
	@RequestMapping(value="update",method=RequestMethod.POST)
	public String update(YParams yParams){
		musicService.updata(yParams);
		return "SUCCESS";
	}
	
}
