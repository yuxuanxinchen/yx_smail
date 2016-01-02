package com.yx.web.statics;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.yx.entity.YParams;
import com.yx.service.content.IContentService;

@Controller
@RequestMapping("admin/static")
public class StaticController {

	@Autowired
	private IContentService contentService;
	
	public String list(){
		return "static/list";
	}
	
	@RequestMapping("list")
	public ModelAndView content(YParams params){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("con", contentService.findContents(params));
		modelAndView.setViewName("static/list");
		return modelAndView;
	}
	
	@RequestMapping("lis")
	public String html(){
	  
	  
	  return "static/list";
	}
	
	
	public static void main(String[] args) throws IOException {
		 org.jsoup.nodes.Document d =  Jsoup.connect("http://localhost:8020/moon/admin/static/list").get();
         FileOutputStream outputStream = new FileOutputStream(new File("G:/2016.html"));
		 PrintWriter printWriter = new PrintWriter(outputStream);
		 printWriter.write(d.html());
		 printWriter.close();
		
		
	}
	
	
}
